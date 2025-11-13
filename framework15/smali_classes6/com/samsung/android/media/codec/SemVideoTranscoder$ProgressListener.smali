.class public interface abstract Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;
.super Ljava/lang/Object;
.source "SemVideoTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/SemVideoTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressListener"
.end annotation


# virtual methods
.method public abstract onCompleted()V
.end method

.method public abstract onProgressChanged(I)V
.end method

.method public abstract onStarted()V
.end method
