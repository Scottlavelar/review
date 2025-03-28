/*
  Warnings:

  - A unique constraint covering the columns `[tp_id,t_id,environmentId]` on the table `connections` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "connections_tp_id_t_id_key";

-- CreateIndex
CREATE UNIQUE INDEX "connections_tp_id_t_id_environmentId_key" ON "connections"("tp_id", "t_id", "environmentId");
