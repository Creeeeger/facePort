.class public interface abstract Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation


# virtual methods
.method public abstract dismissOngoingActivityNotification(Ljava/lang/String;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbc5
    .end annotation
.end method

.method public abstract expandToNotifications()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7da
    .end annotation
.end method

.method public abstract getActiveNotificationSize()I
.end method

.method public abstract getAllNotifications()Ljava/util/List;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x402
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryKey(I)Ljava/lang/String;
.end method

.method public abstract getNotificationPackageName(I)Ljava/lang/String;
.end method

.method public abstract getNotificationUid(I)I
.end method

.method public abstract getNowBarItemList()Ljava/util/ArrayList;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbb9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNowBarRootView()Landroid/view/View;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbbc
    .end annotation
.end method

.method public abstract getPluginLockDataGravity()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d1
    .end annotation
.end method

.method public abstract getPluginLockDataMarginTop()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d5
    .end annotation
.end method

.method public abstract getPluginLockDataPaddingEnd()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d1
    .end annotation
.end method

.method public abstract getPluginLockDataPaddingStart()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d1
    .end annotation
.end method

.method public abstract isPluginLockDataAvailable()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x7d1
    .end annotation
.end method

.method public abstract isTransformAnimating()Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract onClick()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract onExternalExpandNowbarCardAttached(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;Z)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbc9
    .end annotation
.end method

.method public abstract onTopNowBarItemChangedFromNowbar(Ljava/lang/String;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbc6
    .end annotation
.end method

.method public abstract onTouchEvent(I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract setNotificationIconsOnlyContainer()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x41a
    .end annotation
.end method

.method public abstract swapLastItemToFirst()V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0xbb9
    .end annotation
.end method
