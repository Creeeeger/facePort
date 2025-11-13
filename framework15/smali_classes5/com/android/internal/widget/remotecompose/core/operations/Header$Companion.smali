.class public Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/Header;
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

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p4, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    return-void
.end method

.method public blacklist id()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "Header"

    return-object v0
.end method

.method public blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 16
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

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v13

    new-instance v15, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    move-object v0, v15

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-wide v6, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIJ)V

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
