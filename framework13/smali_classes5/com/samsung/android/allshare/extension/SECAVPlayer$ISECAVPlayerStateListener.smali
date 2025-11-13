.class public interface abstract Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISECAVPlayerStateListener"
.end annotation


# virtual methods
.method public abstract onBuffering()V
.end method

.method public abstract onError(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onProgress(J)V
.end method

.method public abstract onStop()V
.end method
