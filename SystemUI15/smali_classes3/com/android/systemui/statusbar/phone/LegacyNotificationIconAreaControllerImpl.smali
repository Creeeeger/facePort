.class public final Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public mAnimationsEnabled:Z

.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mContext:Landroid/content/Context;

.field public final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mIconHPadding:I

.field public mIconSize:I

.field public mIconTint:I

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public mIsNotificationDotOnlyOn:Z

.field public mKeyguardNotifIconTint:I

.field public mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public mNotificationEntries:Ljava/util/List;

.field public final mNotificationIconArea:Landroid/view/View;

.field public final mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public final mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field final mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

.field public mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public mShowLowPriority:Z

.field public mStatusBarNotificationStyle:I

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final mTintAreas:Ljava/util/ArrayList;

.field public final mUpdateStatusBarIcons:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda4;

.field public final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;Ljava/util/Optional;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/demomode/DemoModeController;",
            "Lcom/android/systemui/plugins/DarkIconDispatcher;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;",
            "Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda4;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mUpdateStatusBarIcons:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda4;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconTint:I

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationEntries:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mTintAreas:Ljava/util/ArrayList;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mShowLowPriority:Z

    new-instance v6, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    new-instance v7, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v7, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p2}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p3, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object v2, p4

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mBubblesOptional:Ljava/util/Optional;

    move-object/from16 v2, p11

    invoke-virtual {v2, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    sget-object v2, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    move-object/from16 v2, p7

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->reloadDimens(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d0263

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIconArea:Landroid/view/View;

    const v6, 0x7f0a07f5

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const v2, 0x7f040801

    invoke-static {p2, v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-object/from16 v1, p12

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v6, v5, [Landroid/net/Uri;

    const-string/jumbo v8, "simple_status_bar"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-virtual {v1, v3, v6}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v3, v5, [Landroid/net/Uri;

    const-string v5, "lockscreen_minimizing_notification"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyKeyguardNotifIconsTint()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardNotifIconTint:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final applyNotificationIconsTint()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconTint:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->applyKeyguardNotifIconsTint()V

    return-void
.end method

.method public final demoCommands()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "notifications"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIconArea:Landroid/view/View;

    if-eqz p2, :cond_1

    const-string/jumbo p2, "visible"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "false"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIconArea:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "NotificationIconAreaController state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  noti icons: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconTint:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  tintColor=0x%08x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarNotificationStyle:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " statusbar notification style : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarNotificationStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mTintAreas:Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/Collection;Landroid/view/View;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] icon="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " / getVisibleState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/systemui/statusbar/StatusBarIconView;->mVisibleState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/ getIconAppearAmount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconAppearAmount:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " / getDotAppearAmount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAppearAmount:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " / getAlpha "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " / getVisibility "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / getTranslationX "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " colorize="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isInAreas="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/systemui/statusbar/StatusBarIconView;->mDrawableColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "  color=0x%08x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const-string v5, " / "

    invoke-static {v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v3

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    :try_start_1
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v3, "<name unknown>"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " iconStr="

    invoke-static {p1, v4, v3}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getNotificationInnerAreaView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIconArea:Landroid/view/View;

    return-object p0
.end method

.method public final getShowingIconCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mTintAreas:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mTintAreas:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIconArea:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/Collection;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput p3, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconTint:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->applyNotificationIconsTint()V

    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIconArea:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onDensityOrFontScaleChanged(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->reloadDimens(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconHPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onFullyHiddenChanged(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p0

    :cond_0
    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final onPulseExpansionAmountChanged()V
    .locals 0

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mAnimationsEnabled:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f040801

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    return-void
.end method

.method public final reloadDimens(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070b72

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconSize:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconSize:I

    const v0, 0x7f071494

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconHPadding:I

    const p0, 0x7f0713c3

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method public final setAnimationsEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mAnimationsEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mAnimationsEnabled:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public final setIsolatedIconLocation(Landroid/graphics/Rect;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final setKeyguardNotifIcon(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOnKeyguardStatusBar:Z

    return-void
.end method

.method public final setKeyguardNotifIconTint(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardNotifIconTint:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->applyKeyguardNotifIconsTint()V

    return-void
.end method

.method public final setShelfIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-void
.end method

.method public final setupAodIcons()V
    .locals 0

    return-void
.end method

.method public shouldShouldLowPriorityIcons()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mShowLowPriority:Z

    return p0
.end method

.method public final showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconForAnimation:Lcom/android/systemui/statusbar/StatusBarIconView;

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    return-void
.end method

.method public final updateAodNotificationIcons()V
    .locals 0

    return-void
.end method

.method public final updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v5, v6, :cond_b

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationEntries:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v8, :cond_8

    iget-boolean v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsReaded:Z

    if-eqz v8, :cond_0

    if-eqz p6, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v8, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->isAmbient()Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez p3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v8, 0x3

    if-nez p4, :cond_2

    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v9

    if-ge v9, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v9}, Ljava/util/Optional;->isPresent()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast v9, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->isBubbleExpanded(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.callType"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v7, :cond_8

    if-eq v9, v2, :cond_8

    if-ne v9, v8, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isInsignificant()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    :goto_1
    move-object/from16 v8, p1

    goto :goto_2

    :cond_9
    move-object/from16 v8, p1

    invoke-interface {v8, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v6, :cond_a

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    add-int/2addr v5, v2

    goto/16 :goto_0

    :cond_b
    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v4

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_13

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v10, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v10, v9, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    move v11, v4

    move v12, v11

    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_f

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v14, v13, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v14, v14, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v15, v9, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v15, v15, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v14

    if-eqz v14, :cond_e

    iget-object v13, v13, Lcom/android/systemui/statusbar/StatusBarIconView;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    if-nez v12, :cond_d

    move v12, v2

    goto :goto_5

    :cond_d
    move v12, v4

    goto :goto_6

    :cond_e
    :goto_5
    add-int/2addr v11, v2

    goto :goto_4

    :cond_f
    :goto_6
    if-eqz v12, :cond_11

    invoke-virtual {v5, v10}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v11}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v10, v9, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_7
    add-int/2addr v8, v2

    goto :goto_3

    :cond_13
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    check-cast v9, Landroidx/collection/ArrayMap$KeySet;

    invoke-virtual {v9}, Landroidx/collection/ArrayMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_8
    move-object v10, v9

    check-cast v10, Landroidx/collection/IndexBasedArrayIterator;

    invoke-virtual {v10}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v10}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v11, v2, :cond_14

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_15
    invoke-virtual {v5, v8}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    sget v8, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    sget-object v8, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIconsLegacy:Landroidx/collection/ArrayMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v4

    :goto_9
    if-ge v8, v5, :cond_16

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/2addr v8, v2

    goto :goto_9

    :cond_16
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconSize:I

    iget v8, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIconHPadding:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget v6, v6, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move v6, v4

    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_19

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_18

    if-eqz p5, :cond_17

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mUpdateStatusBarIcons:Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda4;

    iput-object v8, v7, Lcom/android/systemui/statusbar/StatusBarIconView;->mOnDismissListener:Ljava/lang/Runnable;

    :cond_17
    invoke-virtual {v1, v7, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    add-int/2addr v6, v2

    goto :goto_a

    :cond_19
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v5, v4

    :goto_b
    if-ge v5, v0, :cond_1b

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne v6, v7, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_c
    add-int/2addr v5, v2

    goto :goto_b

    :cond_1b
    iput-boolean v4, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIconsLegacy:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public final updateNotificationIcons(Ljava/util/List;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationEntries:Ljava/util/List;

    const-string p1, "NotificationIconAreaController.updateNotificationIcons"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateStatusBarIcons()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda1;

    const/4 p1, 0x0

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->applyNotificationIconsTint()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateStatusBarIcons()V
    .locals 11

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mStatusBarNotificationStyle:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda1;-><init>(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mShowLowPriority:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getStatusBarNotificationStyle()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v10, v0

    goto :goto_0

    :cond_1
    move v10, v3

    :goto_0
    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZ)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mIsNotificationDotOnlyOn:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl$$ExternalSyntheticLambda1;-><init>(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mKeyguardStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mShowLowPriority:Z

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->updateIconsForLayout(Ljava/util/function/Function;Lcom/android/systemui/statusbar/phone/NotificationIconContainer;ZZZZ)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->applyNotificationIconsTint()V

    return-void
.end method

.method public final updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0a0513

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyNotificationIconAreaControllerImpl;->mTintAreas:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method
