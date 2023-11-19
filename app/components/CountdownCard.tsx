import type { FC } from "react";

import { Loader, Text } from "@mantine/core";
import type { BoxProps } from "@mantine/core";

import { DateTime } from "luxon";
import type { DurationUnit } from "luxon";

import ApplyButton from "./ApplyButton";
import classes from "./CountdownCard.module.css";

const COUNTDOWN_UNITS: DurationUnit[] = ["days", "hours", "minutes", "seconds"];

export type CountdownCardProps = BoxProps & {
  readonly deadline: DateTime;
};

const CountdownCard: FC<CountdownCardProps> = ({ deadline, ...otherProps }) => {
  const [duration, setDuration] = useState<
    [number, number, number, number] | null
  >(null);
  useEffect(() => {
    const interval = setInterval(() => {
      const diff = deadline.diffNow(COUNTDOWN_UNITS);
      setDuration([
        diff.days,
        diff.hours,
        diff.minutes,
        Math.round(diff.seconds),
      ]);
    }, 1000);
    return () => {
      clearInterval(interval);
      setDuration(null);
    };
  }, [deadline]);
  return (
    <Card
      py="lg"
      style={{
        backgroundImage: "linear-gradient(91deg, #32AA62 0%, #055A61 100%)",
      }}
      {...otherProps}
    >
      <Group
        justify="space-around"
        style={{ columnGap: "var(--mantine-spacing-xl)" }}
      >
        <Group className={classes.segmentGroup}>
          {(duration ?? [null, null, null, null]).map((number, index) => (
            <CountdownSegment
              key={index}
              number={number}
              unit={COUNTDOWN_UNITS[index]!}
            />
          ))}
        </Group>
        <ApplyButton size="lg" className={classes.applyButton} />
      </Group>
    </Card>
  );
};

export default CountdownCard;

type CountdownSegmentProps = {
  readonly number: number | null;
  readonly unit: string;
};

const CountdownSegment: FC<CountdownSegmentProps> = ({ number, unit }) => (
  <Stack gap={0}>
    <Box pos="relative">
      <Text
        inherit
        className={classes.segmentNumber}
        fw={700}
        lh={1.3}
        miw={44}
      >
        {number ?? <>&nbsp;</>}
      </Text>
      {typeof number !== "number" && (
        <Center pos="absolute" inset={0}>
          <Loader color="var(--mantine-color-white)" />
        </Center>
      )}
    </Box>
    <Center h="xl" pos="relative">
      <Text inherit className={classes.segmentUnit} pos="absolute" top={0}>
        {unit}
      </Text>
    </Center>
  </Stack>
);
