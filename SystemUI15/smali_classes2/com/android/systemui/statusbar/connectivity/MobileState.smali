.class public final Lcom/android/systemui/statusbar/connectivity/MobileState;
.super Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public airplaneMode:Z

.field public carrierId:I

.field public carrierNetworkChangeMode:Z

.field public dataConnected:Z

.field public dataSim:Z

.field public dataState:I

.field public defaultDataOff:Z

.field public isDefault:Z

.field public isEmergency:Z

.field public networkName:Ljava/lang/String;

.field public networkNameData:Ljava/lang/String;

.field public final networkTypeResIdCache:Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;

.field public roaming:Z

.field public serviceState:Landroid/telephony/ServiceState;

.field public signalStrength:Landroid/telephony/SignalStrength;

.field public telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field public userSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/statusbar/connectivity/MobileState;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    iput-boolean p9, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    iput-boolean p10, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    iput p11, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    iput-boolean p12, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    new-instance p1, Landroid/telephony/TelephonyDisplayInfo;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZ)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    new-instance p1, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;-><init>(Lcom/android/settingslib/mobile/MobileIconCarrierIdOverrides;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkTypeResIdCache:Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x1

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p14, p13, 0x4

    const/4 v0, 0x0

    if-eqz p14, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    move p9, v0

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    move p10, v0

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    move p11, v0

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    move p12, v0

    :cond_b
    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/statusbar/connectivity/MobileState;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZZZIZ)V

    return-void
.end method

.method public static synthetic getNetworkTypeResIdCache$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MobileState can only update from another MobileState"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    iget v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getOperatorAlphaShort()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->hashCode()I

    move-result v3

    :cond_3
    add-int/2addr v2, v3

    return v2
.end method

.method public final tableColumns()Ljava/util/List;
    .locals 20

    const-string v16, "networkTypeIconCache"

    const-string/jumbo v17, "serviceState"

    const-string v0, "dataSim"

    const-string v1, "carrierId"

    const-string v2, "networkName"

    const-string v3, "networkNameData"

    const-string v4, "dataConnected"

    const-string/jumbo v5, "roaming"

    const-string v6, "isDefault"

    const-string v7, "isEmergency"

    const-string v8, "airplaneMode"

    const-string v9, "carrierNetworkChangeMode"

    const-string/jumbo v10, "userSetup"

    const-string v11, "dataState"

    const-string v12, "defaultDataOff"

    const-string/jumbo v13, "showQuickSettingsRatIcon"

    const-string/jumbo v14, "voiceServiceState"

    const-string v15, "isInService"

    const-string/jumbo v18, "signalStrength"

    const-string v19, "displayInfo"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-super/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->tableColumns()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final tableData()Ljava/util/List;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v1, v15, :cond_0

    sget-object v15, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v1, v15, :cond_1

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    const-string v18, "(null)"

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/android/systemui/statusbar/connectivity/MobileStateKt;->access$minLog(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v19, v1

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v19, v18

    :goto_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/android/systemui/statusbar/connectivity/MobileStateKt;->access$minLog(Landroid/telephony/SignalStrength;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v20, v1

    goto :goto_6

    :cond_7
    :goto_5
    move-object/from16 v20, v18

    :goto_6
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkTypeResIdCache:Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;

    move-object/from16 v18, v1

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    invoke-super/range {p0 .. p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->tableData()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/lang/StringBuilder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->toString(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    const-string v1, "dataSim="

    const-string v2, ","

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "carrierId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "networkName="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkNameData:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "networkNameData="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    const-string v1, "dataConnected="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->roaming:Z

    const-string/jumbo v1, "roaming="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isDefault:Z

    const-string v1, "isDefault="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->isEmergency:Z

    const-string v1, "isEmergency="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->airplaneMode:Z

    const-string v1, "airplaneMode="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    const-string v1, "carrierNetworkChangeMode="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    const-string/jumbo v1, "userSetup="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dataState="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->defaultDataOff:Z

    const-string v1, "defaultDataOff="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataConnected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->userSetup:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "showQuickSettingsRatIcon="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "voiceServiceState="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isInService="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "networkTypeIconCache="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->networkTypeResIdCache:Lcom/android/systemui/statusbar/connectivity/NetworkTypeResIdCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    const-string v1, "(null)"

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/systemui/statusbar/connectivity/MobileStateKt;->access$minLog(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "serviceState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/android/systemui/statusbar/connectivity/MobileStateKt;->access$minLog(Landroid/telephony/SignalStrength;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v0

    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "signalStrength="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "displayInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
