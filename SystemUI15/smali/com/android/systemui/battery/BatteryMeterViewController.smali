.class public final Lcom/android/systemui/battery/BatteryMeterViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAdditionalScaleFactorForSpecificBatteryView:F

.field public mAodScaleFactor:F

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBatteryStateChangeCallback:Lcom/android/systemui/battery/BatteryMeterViewController$3;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mIgnoreTunerUpdates:Z

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public mIsSubscribedForTunerUpdates:Z

.field public final mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final mSlimIndicatorVisibilityHelper:Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

.field public final mSlotBattery:Ljava/lang/String;

.field public final mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static $r8$lambda$-WsMaTglXwEXTMBLRXrucn6xXKE(Lcom/android/systemui/battery/BatteryMeterViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowBatteryPercentInStatusBar()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->setShowPercentSetting(Z)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/battery/BatteryMeterViewController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mAdditionalScaleFactorForSpecificBatteryView:F

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$1;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$2;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$3;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/battery/BatteryMeterViewController$3;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$4;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const p1, 0x3f933333    # 1.15f

    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mAodScaleFactor:F

    iput-object p2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iput-object p3, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p6, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mMainHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p8, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p9, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-static {p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p9}, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iput-object p3, p1, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryEstimateFetcher:Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda1;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f050064

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p1, Lcom/android/systemui/battery/BatteryMeterView;->mDisplayShieldEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1040ec3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlotBattery:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    invoke-direct {p1, p0, p6}, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    iput-object p10, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p11, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p12, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    new-instance p1, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;-><init>(Lcom/android/systemui/battery/BatteryMeterViewController;I)V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

    sget-object p1, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->QS:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    const p1, 0x7f080696

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIgnoreTunerUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "icon_blacklist"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v3, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/battery/BatteryMeterViewController$3;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v1, v1, [Landroid/net/Uri;

    const-string v3, "display_battery_percentage"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowBatteryPercentInStatusBar()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->setShowPercentSetting(Z)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_estimates_last_update_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BatteryMeterViewController"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    iput-object v1, v0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object v2, v2, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/battery/BatteryMeterViewController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingObserver:Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorVisibilityHelper:Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final setAodBatteryColorAlpha(FII)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconLightModeAlpha:F

    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconDarkModeAlpha:F

    iput p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLightModeFillColor:I

    iput p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkModeFillColor:I

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLightModeBackgroundColor:I

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkModeBackgroundColor:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p2}, Lcom/android/systemui/battery/BatteryMeterView;->onDarkChangedLegacy(Ljava/util/ArrayList;FI)V

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setAodScaleFactor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->AOD:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mAodScaleFactor:F

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mConfigurationListener:Lcom/android/systemui/battery/BatteryMeterViewController$1;

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterViewController$1;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method
