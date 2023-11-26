import type { ComponentPropsWithoutRef, FC } from "react";
import { HoverCard, type ButtonProps, Text } from "@mantine/core";

// export type ApplyButtonProps = ButtonProps &
//   Omit<ComponentPropsWithoutRef<"a">, "children">;

// const ApplyButton: FC<ApplyButtonProps> = ({ ...otherProps }) => (
//   <Button component="a" color="primary" href="/apply" {...otherProps}>
//     Apply Now
//   </Button>
// );

export type ApplyButtonProps = ButtonProps &
  Omit<ComponentPropsWithoutRef<"button">, "children">;

const ApplyButton: FC<ApplyButtonProps> = ({ ...otherProps }) => (
  <HoverCard withArrow shadow="md" width={280}>
    <HoverCard.Target>
      <Box>
        <Button color="primary" disabled {...otherProps}>
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
);

export default ApplyButton;
