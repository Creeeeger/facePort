.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;
.implements Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAboveStatusBar:Z

.field protected mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

.field public mAirplaneModeButton:Landroid/widget/Button;

.field public mAirplaneModeSummaryText:Landroid/widget/TextView;

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mBackgroundOff:Landroid/graphics/drawable/Drawable;

.field public mBackgroundOn:Landroid/graphics/drawable/Drawable;

.field public final mCanChangeWifiState:Z

.field public final mCanConfigMobileData:Z

.field protected mCanConfigWifi:Z

.field public mClickJob:Lkotlinx/coroutines/Job;

.field public mConnectedWifListLayout:Landroid/widget/LinearLayout;

.field protected mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mConnectedWifiIcon:Landroid/widget/ImageView;

.field public mConnectedWifiSummaryText:Landroid/widget/TextView;

.field public mConnectedWifiTitleText:Landroid/widget/TextView;

.field public final mCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public mDefaultDataSubId:I

.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field protected mDialogView:Landroid/view/View;

.field public mDivider:Landroid/view/View;

.field public mDoneButton:Landroid/widget/Button;

.field public mEthernetLayout:Landroid/widget/LinearLayout;

.field public final mHandler:Landroid/os/Handler;

.field protected mHasMoreWifiEntries:Z

.field public final mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field public final mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

.field public mInternetDialogSubTitle:Landroid/widget/TextView;

.field public mInternetDialogTitle:Landroid/widget/TextView;

.field public mIsProgressBarVisible:Z

.field public final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mMobileDataToggle:Landroid/widget/Switch;

.field public mMobileNetworkLayout:Landroid/widget/LinearLayout;

.field public mMobileSummaryText:Landroid/widget/TextView;

.field public mMobileTitleText:Landroid/widget/TextView;

.field public mMobileToggleDivider:Landroid/view/View;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

.field public mSeeAllLayout:Landroid/widget/LinearLayout;

.field protected mShareWifiButton:Landroid/widget/Button;

.field public mSignalIcon:Landroid/widget/ImageView;

.field public final mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTurnWifiOnLayout:Landroid/widget/LinearLayout;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mWiFiToggle:Landroid/widget/Switch;

.field protected mWifiEntriesCount:I

.field public mWifiNetworkHeight:I

.field public mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

.field public mWifiScanNotifyText:Landroid/widget/TextView;

.field public mWifiSettingsIcon:Landroid/widget/ImageView;

.field public mWifiToggleTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "InternetDialog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;ZZZLkotlinx/coroutines/CoroutineScope;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogTransitionAnimator;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    iput-boolean p6, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAboveStatusBar:Z

    iput-object p13, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    sget-boolean p6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->DEBUG:Z

    if-eqz p6, :cond_0

    const-string p6, "InternetDialog"

    const-string p13, "Init InternetDialog"

    invoke-static {p6, p13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHandler:Landroid/os/Handler;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {p3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDefaultDataSubscriptionId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDefaultDataSubId:I

    iget-object p2, p3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-boolean p4, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCanConfigMobileData:Z

    iput-boolean p5, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCanConfigWifi:Z

    const-string p2, "no_change_wifi_state"

    invoke-static {p1, p2}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "WifiEntResUtils"

    const-string p2, "WI-FI state isn\'t allowed to change due to user restriction."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCanChangeWifiState:Z

    iput-object p12, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    invoke-direct {p1, p3, p7}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    return-void
.end method


# virtual methods
.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSystemUIDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAboveStatusBar:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7f6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object v0
.end method

.method public final getMobileNetworkSummary(I)Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyDisplayInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEFAULT_TELEPHONY_DISPLAY_INFO:Landroid/telephony/TelephonyDisplayInfo;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v2

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "InternetDialogController"

    const-string v1, "The description of network type is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lcom/android/settingslib/mobile/MobileMappings;->mapIconSets(Lcom/android/settingslib/mobile/MobileMappings$Config;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_MERGED_WIFI:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget v1, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCarrierNetworkChangeMode:Z

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget v1, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    goto :goto_1

    :cond_3
    iget v1, v1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    :goto_1
    if-eqz v1, :cond_4

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    const p0, 0x7f130c1b

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_5
    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_6

    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDataStateInService(I)Z

    move-result p0

    if-nez p0, :cond_c

    const p0, 0x7f130c1a

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_9
    :goto_4
    if-eqz v1, :cond_b

    if-eqz v2, :cond_a

    const p0, 0x7f130c1c

    goto :goto_5

    :cond_a
    const p0, 0x7f130c16

    goto :goto_5

    :cond_b
    const p0, 0x7f130c33

    :goto_5
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f130ded

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_c
    :goto_6
    move-object p0, v4

    :goto_7
    return-object p0
.end method

.method public final getMobileNetworkTitle(I)Ljava/lang/CharSequence;
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/stream/Stream;

    new-instance v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda9;

    invoke-direct {v4, v2, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda9;-><init>(Ljava/util/Set;Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda9;-><init>(Ljava/util/Set;Landroid/content/Context;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;-><init>(I)V

    new-instance v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getSignalStrengthDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    const v1, 0x7f080b0b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "InternetDialogController"

    const-string p1, "TelephonyManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDataStateInService(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isVoiceStateInService(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getSignalStrengthDrawableWithLevel(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    move-object v0, p1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010212

    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    const p1, 0x7f0600a5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :cond_4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public final getSubtitleText()Ljava/lang/CharSequence;
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mIsProgressBarVisible:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    sget-boolean v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    const-string v3, "InternetDialogController"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    const-string v0, "Wi-Fi off."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_WIFI_IS_OFF:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    const-string v0, "The device is locked."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_UNLOCK_TO_VIEW_NETWORKS:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasWifiEntries:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_TAP_A_NETWORK_TO_CONNECT:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto/16 :goto_3

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_SEARCHING_FOR_NETWORKS:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    move-result v0

    sget v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_NON_CARRIER_NETWORK_UNAVAILABLE:I

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto/16 :goto_3

    :cond_6
    if-eqz v2, :cond_7

    const-string v0, "No Wi-Fi item."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v0, v6, :cond_8

    goto :goto_0

    :cond_8
    move v4, v7

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasActiveSubIdOnDds:Z

    :cond_a
    :goto_1
    sget v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->SUBTITLE_TEXT_ALL_CARRIER_NETWORK_UNAVAILABLE:I

    if-eqz v7, :cond_11

    iget v6, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isVoiceStateInService(I)Z

    move-result v6

    if-nez v6, :cond_b

    iget v6, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isDataStateInService(I)Z

    move-result v6

    if-nez v6, :cond_b

    if-nez v4, :cond_b

    goto :goto_2

    :cond_b
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v2, :cond_c

    const-string v0, "Mobile data off"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    move-result v4

    if-nez v4, :cond_f

    if-eqz v2, :cond_e

    const-string v1, "No carrier data."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    :cond_10
    move-object p0, v5

    goto :goto_3

    :cond_11
    :goto_2
    if-eqz v2, :cond_12

    const-string v1, "No carrier or service is out of service."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public getWifiListMaxCount()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mEthernetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    return v1
.end method

.method public hideWifiViews()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->setProgressBarVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSeeAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mShareWifiButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget-boolean p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->DEBUG:Z

    if-eqz p2, :cond_0

    const-string p2, "InternetDialog"

    const-string v0, "onCreate"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$InternetDialogEvent;->INTERNET_DIALOG_SHOW:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$InternetDialogEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0133

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f130083

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    const v1, 0x7f14000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070477

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiNetworkHeight:I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0542

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0541

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a039c

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0ec6

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0428

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mEthernetLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0725

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0da9

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0ece

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiToggleTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0ec4

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0ec5

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiScanNotifyText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0eb6

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0eb5

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0eb8

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0eb7

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0ec7

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiSettingsIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0ec1

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0add

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSeeAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a03af

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDoneButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0b45

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mShareWifiButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0b60

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSignalIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a072b

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a072a

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a072d

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileToggleDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a072c

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileDataToggle:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v1, 0x7f0a0ecc

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWiFiToggle:Landroid/widget/Switch;

    const v0, 0x7f081235

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    const v4, 0x7f13018e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    const v4, 0x7f130f09

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogTitle:Landroid/widget/TextView;

    const v3, 0x800013

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const v0, 0x7f080b98

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileDataToggle:Landroid/widget/Switch;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSeeAllLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWiFiToggle:Landroid/widget/Switch;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDoneButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda13;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mShareWifiButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeButton:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final onStart(Landroid/app/Dialog;)V
    .locals 12

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget-boolean p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->DEBUG:Z

    const-string v0, "onStart"

    if-eqz p1, :cond_0

    const-string p1, "InternetDialog"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCanConfigWifi:Z

    sget-boolean v1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    const-string v3, "InternetDialogController"

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v4, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->addAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    iget-object v6, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectionStateFilter:Landroid/content/IntentFilter;

    iget-object v7, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/16 v11, 0x38

    iget-object v5, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectionStateReceiver:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$2;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetOnSubscriptionChangedListener;

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetOnSubscriptionChangedListener;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V

    iput-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->refreshHasActiveSubIdOnDds()V

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v4, v5}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init, SubId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-static {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileMappings$Config;->readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConfig:Lcom/android/settingslib/mobile/MobileMappings$Config;

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    iget v1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;

    iget v1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetTelephonyCallback;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;II)V

    iget-object v1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    iget v3, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mDefaultDataSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManagerNetworkCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->scanWifiAccessPoints()V

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCanConfigWifi:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->hideWifiViews()V

    :cond_3
    return-void
.end method

.method public final onStop(Landroid/app/Dialog;)V
    .locals 7

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget-boolean p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->DEBUG:Z

    const-string v0, "onStop"

    if-eqz p1, :cond_0

    const-string p1, "InternetDialog"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSeeAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWiFiToggle:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mShareWifiButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    const-string v3, "InternetDialogController"

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectionStateReceiver:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$2;

    iget-object v4, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v4, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v5, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyCallback;

    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected null telephony call back for Sub "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyManagerMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyCallbackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubIdTelephonyDisplayInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->removeAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    iget-object p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectivityManagerNetworkCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object p1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mConnectedWifiInternetMonitor:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    monitor-enter v0

    :try_start_0
    iput-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$ConnectedWifiInternetMonitor;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    :goto_1
    iput-object v1, v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogManager:Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogManager;->destroyDialog()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onWindowFocusChanged(Landroid/app/Dialog;Z)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final setProgressBarVisible(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mIsProgressBarVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mIsProgressBarVisible:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getSubtitleText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateDialog(Z)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x5

    const-string v3, "InternetDialog"

    sget-boolean v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v5, "updateDialog"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogTitle:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v7

    const v8, 0x7f13018e

    if-eqz v7, :cond_1

    iget-object v7, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    :cond_1
    iget-object v7, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    const v9, 0x7f130f09

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogSubTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getSubtitleText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeButton:Landroid/widget/Button;

    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v7

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v10

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mEthernetLayout:Landroid/widget/LinearLayout;

    iget-boolean v7, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_2

    :cond_3
    move v7, v10

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v5, 0x7f14048c

    const v7, 0x7f14048b

    const v11, 0x7f0600a5

    if-eqz p1, :cond_18

    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    move-result v13

    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isCarrierNetworkActive()Z

    move-result v14

    iget-object v15, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v15, :cond_18

    if-nez v13, :cond_5

    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    move v13, v9

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v13, 0x1

    :goto_4
    if-eqz v4, :cond_6

    const-string/jumbo v4, "setMobileDataLayout, isCarrierNetworkActive = "

    invoke-static {v4, v3, v14}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    iget-boolean v4, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasActiveSubIdOnDds:Z

    goto :goto_6

    :cond_8
    :goto_5
    move v4, v9

    :goto_6
    if-nez v4, :cond_a

    if-eqz v3, :cond_9

    if-nez v14, :cond_a

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_10

    :cond_a
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileDataToggle:Landroid/widget/Switch;

    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileTitleText:Landroid/widget/TextView;

    iget v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDefaultDataSubId:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getMobileNetworkTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDefaultDataSubId:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getMobileNetworkSummary(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-static {v3, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setBreakStrategy(I)V

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_b
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileDataToggle:Landroid/widget/Switch;

    iget-boolean v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCanConfigMobileData:Z

    if-eqz v4, :cond_c

    move v14, v9

    goto :goto_8

    :cond_c
    const/4 v14, 0x4

    :goto_8
    invoke-virtual {v3, v14}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileToggleDivider:Landroid/view/View;

    if-eqz v4, :cond_d

    move v4, v9

    goto :goto_9

    :cond_d
    const/4 v4, 0x4

    :goto_9
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v13, :cond_e

    move v3, v11

    goto :goto_a

    :cond_e
    const v3, 0x7f060128

    :goto_a
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileToggleDivider:Landroid/view/View;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    move v4, v9

    goto :goto_b

    :cond_f
    move v4, v10

    :goto_b
    const v14, 0x7f14048d

    if-eqz v13, :cond_10

    const v16, 0x7f14048e

    move/from16 v12, v16

    goto :goto_c

    :cond_10
    move v12, v14

    :goto_c
    if-nez v4, :cond_13

    iget-object v13, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a0ad5

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_11
    const v2, 0x7f0a0ad4

    invoke-virtual {v15, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;

    invoke-direct {v13, v0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a0ad7

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getMobileNetworkTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a0ad6

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getMobileNetworkSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-static {v2, v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBreakStrategy(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_12
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a0ad9

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v13, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda23;

    invoke-direct {v13, v0, v3, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;ILandroid/widget/ImageView;)V

    invoke-interface {v2, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a0ad8

    invoke-virtual {v1, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSignalIcon:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_f

    :cond_13
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileNetworkLayout:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_14

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_14
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileTitleText:Landroid/widget/TextView;

    if-eqz v13, :cond_15

    move v2, v5

    goto :goto_e

    :cond_15
    move v2, v7

    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_f
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_16
    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_10

    :cond_17
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAirplaneModeSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_18
    :goto_10
    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCanConfigWifi:Z

    if-nez v1, :cond_19

    return-void

    :cond_19
    iget-object v1, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v6}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isWifiEnabled()Z

    move-result v2

    iget-object v3, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled$1()Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_1a
    move v3, v9

    goto :goto_11

    :cond_1b
    iget-object v3, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    :goto_11
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWiFiToggle:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eq v4, v2, :cond_1c

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWiFiToggle:Landroid/widget/Switch;

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1c
    if-eqz v1, :cond_1e

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiToggleTitleText:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v8, :cond_1d

    goto :goto_12

    :cond_1d
    move v5, v7

    :goto_12
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_1e
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mTurnWifiOnLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    if-eqz v1, :cond_1f

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v7, :cond_1f

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    :cond_1f
    move-object v7, v5

    :goto_13
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mCanChangeWifiState:Z

    if-nez v4, :cond_20

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWiFiToggle:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWiFiToggle:Landroid/widget/Switch;

    invoke-virtual {v4, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiToggleTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogView:Landroid/view/View;

    const v7, 0x7f0a0ecd

    invoke-virtual {v4, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_20
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v4, :cond_24

    if-eqz v2, :cond_24

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v4, :cond_24

    if-eqz v1, :cond_21

    goto :goto_16

    :cond_21
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiTitleText:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v7}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiSummaryText:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v7, v9}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiIcon:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getWifiDrawable(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_22

    goto :goto_14

    :cond_22
    iget-object v5, v6, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object v5, v7

    :goto_14
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiSettingsIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getConfiguratorQrCodeGeneratorIntentOrNull(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_23

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mShareWifiButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_15

    :cond_23
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mShareWifiButton:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    :goto_15
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSecondaryMobileNetworkLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_25

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_17

    :cond_24
    :goto_16
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mConnectedWifListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mShareWifiButton:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    :cond_25
    :goto_17
    if-eqz v2, :cond_2c

    if-eqz v1, :cond_26

    goto :goto_1a

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getWifiListMaxCount()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAdapter:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;

    iget v7, v5, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    if-le v7, v4, :cond_27

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHasMoreWifiEntries:Z

    :cond_27
    if-ltz v4, :cond_29

    iget v8, v5, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mMaxEntriesCount:I

    if-ne v8, v4, :cond_28

    goto :goto_18

    :cond_28
    iput v4, v5, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mMaxEntriesCount:I

    if-le v7, v4, :cond_29

    iput v4, v5, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter;->mWifiEntriesCount:I

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_29
    :goto_18
    iget v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiNetworkHeight:I

    mul-int/2addr v5, v4

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMinimumHeight()I

    move-result v4

    if-eq v4, v5, :cond_2a

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    :cond_2a
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSeeAllLayout:Landroid/widget/LinearLayout;

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mHasMoreWifiEntries:Z

    if-eqz v5, :cond_2b

    move v12, v9

    goto :goto_19

    :cond_2b
    const/4 v12, 0x4

    :goto_19
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1b

    :cond_2c
    :goto_1a
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mSeeAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1b
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v4, :cond_2f

    if-nez v2, :cond_2f

    if-eqz v3, :cond_2f

    if-eqz v1, :cond_2d

    goto :goto_1c

    :cond_2d
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiScanNotifyText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda13;

    const/4 v3, 0x1

    invoke-direct {v2, v6, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;I)V

    const-string v3, "link"

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiScanNotifyText:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1314e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v1}, [Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;

    move-result-object v1

    sget v4, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan;->$r8$clinit:I

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v3

    const-class v5, Landroid/text/Annotation;

    invoke-virtual {v4, v9, v3, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/Annotation;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v6, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v5, v4}, Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$$ExternalSyntheticLambda0;-><init>([Lcom/android/systemui/accessibility/floatingmenu/AnnotationLinkSpan$LinkInfo;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableString;)V

    invoke-interface {v3, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiScanNotifyText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_2e
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1d

    :cond_2f
    :goto_1c
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mWifiScanNotifyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1d
    return-void
.end method
