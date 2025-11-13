.class public interface abstract Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerExtensionEventListener;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISECAVPlayerExtensionEventListener"
.end annotation


# virtual methods
.method public abstract onAspectRatio(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
.end method

.method public abstract onAvailableCaptions(Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onEnabledCaptions(Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method
