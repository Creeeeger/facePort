.class public Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;
.super Ljava/lang/Object;
.source "DrawText.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/DrawText;
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

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V
    .locals 1

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p1, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p1, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    return-void
.end method

.method public blacklist id()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 18
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

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result v16

    new-instance v17, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;

    move-object/from16 v0, v17

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;-><init>(IIIIIFFZ)V

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
