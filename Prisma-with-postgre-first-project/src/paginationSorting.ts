import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const PaginationSorting = async () => {
  //offset base pagination
  const offSetData = await prisma.post.findMany({
    skip: 4,
    take: 2,
  });
  // console.log("PaginationSorting", offSetData);

  //cursor base pagination
  const coursorBaseData = await prisma.post.findMany({
    skip: 4,
    take: 2,
    cursor: {
      id: 10,
    },
  });

  //sorting
  const sortingData = await prisma.post.findMany({
    orderBy: {
      id: "asc",
    },
    where: {
      title: "Title many 2",
    },
    skip: 1,
    take: 2,
  });

  console.log("sortingData", sortingData);
};

PaginationSorting();
