.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetLockManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract addLockStarStateCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;)V
.end method

.method public abstract getModifier(Ljava/lang/String;)Ljava/util/function/Consumer;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x413
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Consumer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSupplier(Ljava/lang/String;)Ljava/util/function/Supplier;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x413
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Supplier<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract onSendExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7de
    .end annotation
.end method

.method public abstract removeLockStarStateCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginLockStarStateCallback;)V
.end method
