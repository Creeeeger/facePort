.class public interface abstract Lcom/samsung/android/sume/core/functional/ImgProcessor;
.super Ljava/lang/Object;
.source "ImgProcessor.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method
