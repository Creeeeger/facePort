.class public final Lcom/android/systemui/battery/BatteryMeterViewController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final mMainHandler:Landroid/os/Handler;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p2, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p3, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p4, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mMainHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p6, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p7, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p8, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p9, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p10, p0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/battery/BatteryMeterViewController;
    .locals 14

    move-object v0, p0

    new-instance v13, Lcom/android/systemui/battery/BatteryMeterViewController;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v7, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v11, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v12, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iget-object v3, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v4, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v5, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v6, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mMainHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v9, v0, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object v0, v13

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/battery/BatteryMeterViewController;-><init>(Lcom/android/systemui/battery/BatteryMeterView;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/os/Handler;Landroid/content/ContentResolver;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V

    return-object v13
.end method
