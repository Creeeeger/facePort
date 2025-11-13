.class final Lcom/android/framework/protobuf/RopeByteString$PieceIterator;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PieceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/framework/protobuf/ByteString$LeafByteString;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist breadCrumbs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/framework/protobuf/RopeByteString;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist next:Lcom/android/framework/protobuf/ByteString$LeafByteString;


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/RopeByteString;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/RopeByteString;->getTreeDepth()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/framework/protobuf/RopeByteString;->access$400(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method private blacklist getLeafByLeft(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString$LeafByteString;
    .locals 3

    move-object v0, p1

    :goto_0
    instance-of v1, v0, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/framework/protobuf/RopeByteString;->access$400(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    return-object v1
.end method

.method private blacklist getNextNonEmptyLeaf()Lcom/android/framework/protobuf/ByteString$LeafByteString;
    .locals 2

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->breadCrumbs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/RopeByteString;

    invoke-static {v0}, Lcom/android/framework/protobuf/RopeByteString;->access$500(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->getLeafByLeft(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist next()Lcom/android/framework/protobuf/ByteString$LeafByteString;
    .locals 2

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    invoke-direct {p0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->getNextNonEmptyLeaf()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next:Lcom/android/framework/protobuf/ByteString$LeafByteString;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
