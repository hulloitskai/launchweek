import type { PageComponent, PagePropsWithData } from "~/helpers/inertia";
import { Accordion, Text, Timeline } from "@mantine/core";

import type { HomePageQuery } from "~/helpers/graphql";

import CountdownCard from "~/components/CountdownCard";
import ApplyButton from "~/components/ApplyButton";
import AppLayout from "~/components/AppLayout";

import classes from "./HomePage.module.css";

const APPLICATION_DEADLINE = DateTime.fromObject({
  year: 2023,
  month: 11,
  day: 23,
  hour: 11,
  minute: 59,
  second: 59,
});

export type HomePageProps = PagePropsWithData<HomePageQuery> & {};

const HomePage: PageComponent<HomePageProps> = () => {
  return (
    <Stack align="center" gap="xl">
      <Stack className={classes.hero} align="center" gap={32}>
        <Title className={classes.heroTitle} maw={1200}>
          <Text
            span
            inherit
            style={{
              backgroundImage:
                "linear-gradient(92deg, #32AA62 15.38%, #055A61 82.89%)",
              backgroundClip: "text",
              WebkitBackgroundClip: "text",
              WebkitTextFillColor: "transparent",
            }}
          >
            1 week to create
          </Text>{" "}
          a project you&apos;ll be proud of.
        </Title>
        <Text size="xl" c="primary" style={{ textAlign: "center" }}>
          Cohort 2 begins Nov. 27 - Dec 3.{" "}
          <Text span inherit fw={600}>
            Applications close Nov. 23
          </Text>
        </Text>
        <ApplyButton size="xl" />
      </Stack>
      <Stack gap="xl" maw={800} py={44}>
        <Title id="about" className={classes.sectionTitle}>
          About{" "}
          <Text
            span
            inherit
            style={{
              backgroundImage:
                "linear-gradient(91deg, #055A61 32.61%, #32AA62 100%)",
              backgroundClip: "text",
              WebkitBackgroundClip: "text",
              WebkitTextFillColor: "transparent",
            }}
          >
            LaunchWeek
          </Text>
        </Title>
        <Text className={classes.sectionHeadline}>
          Choose what you want to make. Over 3 sessions, your project idea will
          come to reality.
        </Text>
        <Stack gap="xs" c="primary" fz="xl">
          <Text inherit>
            All you have to do is show up. We&apos;ll provide all the structure,
            mentorship, and food you need to get your project off the ground for
            others to experience.
          </Text>
          <Text inherit>
            We&apos;re currently accepting applications for LW2, which begins on{" "}
            <Text span inherit fw={600}>
              November 27
            </Text>
            .
          </Text>
        </Stack>
      </Stack>
      <Box py={44} w="100%">
        <CountdownCard
          deadline={APPLICATION_DEADLINE}
          w="100%"
          maw={900}
          mx="auto"
        />
      </Box>
      <Stack gap="xl" maw={800} py={44}>
        <Title className={classes.sectionTitle}>Who is this for?</Title>
        <Text className={classes.sectionHeadline}>
          Our first cohort created podcasts, software apps, videos, games,
          journals, and more.
        </Text>
        <Text size="xl" c="primary">
          Whether you have a solid project idea or are feeling lost, we
          guarantee that you will launch a project you can be proud of over the
          course of 3 sessions. As a bonus, you&apos;ll find community in the
          people who you&apos;re working alongside with.
        </Text>
      </Stack>
      <Stack align="center" gap="xl" maw={720} py={44}>
        <Title className={classes.sectionTitle}>LW2 Schedule</Title>
        <Timeline
          active={4}
          styles={{
            itemTitle: {
              fontSize: "var(--mantine-font-size-xl)",
              fontWeight: 700,
            },
            itemBody: {
              fontSize: "var(--mantine-font-size-xl)",
            },
          }}
        >
          <Timeline.Item title="Session 1: Idea (+ Social!)">
            Monday 5:30 - 9:00
          </Timeline.Item>
          <Timeline.Item title="Session 2: Build">
            Wed{" "}
            <Text span inherit fw={600}>
              or
            </Text>{" "}
            Thu 5:30 - 7:30
          </Timeline.Item>
          <Timeline.Item title="Session 3: Launch">
            Friday 5:30 - 7:30
          </Timeline.Item>
          <Timeline.Item title="Demos">Sunday 12:00 - 3:00</Timeline.Item>
        </Timeline>
        <Text fz={22} style={{ textAlign: "center" }}>
          All 3 sessions require in-person attendance on UBC campus. For Session
          2, participants can choose to attend on Wednesday or Thursday. Demos
          are optional but encouraged.
        </Text>
      </Stack>
      <Stack gap="xl" w="100%" maw={800} py={44}>
        <Title id="faq" className={classes.sectionTitle}>
          FAQs
        </Title>
        <Accordion
          styles={{
            label: {
              fontSize: "var(--mantine-font-size-xl)",
              fontWeight: 600,
            },
            panel: {
              fontSize: "var(--mantine-font-size-lg)",
            },
          }}
        >
          <Accordion.Item value="ideas">
            <Accordion.Control>
              What kind of ideas can I work on?
            </Accordion.Control>
            <Accordion.Panel>
              <List withPadding>
                <List.Item>develop an app</List.Item>
                <List.Item>make a youtube video</List.Item>
                <List.Item>start a podcast</List.Item>
                <List.Item>write a blog</List.Item>
                <List.Item>build a startup</List.Item>
                <List.Item>… or something else! any idea is valid ◡̈</List.Item>
              </List>
            </Accordion.Panel>
          </Accordion.Item>
          <Accordion.Item value="no-idea">
            <Accordion.Control>
              What if I don&apos;t have an idea?
            </Accordion.Control>
            <Accordion.Panel>
              In your application, tell us about a project you&apos;ve seen that
              you admire and why. We&apos;ll help you decide on something to
              create during session 1.
            </Accordion.Panel>
          </Accordion.Item>
          <Accordion.Item value="attendance">
            <Accordion.Control>
              Do I need to attend everything?
            </Accordion.Control>
            <Accordion.Panel>
              <Stack>
                <Text inherit>
                  We require you to attend session 1 (Mon), 2 (Wed or Thurs),
                  and 3 (Fri). If you miss one due to unexpected circumstances,
                  it is your responsibility to catch up with the help of your
                  assigned mentor.
                </Text>
                <Text inherit>
                  We strongly encourage you to demo at the showcase event on
                  Sun, Dec. 3, but if you cannot make it, we&apos;ll find
                  another way for you to show off your project!
                </Text>
              </Stack>
            </Accordion.Panel>
          </Accordion.Item>
          <Accordion.Item value="not-a-hackathon">
            <Accordion.Control>
              How is this different from a hackathon?
            </Accordion.Control>
            <Accordion.Panel>
              LaunchWeek is multidisciplinary—you can create anything you want!
              Thanks to the 1 week format, you&apos;ll have more time for
              gathering early feedback (and for sleep). A mentor is assigned to
              you to provide direct support as you build something that others
              get to experience in the real world. And, instead of a
              competition, you will form a community with those building
              alongside you.
            </Accordion.Panel>
          </Accordion.Item>
          <Accordion.Item value="experience">
            <Accordion.Control>Do I need prior experience?</Accordion.Control>
            <Accordion.Panel>
              No experience required. LaunchWeek is designed for anyone who
              wants to create things but has been putting off their projects for
              far too long. We strongly believe that you can make A LOT happen
              in 1 week with the right guidance.
            </Accordion.Panel>
          </Accordion.Item>
          <Accordion.Item value="fees">
            <Accordion.Control>
              Are there any program fees or requirements?
            </Accordion.Control>
            <Accordion.Panel>
              The program is completely free! LaunchWeek was created with the
              shared vision to help students with a vision to create something
              of their own. We will not charge you at any point for any
              component of the program.
            </Accordion.Panel>
          </Accordion.Item>
          <Accordion.Item value="sessions">
            <Accordion.Control>
              What happens during the sessions?
            </Accordion.Control>
            <Accordion.Panel>
              Each session begins with one of the hosts briefly sharing their
              most valuable insights from their experience at this stage of
              project-building. Then, instructions will provided from the
              curriculum we&apos;ve designed based on the highly-successful
              programs we&apos;ve attended. The bulk of the remaining time will
              be dedicated to you working on your project with guidance from our
              hosts. You&apos;re also welcome to stay afterwards to hang out :)
            </Accordion.Panel>
          </Accordion.Item>{" "}
        </Accordion>
      </Stack>
      <Space h={80} />
    </Stack>
  );
};

HomePage.layout = page => <AppLayout padding="lg">{page}</AppLayout>;

export default HomePage;
