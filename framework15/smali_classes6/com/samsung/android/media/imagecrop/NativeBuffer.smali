.class public Lcom/samsung/android/media/imagecrop/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native blacklist allocNativeBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method static native blacklist freeNativeBuffer(Ljava/nio/ByteBuffer;)V
.end method
