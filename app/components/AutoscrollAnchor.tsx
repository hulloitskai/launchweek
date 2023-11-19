import type { ComponentPropsWithoutRef, FC } from "react";
import type { TextProps } from "@mantine/core";

export type AutoscrollAnchorProps = TextProps & ComponentPropsWithoutRef<"a">;

const AutoscrollAnchor: FC<AutoscrollAnchorProps> = ({
  children,
  onClick,
  ...otherProps
}) => (
  <Anchor
    onClick={event => {
      const { href } = event.currentTarget;
      const url = new URL(href);
      if (
        url.host == location.host &&
        url.pathname == location.pathname &&
        url.hash
      ) {
        event.preventDefault();
        const element = document.querySelector(url.hash);
        if (element) {
          element.scrollIntoView({ behavior: "smooth" });
        }
      } else if (onClick) {
        onClick(event);
      }
    }}
    {...otherProps}
  >
    {children}
  </Anchor>
);

export default AutoscrollAnchor;
