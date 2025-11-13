.class public final Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;


# instance fields
.field public final mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public final mBubblesManagerOptional:Ljava/util/Optional;

.field public final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mIsCollapsingToShowActivityOverLockscreen:Z

.field public mIsStartFullscreenIntentWhenSubscreen:Ljava/lang/Boolean;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

.field public mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public mShouldSkipFullScreenIntent:Z

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/KeyguardManager;Landroid/service/dreams/IDreamManager;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/animation/ActivityTransitionAnimator;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Landroid/app/KeyguardManager;",
            "Landroid/service/dreams/IDreamManager;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            "Lcom/android/systemui/ActivityIntentHelper;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;",
            "Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;",
            "Lcom/android/systemui/statusbar/NotificationPresenter;",
            "Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/animation/ActivityTransitionAnimator;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;",
            "Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShouldSkipFullScreenIntent:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsStartFullscreenIntentWhenSubscreen:Ljava/lang/Boolean;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    move v1, p2

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDisplayId:I

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDreamManager:Landroid/service/dreams/IDreamManager;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubblesManagerOptional:Ljava/util/Optional;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    move-object/from16 v0, p31

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;->listeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public static shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public launchFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mVrMode:Z

    const-string v1, "NotifActivityStarter"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logFullScreenIntentSuppressedByVR$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logFullScreenIntentSuppressedByVR$2;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v1, p0, v0, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_PENDING_CALL_FULLSCRREN_INTENT:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShouldSkipFullScreenIntent:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v5, "call"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsStartFullscreenIntentWhenSubscreen:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsStartFullscreenIntentWhenSubscreen:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPendingFullscreenEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const-string p0, "StatusBarNotificationActivityStarter"

    const-string p1, "pending wx call"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logSendingFullScreenIntent$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logSendingFullScreenIntent$2;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v4, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    iput-object v3, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :try_start_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const v2, 0x8ca2

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->wakeUpForFullScreenIntent(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "note_fullscreen"

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_6

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string p0, ""

    :goto_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result p1

    const/16 v0, 0x277

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final onNotificationClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 8

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUpState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->shadeOrQsExpanded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartingActivityFromClick$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartingActivityFromClick$2;

    const/4 v6, 0x0

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v7, "NotifActivityStarter"

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v0, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v1, v6, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v2, v6, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->performActionAfterKeyguardDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$OnKeyguardDismissedAction;)V

    return-void
.end method

.method public final performActionAfterKeyguardDismissed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$OnKeyguardDismissedAction;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v9, v9}, Lcom/android/systemui/statusbar/RemoteInputController;->pruneWeakThenRemoveAndContains(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "NotifActivityStarter"

    iget-object v5, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->closeRemoteInputs(Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logCloseRemoteInput$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logCloseRemoteInput$2;

    iget-object v3, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v3, v4, v1, v2, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    move-object v6, v2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    move-object v6, v1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v1

    if-nez v6, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logNonClickableNotification$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logNonClickableNotification$2;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v5, v4, v1, v2, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->setShowSwipeBouncer(Z)V

    :cond_3
    return-void

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    move v4, v8

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    if-eqz v4, :cond_6

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v1, v2, v6}, Lcom/android/systemui/ActivityIntentHelper;->getPendingTargetActivityInfo(ILandroid/app/PendingIntent;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v5, v1, Lcom/android/systemui/ActivityIntentHelper;->mLpu:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/systemui/ActivityIntentHelper;->mKm:Landroid/app/KeyguardManager;

    invoke-virtual {v5, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/systemui/ActivityIntentHelper;->mKm:Landroid/app/KeyguardManager;

    invoke-virtual {v5, v9, v9, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_7

    :goto_3
    move v10, v8

    goto :goto_4

    :cond_7
    move v10, v3

    :goto_4
    iget-object v11, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v10, :cond_8

    invoke-interface {v11, v4}, Lcom/android/systemui/plugins/ActivityStarter;->shouldAnimateLaunch(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    move v5, v8

    goto :goto_5

    :cond_8
    move v5, v3

    :goto_5
    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v12, v2

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v2, :cond_9

    if-eqz v6, :cond_9

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v1, v0, v6}, Lcom/android/systemui/ActivityIntentHelper;->wouldPendingShowOverLockscreen(ILandroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v13, v8

    goto :goto_6

    :cond_9
    move v13, v3

    :goto_6
    new-instance v14, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$OnKeyguardDismissedAction;Landroid/app/PendingIntent;ZZZ)V

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_NOTIFICATION:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    if-eqz v13, :cond_a

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$1;->onDismiss()Z

    goto :goto_7

    :cond_a
    invoke-interface {v11, v14, v9, v10}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    iget-boolean v0, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->closeShadeIfOpen()V

    :cond_b
    :goto_7
    return-void
.end method

.method public final removeHunAfterClick(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->setNeedsHeadsUpDisappearAnimationAfterClick(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->removeNotification$1(Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method public final setShowSwipeBouncer(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardViewController;->setShowSwipeBouncer(Z)V

    :cond_1
    return-void
.end method

.method public final startHistoryIntent(Landroid/view/View;Z)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;ZLandroid/view/View;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method
