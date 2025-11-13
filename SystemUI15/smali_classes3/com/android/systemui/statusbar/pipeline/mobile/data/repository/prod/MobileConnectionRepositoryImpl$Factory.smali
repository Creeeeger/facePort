.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final carrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final carrierConfigRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final context:Landroid/content/Context;

.field public final flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

.field public final logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

.field public final mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Lcom/android/systemui/flags/FeatureFlagsClassic;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;Landroid/telephony/CarrierConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->connectivityManager:Landroid/net/ConnectivityManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->telephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->carrierConfigRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;

    iput-object p7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    iput-object p8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p9, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p10, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p11, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object p12, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    iput-object p13, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p14, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    iput-object p15, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    return-void
.end method


# virtual methods
.method public final build(ILcom/android/systemui/log/table/TableLogBuffer;Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;Ljava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v2, p1

    move-object/from16 v14, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    new-instance v22, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl;

    move-object/from16 v1, v22

    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v8

    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->carrierConfigRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;

    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->getOrCreateConfigForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v19, v10

    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    move-object/from16 v21, v10

    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    move-object/from16 v17, v10

    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    move-object/from16 v18, v10

    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v11, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    iget-object v12, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v13, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;

    iget-object v15, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl$Factory;->imsRegStateUtil:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;

    move-object/from16 v20, v0

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v21}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionRepositoryImpl;-><init>(ILandroid/content/Context;Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;Ljava/lang/String;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lcom/android/systemui/log/table/TableLogBuffer;Lcom/android/systemui/flags/FeatureFlagsClassic;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ImsRegStateUtil;Landroid/telephony/CarrierConfigManager;)V

    return-object v22
.end method
