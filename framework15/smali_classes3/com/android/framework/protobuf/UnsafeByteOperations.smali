.class public final Lcom/android/framework/protobuf/UnsafeByteOperations;
.super Ljava/lang/Object;
.source "UnsafeByteOperations.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist unsafeWrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWrap([B)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWrap([BII)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unsafeWriteTo(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    return-void
.end method
