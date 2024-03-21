import { PrismaClient } from "@prisma/client";

const prima = new PrismaClient();

const main = async () => {
  // find all data
  const getAllData = await prima.post.findMany();

  // find findFirst and findFirstOrThrow one singel data

  const findFirst = await prima.post.findFirst({
    where: {
      id: 1,
    },
  });

  // find findUnique and findUniqueOrThrow one singel data

  const findUnique = await prima.post.findUnique({
    where: {
      id: 5,
    },
  });

  console.log({ findUnique });
};

main();
