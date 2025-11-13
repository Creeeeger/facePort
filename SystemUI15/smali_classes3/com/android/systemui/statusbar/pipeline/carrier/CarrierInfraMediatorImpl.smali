.class public final Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final carrierInfoUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;

.field public final commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

.field public final mobileDataUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;

.field public final roamingUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;

.field public final signalUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->signalUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->carrierInfoUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->mobileDataUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->roamingUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;

    const-string p2, "CarrierInfraMediator"

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    const-string p2, "  countryISO: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    iget-object v0, p2, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  salesCode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_MULTI_SIM:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  multiSims="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", numSlot="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  - SIM "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->values()[Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    move-result-object v2

    array-length v3, v2

    move v4, p2

    :goto_2
    const-string v5, "="

    const-string v6, "    "

    if-ge v4, v3, :cond_1

    aget-object v7, v2, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :try_start_0
    new-array v5, p2, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v1, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->values()[Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    move-result-object v2

    array-length v3, v2

    move v4, p2

    :goto_3
    if-ge v4, v3, :cond_2

    aget-object v7, v2, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-array v8, p2, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v1, v8}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final varargs get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const-string p3, "CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    const-string v0, ""

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, v2, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->overriddenIconBranding:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string p1, "CarrierFeature_SystemUI_ConfigDefIndicatorAdditionalSystemIcon"

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p0, p1, v1, p2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "XEC"

    const-string p1, "ATT"

    const-string p2, "O2U"

    filled-new-array {p2, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "nfc"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->signalUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    move-result p0

    const/4 p1, 0x4

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string p3, "CarrierFeature_SystemUI_ConfigMaxRssiLevel"

    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getInt(ILjava/lang/String;IZ)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string p2, "CscFeature_SystemUI_ConfigMaxRssiLevel"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string p1, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final varargs isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "NONE"

    const-string v4, "CHC"

    const-string v5, "CHU"

    const-string v6, ""

    const-string v7, "US"

    const-string v8, "CHM"

    const-string v9, "ZVV"

    const-string v10, "KTT"

    const-string v11, "LGT"

    const-string v12, "DCM"

    const-string v13, "WATCHFACE"

    const-string v14, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v15, "KDI"

    move-object/from16 p1, v3

    const-string v3, "ASR"

    move-object/from16 p3, v3

    const-string v3, "TMK"

    move-object/from16 v16, v3

    const-string v3, "AIO"

    move-object/from16 v17, v4

    iget-object v4, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->roamingUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;

    move-object/from16 v18, v4

    const-string v4, "ATT"

    move-object/from16 v19, v5

    const-string v5, "TMB"

    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->carrierInfoUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;

    move-object/from16 v21, v9

    iget-object v9, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->signalUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;

    const/16 v22, 0x1

    move-object/from16 v23, v10

    iget-object v10, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->mobileDataUtil:Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;

    move-object/from16 v24, v10

    const/4 v10, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move/from16 v22, v10

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    invoke-static {v15, v0, v10}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v2, "CarrierFeature_Common_Support_Satellite"

    invoke-virtual {v0, v1, v2, v10, v10}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13, v10}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_3
    iget-boolean v0, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->isVoiceCapable:Z

    move/from16 v22, v0

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SBM"

    const-string v3, "RKT"

    const-string v4, "XJP"

    filled-new-array {v15, v12, v3, v4, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13, v10}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TFN"

    const-string v2, "XAR"

    filled-new-array {v4, v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v2, "CarrierFeature_SystemUI_ConfigOpBrandingForIndicatorIcon"

    invoke-virtual {v0, v1, v2, v6, v10}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_a
    iget-object v0, v8, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    const-string v1, "ZTA"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_b
    iget-object v0, v8, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v19, "PY"

    const-string v20, "SV"

    const-string v1, "AR"

    const-string v2, "BO"

    const-string v3, "BS"

    const-string v4, "BR"

    const-string v5, "CL"

    const-string v6, "CO"

    const-string v7, "CR"

    const-string v8, "DM"

    const-string v9, "DO"

    const-string v10, "EC"

    const-string v11, "GT"

    const-string v12, "HN"

    const-string v13, "JM"

    const-string v14, "MX"

    const-string v15, "NI"

    const-string v16, "PA"

    const-string v17, "PR"

    const-string v18, "PE"

    const-string v21, "TT"

    const-string v22, "UY"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "XFA"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->getCarrierLogoPolicy(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HOME"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->getCarrierLogoPolicy(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BOTH"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ZTM"

    move-object/from16 v2, v21

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v3, v24

    iget-object v2, v3, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v3, v24

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "BRI"

    const-string v2, "TGY"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v3, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_12
    move-object/from16 v3, v24

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    filled-new-array {v2, v5, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v3, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_13
    move-object/from16 v3, v24

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "ZVV"

    const-string v11, "ZTM"

    const-string v4, "CHC"

    const-string v5, "CHM"

    const-string v6, "CHU"

    const-string v7, "BRI"

    const-string v8, "TGY"

    const-string v9, "VZW"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v3, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DOR"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CHL"

    const-string v3, "TCE"

    const-string v4, "CDR"

    const-string v5, "AMX"

    const-string v6, "PCT"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_17
    const-string v1, "APP"

    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :pswitch_18
    move-object/from16 v2, p3

    move-object/from16 v6, v16

    filled-new-array {v5, v6, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :pswitch_19
    move-object/from16 v2, p3

    move-object/from16 v6, v16

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v6, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_1a
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_1b
    move-object/from16 v2, p3

    move-object/from16 v6, v16

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "TMB_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "TMK_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :pswitch_1c
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->getRoamingIconType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_1d
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->getRoamingIconType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSM"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_1e
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->getRoamingIconType(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/MobileRoamingUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "BST"

    const-string v3, "XAS"

    const-string v4, "SPR"

    const-string v5, "VMU"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_20
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    const-string v1, "CN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_21
    move-object/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CTC"

    filled-new-array {v2, v5, v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_22
    move-object/from16 v3, v24

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->get5gIconConfig(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UseEnlargedIcon"

    invoke-static {v1, v2, v10}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MM1"

    const-string v2, "STH"

    const-string v3, "XSP"

    const-string v4, "SIN"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :pswitch_23
    move-object/from16 v3, v24

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->get5gIconConfig(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UseOneShapedIcon"

    invoke-static {v0, v1, v10}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_24
    move-object/from16 v4, p1

    move-object/from16 v3, v24

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->getLteWideBandConfig(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v22, v0, 0x1

    goto/16 :goto_2

    :pswitch_25
    move-object/from16 v2, v23

    move-object/from16 v3, v24

    iget-object v0, v3, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "SKT"

    const-string v4, "KOO"

    filled-new-array {v3, v2, v11, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "OYB"

    const-string v3, "VID"

    const-string v4, "OYA"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :pswitch_26
    move-object/from16 v3, v24

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->getLteWideBandConfig(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.5G"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto/16 :goto_2

    :pswitch_27
    move-object/from16 v3, v24

    iget-object v0, v3, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto :goto_2

    :pswitch_28
    move-object/from16 v3, v24

    iget-object v0, v3, Lcom/android/systemui/statusbar/pipeline/carrier/MobileDataUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v2, "CarrierFeature_SystemUI_ConfigOverrideDataIcon"

    invoke-virtual {v0, v1, v2, v6, v10}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigOverrideDataIcon"

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    const-string v1, "LTE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto :goto_2

    :pswitch_29
    move-object/from16 v2, v21

    iget-object v0, v8, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfoUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->getIconBranding(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    goto :goto_2

    :pswitch_2a
    iget-object v0, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    const-string v1, "KR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    goto :goto_2

    :pswitch_2b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v2, "CarrierFeature_RIL_DisplayAntennaLimited"

    invoke-virtual {v0, v1, v2, v10, v10}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v22

    goto :goto_2

    :pswitch_2c
    iget-object v0, v9, Lcom/android/systemui/statusbar/pipeline/carrier/MobileSignalUtil;->commonUtil:Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;

    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->countryISO:Ljava/lang/String;

    const-string v2, "DE"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ICE"

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :pswitch_2d
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CommonUtil;->supportTSS20()Z

    move-result v22

    :cond_2
    :goto_2
    return v22

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7b822689 -> :sswitch_6
        0xfd27 -> :sswitch_5
        0xfe60 -> :sswitch_4
        0xfe81 -> :sswitch_3
        0x144e9 -> :sswitch_2
        0x144f2 -> :sswitch_1
        0x75223be0 -> :sswitch_0
    .end sparse-switch
.end method
