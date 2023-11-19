import type { FC } from "react";
import type { ButtonProps } from "@mantine/core";

export type ApplyButtonProps = ButtonProps;

const ApplyButton: FC<ApplyButtonProps> = ({ ...otherProps }) => (
  <Button component="a" color="primary" href="/apply" {...otherProps}>
    Apply Now
  </Button>
);

export default ApplyButton;
