.class public interface abstract Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract isAppLockEnabled()Z
.end method

.method public abstract isInterrupted(Ljava/lang/String;)Z
.end method

.method public abstract isNeedToSanitize(IILjava/lang/String;)Z
.end method

.method public abstract isOngoingAcitivty(Ljava/lang/String;)Z
.end method

.method public abstract isPanelsEnabled()Z
.end method

.method public abstract isRowPinned(Ljava/lang/String;)Z
.end method

.method public abstract isSensitiveStateActive()Z
.end method

.method public abstract isSupportAppLock()Z
.end method

.method public abstract requestDozeStateSubScreen(Z)V
.end method

.method public abstract sendClickEvent(Ljava/lang/String;)V
.end method

.method public abstract setInterruption(Ljava/lang/String;)V
.end method

.method public abstract shouldHideNotiForAppLockByPackage(Ljava/lang/String;)Z
.end method

.method public abstract turnToHeadsUp(Ljava/lang/String;)V
.end method
