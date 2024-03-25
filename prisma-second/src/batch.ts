import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  const createUser = prisma.user.create({
    data: {
      username: "MehediHasanfoysal",
      email: "mehedifdssfafadfwf@gmai.com",
      age: 50,
    },
  });

  const updateUser = prisma.user.update({
    where: {
      id: 7,
    },
    data: {
      age: 80,
      email: "update@gamil.com",
    },
  });

  const [userData, updateDate] = await prisma.$transaction([
    createUser,
    updateUser,
  ]);
  console.log(userData, updateDate);
};

main();
