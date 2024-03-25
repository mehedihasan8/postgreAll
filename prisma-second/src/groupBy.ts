import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const groupByFucntion = async () => {
  const groupPost = await prisma.post.groupBy({
    by: "published",
    _count: {
      title: true,
    },
  });
  console.log(groupPost);
};

groupByFucntion();
