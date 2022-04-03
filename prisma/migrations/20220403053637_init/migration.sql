-- CreateTable
CREATE TABLE "ContentState" (
    "id" SERIAL NOT NULL,
    "key" TEXT NOT NULL,
    "sha" TEXT NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ContentState_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Content" (
    "id" TEXT NOT NULL,
    "contentDirectory" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "code" TEXT NOT NULL,
    "frontmatter" TEXT NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "published" BOOLEAN NOT NULL,
    "requiresUpdate" BOOLEAN DEFAULT false,
    "description" TEXT NOT NULL DEFAULT E'',

    CONSTRAINT "Content_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ContentState_key_key" ON "ContentState"("key");

-- CreateIndex
CREATE UNIQUE INDEX "Content_slug_key" ON "Content"("slug");
