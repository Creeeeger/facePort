.class public interface abstract Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;
.super Ljava/lang/Object;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/AVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAVPlayerExtensionResponseListener"
.end annotation


# virtual methods
.method public abstract onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V
.end method
