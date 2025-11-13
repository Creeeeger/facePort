.class public Lcom/samsung/android/media/heif/jni/AMessageJNI;
.super Ljava/lang/Object;
.source "AMessageJNI.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AMessageJNI"


# instance fields
.field private blacklist mNativeHandle:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "heifcapture_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetup()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/media/heif/jni/AMessageJNI;->mNativeHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMessageJNI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native blacklist nativeFinalize()V
.end method

.method private native blacklist nativeSetup()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public blacklist getInt(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeGetInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native blacklist nativeGetInt(Ljava/lang/String;)I
.end method

.method public native blacklist nativeSetByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
.end method

.method public native blacklist nativeSetFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V
.end method

.method public native blacklist nativeSetInt(Ljava/lang/String;I)V
.end method

.method public native blacklist nativeSetMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V
.end method

.method public blacklist setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer is not allocated direct, please allocate direct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setInt(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->nativeSetMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msg cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
