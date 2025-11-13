.class public interface abstract Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/Encode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncodeProgressListener"
.end annotation


# virtual methods
.method public abstract blacklist onCompleted()V
.end method

.method public abstract blacklist onProgressChanged(I)V
.end method

.method public abstract blacklist onStarted()V
.end method
