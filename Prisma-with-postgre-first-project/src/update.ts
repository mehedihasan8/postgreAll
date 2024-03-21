import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const update = async () => {
  // update single data

  //   const updateData = await prisma.post.update({
  //     where: {
  //       id: 12,
  //     },
  //     data: {
  //       title: "updata title1",
  //       contact: "updata contact 1",
  //     },
  //   });

  // update many data

  // const updateData = await prisma.post.updateMany({
  //   where: {
  //     title: "Title many 1",
  //   },
  //   data: {
  //     published: true,
  //   },
  // });

  const upsertData = await prisma.post.upsert({
    where: {
      id: 9,
    },
    update: {
      contact: "just update",
    },
    create: {
      title: "nai re bhia",
      contact: "ache re bhai ",
    },
  });

  console.log(upsertData);
};

update();
