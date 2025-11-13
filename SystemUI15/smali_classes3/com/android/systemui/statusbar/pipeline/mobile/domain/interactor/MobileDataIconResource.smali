.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final carrierIconOverrides:Ljava/util/HashMap;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

.field public final overridesAMX:Ljava/util/HashMap;

.field public final overridesATT:Ljava/util/HashMap;

.field public final overridesChina:Ljava/util/HashMap;

.field public final overridesKTT:Ljava/util/HashMap;

.field public final overridesNA:Ljava/util/HashMap;

.field public final overridesTMO:Ljava/util/HashMap;

.field public final overridesUSCC:Ljava/util/HashMap;

.field public final overridesVZW:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;Landroid/telephony/TelephonyManager;)V
    .locals 45

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->mobileMappingsProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/MobileMappingsProxy;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v2, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v3, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v5, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS_USC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v6, v8}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesUSCC:Ljava/util/HashMap;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v7, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_NA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v7, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v13, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_NA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v7, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v14, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v7, v14, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_E_ATT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v7, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_NA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v7, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 p1, v14

    sget-object v14, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS_NA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 p2, v15

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v7, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    move-object v11, v15

    filled-new-array/range {v6 .. v11}, [Lkotlin/Pair;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    iget-object v6, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v7, v6, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->E_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v8, v7, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v8, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v10, v8, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 p3, v7

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v29, v6

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v10, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v10, v7, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v30, v5

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->H_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v31, v14

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v10, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v10, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v32, v5

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v33, v7

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v10, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v34, v12

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v5, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v35, v4

    iget-object v4, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v36, v5

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v37, v13

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v4, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v38, v1

    iget-object v1, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v39, v4

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v10, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v40, v1

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v41, v8

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v42, v2

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v10, v1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v43, v1

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW_UWB:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    move-object/from16 v44, v3

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v10, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v6

    move-object/from16 v19, v14

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    move-object/from16 v22, v5

    move-object/from16 v23, v13

    move-object/from16 v24, v4

    move-object/from16 v25, v8

    move-object/from16 v26, v2

    move-object/from16 v27, v0

    move-object/from16 v28, v3

    filled-new-array/range {v15 .. v28}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesVZW:Ljava/util/HashMap;

    move-object/from16 v0, v41

    iget-object v2, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_NA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v38

    iget-object v5, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v6, Lkotlin/Pair;

    move-object/from16 v7, v37

    invoke-direct {v6, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v5, v35

    iget-object v8, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v9, Lkotlin/Pair;

    move-object/from16 v10, v34

    invoke-direct {v9, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v42

    iget-object v11, v8, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v12, Lkotlin/Pair;

    move-object/from16 v13, p2

    invoke-direct {v12, v11, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v11, v44

    iget-object v14, v11, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_TMO_UC:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v44, v11

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v14, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v6, v9, v12, v11}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, v33

    iget-object v4, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->H_NA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, v32

    iget-object v6, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_NA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v6, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v6, v39

    iget-object v7, v6, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v12, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS_NA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    move-object/from16 v32, v4

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v7, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v7, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v8, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v7, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v7, v44

    iget-object v7, v7, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v13, Lkotlin/Pair;

    move-object/from16 v33, v3

    move-object/from16 v3, v31

    invoke-direct {v13, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    move-object/from16 v19, v12

    move-object/from16 v20, v10

    move-object/from16 v21, v13

    filled-new-array/range {v14 .. v21}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesNA:Ljava/util/HashMap;

    iget-object v3, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v6, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G_AMX:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, v36

    iget-object v10, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v10, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, p1

    iget-object v4, v4, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v10, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G_PLUS_AMX:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v4, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v9, v11, v12}, [Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v4, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v5, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v8, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE_KT:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v9, v7, v5, v8, v10}, [Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesKTT:Ljava/util/HashMap;

    move-object/from16 v3, v30

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, v29

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->E_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, p3

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v3, v3, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->H_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5GA_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    filled-new-array/range {v7 .. v17}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesVZW:Ljava/util/HashMap;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "VZW"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesVZW:Ljava/util/HashMap;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "VZW_OPEN"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "TMB"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "TMB_OPEN"

    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    new-instance v6, Lkotlin/Pair;

    const-string v7, "TMK"

    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    new-instance v7, Lkotlin/Pair;

    const-string v8, "TMK_OPEN"

    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesTMO:Ljava/util/HashMap;

    new-instance v8, Lkotlin/Pair;

    const-string v9, "ASR"

    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    new-instance v9, Lkotlin/Pair;

    const-string v10, "CDR"

    invoke-direct {v9, v10, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    new-instance v10, Lkotlin/Pair;

    const-string v11, "AMX"

    invoke-direct {v10, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    new-instance v11, Lkotlin/Pair;

    const-string v12, "PCT"

    invoke-direct {v11, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesAMX:Ljava/util/HashMap;

    new-instance v12, Lkotlin/Pair;

    const-string v13, "TCE"

    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesKTT:Ljava/util/HashMap;

    new-instance v13, Lkotlin/Pair;

    const-string v14, "KTT"

    invoke-direct {v13, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    new-instance v14, Lkotlin/Pair;

    const-string v15, "CHC"

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 p1, v14

    const-string v14, "CHM"

    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    new-instance v14, Lkotlin/Pair;

    move-object/from16 p2, v15

    const-string v15, "CTC"

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesChina:Ljava/util/HashMap;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 p3, v14

    const-string v14, "CHU"

    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v16, v15

    const-string v15, "ATT"

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v17, v14

    const-string v14, "ATT_OPEN"

    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v18, v15

    const-string v15, "AIO"

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesATT:Ljava/util/HashMap;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v19, v14

    const-string v14, "AIO_OPEN"

    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesUSCC:Ljava/util/HashMap;

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v20, v15

    const-string v15, "USC"

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesUSCC:Ljava/util/HashMap;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v21, v14

    const-string v14, "USC_OPEN"

    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesNA:Ljava/util/HashMap;

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v22, v15

    const-string v15, "DSH"

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesNA:Ljava/util/HashMap;

    new-instance v15, Lkotlin/Pair;

    move-object/from16 v23, v14

    const-string v14, "DSG"

    invoke-direct {v15, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->overridesNA:Ljava/util/HashMap;

    new-instance v14, Lkotlin/Pair;

    move-object/from16 v24, v15

    const-string v15, "DSA"

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v26, v14

    move-object/from16 v25, v23

    move-object/from16 v23, v21

    move-object/from16 v21, v19

    move-object/from16 v19, v17

    move-object/from16 v14, p1

    move-object/from16 v17, v16

    move-object/from16 v27, v24

    move-object/from16 v24, v22

    move-object/from16 v22, v20

    move-object/from16 v20, v18

    move-object/from16 v15, p2

    move-object/from16 v16, v0

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v27

    filled-new-array/range {v2 .. v26}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierIconOverrides:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final mapIconSets(I)Ljava/util/Map;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_HSPA_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {p0, v6, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_0

    :cond_0
    move-object v7, v5

    :goto_0
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-interface {p0, v6, p1, v8}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_LTE_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {p0, v5, p1, v6}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xd

    if-eqz v5, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_LTE_CA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {p0, v5, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_4G_PLUS_INSTEAD_OF_4G:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {p0, v5, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_LTE_CA_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {p0, v5, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_4_HALF_G_INSTEAD_OF_4G_PLUS:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {p0, v5, p1, v7}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :cond_5
    sget-object v5, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_2

    :cond_6
    move-object v5, v6

    :goto_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-static {v4}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ONE_SHAPED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3, p1, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_4

    :cond_7
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ENLARGED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p0, v4, p1, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_ENLARGED_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3, p1, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_5

    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ENLARGED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p0, v4, p1, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_5

    :cond_a
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x3e7

    invoke-static {v2}, Lcom/android/settingslib/mobile/MobileMappings;->toDisplayIconKey(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3, p1, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_6

    :cond_b
    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->USE_5G_ENLARGED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    goto :goto_6

    :cond_c
    sget-object p0, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    :goto_6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
