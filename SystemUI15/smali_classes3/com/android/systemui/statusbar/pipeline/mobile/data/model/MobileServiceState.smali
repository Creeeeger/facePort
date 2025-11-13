.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# instance fields
.field public final dataRegState:I

.field public final dataRoamingType:I

.field public final mSimSubmode:I

.field public final optionalRadioTech:I

.field public final simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

.field public final telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field public final vioceCallAvailable:Z

.field public final voiceNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;-><init>(IZIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    iput p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    iput p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    iput p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    iput p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    iput-object p7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iput-object p8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    return-void
.end method

.method public constructor <init>(IZIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    new-instance p7, Landroid/telephony/TelephonyDisplayInfo;

    invoke-direct {p7, v0, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    sget-object p8, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;->NO_SIM_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    :cond_7
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;-><init>(IZIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyDisplayInfo;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    if-eq v0, v1, :cond_0

    const-string v0, "optionalRadioTech"

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "voiceCallAvailable"

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    :cond_1
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    if-eq v0, v1, :cond_2

    const-string v0, "dataRegtate"

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    :cond_2
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    if-eq v0, v1, :cond_3

    const-string v0, "dataRoaming"

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    :cond_3
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    if-eq v0, v1, :cond_4

    const-string/jumbo v0, "voiceNetworkType"

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    :cond_4
    iget v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    if-eq v0, v1, :cond_5

    const-string v0, "mSimSubmode"

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "simCard"

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MobileServiceState(optionalRadioTech="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->optionalRadioTech:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vioceCallAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->vioceCallAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dataRoamingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->dataRoamingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", voiceNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->voiceNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSimSubmode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->mSimSubmode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", telephonyDisplayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", simCardInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;->simCardInfo:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
