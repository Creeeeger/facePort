.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

.field public final slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->telephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/View;I)Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v8, p2

    new-instance v18, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    move-object/from16 v1, v18

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-instance v3, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    move-object v7, v3

    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->CARRIER_LOGO_ON_HOME_SCREEN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-direct {v3, v10, v4, v6, v9}, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;-><init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Landroid/telephony/TelephonyManager;)V

    const v3, 0x7f0a025a

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    invoke-direct/range {v1 .. v17}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;-><init>(Landroid/view/View;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;ILcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v18
.end method
