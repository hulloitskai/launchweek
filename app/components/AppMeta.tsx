import type { FC } from "react";
import { usePageVisibilityChange } from "~/helpers/page";

const AppMetaSiteType = "website";
const AppMetaSiteName = "LaunchWeek";
const AppMetaSiteDescription = undefined; // "Welcome to my little corner of the internet :)";
const AppMetaSiteImage = undefined; // "/banner.png";
const AppMetaTitleSeparator = "|";

export type AppMetaProps = {
  readonly title?: string | string[];
  readonly description?: string | null;
  readonly imageUrl?: string | null;
  readonly noIndex?: boolean;
};

const AppMeta: FC<AppMetaProps> = ({
  title: titleProp,
  description = AppMetaSiteDescription,
  imageUrl = AppMetaSiteImage,
  noIndex,
}) => {
  const pageVisible = usePageVisibilityChange("visible");
  const title = useMemo<string>(() => {
    const components = Array.isArray(titleProp) ? titleProp : [titleProp];
    return components
      .filter(component => !!component)
      .join(` ${AppMetaTitleSeparator} `);
  }, [titleProp]);
  const titleTag = useMemo<string>(
    () =>
      [title, AppMetaSiteName]
        .filter(component => !!component)
        .join(` ${AppMetaTitleSeparator} `),
    [title, pageVisible],
  );

  return (
    <Head>
      <title>{titleTag}</title>
      {!!description && <meta name="description" content={description} />}
      <meta property="og:site_name" content={AppMetaSiteName} />
      <meta property="og:type" content={AppMetaSiteType} />
      {!!title && <meta property="og:title" content={title} />}
      {!!description && (
        <meta property="og:description" content={description} />
      )}
      {!!imageUrl && <meta property="og:image" content={imageUrl} />}
      <meta name="twitter:card" content="summary" />
      <meta name="twitter:title" content={titleTag} />
      {!!description && (
        <meta name="twitter:description" content={description} />
      )}
      {!!imageUrl && <meta name="twitter:image" content={imageUrl} />}
      {noIndex && <meta name="robots" content="noindex" />}
    </Head>
  );
};

export default AppMeta;
