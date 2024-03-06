import type { ComponentPropsWithoutRef, FC } from "react";
import { APPLICATION_DEADLINE } from "~/helpers/application";

import type { BoxProps, ButtonProps } from "@mantine/core";
import { HoverCard, Text } from "@mantine/core";

export type ApplyButtonProps = BoxProps &
  Omit<ComponentPropsWithoutRef<"div">, "children"> &
  Pick<ButtonProps, "size">;

const ApplyButton: FC<ApplyButtonProps> = ({ size, ...otherProps }) => {
  const disabled = useMemo(() => DateTime.now() > APPLICATION_DEADLINE, []);
  return (
    <Box {...otherProps}>
      {disabled ? (
        <HoverCard withArrow shadow="md" width={280}>
          <HoverCard.Target>
            <Box>
              <Button color="primary" disabled {...{ size }}>
                Apply Now
              </Button>
            </Box>
          </HoverCard.Target>
          <HoverCard.Dropdown>
            <Text size="sm">
              Applications are now closed.
              <br />
              <Anchor
                href="https://instagram.com/launchweek.rsvp"
                target="_blank"
                rel="noopener noreferrer"
              >
                Follow our Instagram instead :)
              </Anchor>
            </Text>
          </HoverCard.Dropdown>
        </HoverCard>
      ) : (
        <Button component="a" color="primary" href="/apply" {...{ size }}>
          Apply Now
        </Button>
      )}
    </Box>
  );
};

export default ApplyButton;
