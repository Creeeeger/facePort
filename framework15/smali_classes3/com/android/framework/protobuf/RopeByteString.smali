.class final Lcom/android/framework/protobuf/RopeByteString;
.super Lcom/android/framework/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/RopeByteString$Balancer;,
        Lcom/android/framework/protobuf/RopeByteString$PieceIterator;,
        Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;
    }
.end annotation


# static fields
.field static final blacklist minLengthByDepth:[I

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final blacklist left:Lcom/android/framework/protobuf/ByteString;

.field private final blacklist leftLength:I

.field private final blacklist right:Lcom/android/framework/protobuf/ByteString;

.field private final blacklist totalLength:I

.field private final blacklist treeDepth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    iput-object p2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/RopeByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    return-object v0
.end method

.method static blacklist concatenate(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 5

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    :cond_2
    instance-of v2, p0, Lcom/android/framework/protobuf/RopeByteString;

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v3, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    iget-object v1, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/RopeByteString;->concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    new-instance v3, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v4, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {v3, v4, v1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v3

    :cond_3
    iget-object v1, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    iget-object v3, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_4

    invoke-virtual {v2}, Lcom/android/framework/protobuf/RopeByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v3

    if-le v1, v3, :cond_4

    new-instance v1, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v3, v2, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {v1, v3, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    new-instance v3, Lcom/android/framework/protobuf/RopeByteString;

    iget-object v4, v2, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {v3, v4, v1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->getTreeDepth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v2

    if-lt v0, v2, :cond_5

    new-instance v2, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v2, p0, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v2

    :cond_5
    new-instance v2, Lcom/android/framework/protobuf/RopeByteString$Balancer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/RopeByteString$Balancer;-><init>(Lcom/android/framework/protobuf/RopeByteString$1;)V

    invoke-static {v2, p0, p1}, Lcom/android/framework/protobuf/RopeByteString$Balancer;->access$100(Lcom/android/framework/protobuf/RopeByteString$Balancer;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist concatenateBytes(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;
    .locals 4

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/android/framework/protobuf/ByteString;->copyTo([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/android/framework/protobuf/ByteString;->copyTo([BIII)V

    invoke-static {v2}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v3

    return-object v3
.end method

.method private blacklist equalsFragments(Lcom/android/framework/protobuf/ByteString;)Z
    .locals 12

    const/4 v0, 0x0

    new-instance v1, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v5, p1, v2}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    move-object v2, v5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-virtual {v5}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v0, :cond_0

    invoke-virtual {v3, v5, v4, v9}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z

    move-result v10

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v3, v0, v9}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z

    move-result v10

    :goto_1
    nop

    if-nez v10, :cond_1

    const/4 v11, 0x0

    return v11

    :cond_1
    add-int/2addr v6, v9

    iget v11, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-lt v6, v11, :cond_3

    iget v11, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-ne v6, v11, :cond_2

    const/4 v11, 0x1

    return v11

    :cond_2
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    :cond_3
    if-ne v9, v7, :cond_4

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    check-cast v3, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    goto :goto_2

    :cond_4
    add-int/2addr v0, v9

    :goto_2
    if-ne v9, v8, :cond_5

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/android/framework/protobuf/ByteString$LeafByteString;

    goto :goto_3

    :cond_5
    add-int/2addr v4, v9

    :goto_3
    goto :goto_0
.end method

.method static blacklist minLength(I)I
    .locals 1

    sget-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v0, v0

    if-lt p0, v0, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v0, v0, p0

    return v0
.end method

.method static blacklist newInstanceForTest(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/RopeByteString;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "RopeByteStream instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public blacklist asReadOnlyByteBufferList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/RopeByteString$1;)V

    :goto_0
    invoke-virtual {v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/framework/protobuf/RopeByteString$PieceIterator;->next()Lcom/android/framework/protobuf/ByteString$LeafByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist byteAt(I)B
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/RopeByteString;->checkIndex(II)V

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/RopeByteString;->internalByteAt(I)B

    move-result v0

    return v0
.end method

.method public blacklist copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected blacklist copyToInternal([BIII)V
    .locals 5

    add-int v0, p2, p4

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    add-int v2, p3, v0

    sub-int v3, p4, v0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/android/framework/protobuf/ByteString;->copyToInternal([BIII)V

    :goto_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    iget v3, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-nez v3, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->peekCachedHashCode()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/framework/protobuf/ByteString;->peekCachedHashCode()I

    move-result v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/RopeByteString;->equalsFragments(Lcom/android/framework/protobuf/ByteString;)Z

    move-result v2

    return v2
.end method

.method protected blacklist getTreeDepth()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method blacklist internalByteAt(I)B
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result v0

    return v0
.end method

.method protected blacklist isBalanced()Z
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->treeDepth:I

    invoke-static {v1}, Lcom/android/framework/protobuf/RopeByteString;->minLength(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isValidUtf8()Z
    .locals 4

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public blacklist iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/RopeByteString$1;-><init>(Lcom/android/framework/protobuf/RopeByteString;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newCodedInput()Lcom/android/framework/protobuf/CodedInputStream;
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->asReadOnlyByteBufferList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance(Ljava/lang/Iterable;Z)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newInput()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/android/framework/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected blacklist partialHash(III)I
    .locals 6

    add-int v0, p2, p3

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v1

    return v1

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v2, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v1

    return v1

    :cond_1
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v2

    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/framework/protobuf/ByteString;->partialHash(III)I

    move-result v3

    return v3
.end method

.method protected blacklist partialIsValidUtf8(III)I
    .locals 6

    add-int v0, p2, p3

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    return v1

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v2, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    return v1

    :cond_1
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v2

    iget-object v3, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v1

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/framework/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    return v3
.end method

.method public blacklist size()I
    .locals 1

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public blacklist substring(II)Lcom/android/framework/protobuf/ByteString;
    .locals 5

    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, p2, v0}, Lcom/android/framework/protobuf/RopeByteString;->checkRange(III)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->totalLength:I

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    :cond_2
    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v2, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/ByteString;->substring(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    iget-object v2, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v3, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v3, p2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/framework/protobuf/ByteString;->substring(II)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    new-instance v3, Lcom/android/framework/protobuf/RopeByteString;

    invoke-direct {v3, v1, v2}, Lcom/android/framework/protobuf/RopeByteString;-><init>(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)V

    return-object v3
.end method

.method protected blacklist toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/ByteOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    return-void
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method blacklist writeToInternal(Ljava/io/OutputStream;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    iget v1, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/framework/protobuf/RopeByteString;->leftLength:I

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    iget-object v1, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/framework/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    :goto_0
    return-void
.end method

.method blacklist writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->right:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V

    iget-object v0, p0, Lcom/android/framework/protobuf/RopeByteString;->left:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V

    return-void
.end method
