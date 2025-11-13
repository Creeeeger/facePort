.class abstract Lcom/android/framework/protobuf/ByteString$LeafByteString;
.super Lcom/android/framework/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LeafByteString"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist equalsRange(Lcom/android/framework/protobuf/ByteString;II)Z
.end method

.method protected final blacklist getTreeDepth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist isBalanced()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method blacklist writeToReverse(Lcom/android/framework/protobuf/ByteOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ByteString$LeafByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    return-void
.end method
