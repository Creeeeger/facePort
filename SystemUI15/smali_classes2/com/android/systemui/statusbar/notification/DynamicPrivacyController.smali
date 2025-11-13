.class public final Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public mCacheInvalid:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLastDynamicUnlocked:Z

.field public final mListeners:Landroid/util/ArraySet;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    return-void
.end method


# virtual methods
.method public isDynamicPrivacyEnabled()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_LOCKSCREEN_ALWAYS_HIDE_SENSITIVE:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->isAllowPrivateNotificationsWhenUnsecure(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsNotificationsInPublic(I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isDynamicallyUnlocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInLockedDownShade()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v1, v3, :cond_2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v2
.end method

.method public final onKeyguardFadingAwayChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->onUnlockedChanged()V

    return-void
.end method

.method public final onUnlockedChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;->onDynamicPrivacyChanged()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    :goto_1
    return-void
.end method
