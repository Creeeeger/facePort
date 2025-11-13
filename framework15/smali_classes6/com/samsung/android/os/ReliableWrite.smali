.class public final Lcom/samsung/android/os/ReliableWrite;
.super Ljava/lang/Object;
.source "ReliableWrite.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setReliableWrite(Ljava/io/FileOutputStream;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/os/ReliableWrite;->setReliableWriteNative(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static native blacklist setReliableWriteNative(I)I
.end method
