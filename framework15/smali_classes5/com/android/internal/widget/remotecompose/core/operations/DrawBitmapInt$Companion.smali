.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;
.super Ljava/lang/Object;
.source "DrawBitmapInt.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V
    .locals 1

    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public blacklist id()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "DrawBitmapInt"

    return-object v0
.end method

.method public blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v20

    new-instance v21, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;

    move-object/from16 v0, v21

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;-><init>(IIIIIIIIII)V

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
