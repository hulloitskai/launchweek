import type { FC } from "react";

import { AppShell, Breadcrumbs, Image } from "@mantine/core";
import type { AppShellProps, ContainerProps, MantineSize } from "@mantine/core";

// import type { Maybe } from "~/helpers/graphql";
// import type { AppViewerFragment } from "~/helpers/graphql";

import AppMeta from "./AppMeta";
import type { AppMetaProps } from "./AppMeta";

import ActivityStatus from "./ActivityStatus";
import AutoscrollAnchor from "./AutoscrollAnchor";
// import AppMenu from "./AppMenu";
import ApplyButton from "./ApplyButton";
import AppFlash from "./AppFlash";
import PageContainer from "./PageContainer";
import PageLayout from "./PageLayout";

import logoSrc from "~/assets/images/logo.png";
import logoTextSrc from "~/assets/images/logo-text.png";

import classes from "./AppLayout.module.css";
import "./AppLayout.css";

export type AppLayoutProps = AppMetaProps &
  AppShellProps & {
    // readonly viewer: Maybe<AppViewerFragment>;
    readonly breadcrumbs?: ReadonlyArray<AppBreadcrumb | null | false>;
    readonly withContainer?: boolean;
    readonly containerSize?: MantineSize | (string & {}) | number;
    readonly containerProps?: ContainerProps;
    readonly withGutter?: boolean;
    readonly gutterSize?: MantineSize | (string & {}) | number;
  };

export type AppBreadcrumb = {
  readonly title: string;
  readonly href: string;
};

const AppLayout: FC<AppLayoutProps> = ({
  // viewer,
  title,
  description,
  imageUrl,
  noIndex,
  breadcrumbs,
  withContainer,
  containerSize,
  containerProps,
  withGutter,
  gutterSize,
  children,
  padding,
  ...otherProps
}) => {
  // == Breadcrumbs
  const filteredBreadcrumbs = useMemo(
    () => (breadcrumbs?.filter(x => !!x) || []) as AppBreadcrumb[],
    [breadcrumbs],
  );

  // == Content
  const content = useMemo(
    () =>
      withContainer ? (
        <PageContainer
          size={containerSize || containerProps?.size}
          {...{ withGutter, gutterSize }}
          {...containerProps}
        >
          {children}
        </PageContainer>
      ) : (
        children
      ),
    [withContainer, withGutter, containerSize, containerProps, children],
  );

  return (
    <PageLayout>
      <AppMeta {...{ title, description, imageUrl, noIndex }} />
      <AppShell
        // header={{ height: 96 }}
        // footer={{ height: 44 }}
        padding={padding ?? (withContainer ? undefined : "md")}
        styles={{
          main: {
            // minHeight: "calc(100dvh - var(--app-shell-footer-height, 0))",
            paddingBottom: 0,
            display: "flex",
            flexDirection: "column",
            alignItems: "stretch",
          },
          header: {
            borderBottom: "none",
          },
        }}
        {...otherProps}
      >
        <Group
          justify="space-between"
          gap="xs"
          w="100%"
          px="sm"
          py="lg"
          className={classes.header}
        >
          <Link href="/">
            <Group gap={2} className={classes.logoGroup}>
              <Image src={logoSrc} h={44} />
              <Image src={logoTextSrc} h={28} />
            </Group>
          </Link>
          <Group gap="lg" className={classes.menu}>
            <AutoscrollAnchor href="/#about">About</AutoscrollAnchor>
            <AutoscrollAnchor href="/#faq">FAQ</AutoscrollAnchor>
            <ApplyButton />
          </Group>
        </Group>
        <AppShell.Main
          style={{
            flexGrow: 1,
            display: "flex",
            flexDirection: "column",
            alignItems: "stretch",
          }}
        >
          {!isEmpty(filteredBreadcrumbs) && (
            <Breadcrumbs
              mx={10}
              mt={6}
              styles={{
                root: {
                  flexWrap: "wrap",
                  rowGap: rem(4),
                },
                separator: {
                  marginLeft: 6,
                  marginRight: 6,
                },
              }}
            >
              {filteredBreadcrumbs.map(({ title, href }, index) => (
                <Anchor component={Link} href={href} key={index} size="sm">
                  {title}
                </Anchor>
              ))}
            </Breadcrumbs>
          )}
          {content}
        </AppShell.Main>
        <Box
          h="var(--app-shell-footer-height)"
          px={8}
          style={{
            overflow: "hidden",
            borderTop: `${rem(1)} solid var(--_app-shell-border-color)`,
          }}
        >
          <ActivityStatus h="100%" style={{ flexShrink: 1 }} />
        </Box>
      </AppShell>
      <AppFlash />
    </PageLayout>
  );
};

export default AppLayout;
