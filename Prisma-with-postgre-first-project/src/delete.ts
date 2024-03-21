import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const deleteData = async () => {
  // delete single data
  //   const deletData = await prisma.post.delete({
  //     where: {
  //       id: 17,
  //     },
  //   });

  // delete many  data

  const deleteManyData = await prisma.post.deleteMany({
    where: {
      id: {
        in: [6, 7, 8],
      },
    },
  });

  //   console.log(updateData);
};

deleteData();
