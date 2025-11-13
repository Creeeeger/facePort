.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public connected:Z

.field public dataConnected:Z

.field public dataType:Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

.field public fivegavailable:Z

.field public networkType:I

.field public overrideNetworkType:I

.field public simCard:Ljava/lang/String;

.field public final slotId:I

.field public final slotName:Ljava/lang/String;

.field public final subId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;ZZLcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;IIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotId:I

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->subId:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->connected:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataConnected:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataType:Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    iput p7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->networkType:I

    iput p8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->overrideNetworkType:I

    iput-boolean p9, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->fivegavailable:Z

    iput-object p10, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->simCard:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotId:I

    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->subId:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->subId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->connected:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->connected:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataConnected:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataConnected:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataType:Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataType:Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->networkType:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->networkType:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->overrideNetworkType:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->overrideNetworkType:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->fivegavailable:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->fivegavailable:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->simCard:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->simCard:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->subId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->connected:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataConnected:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataType:Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->networkType:I

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->overrideNetworkType:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->fivegavailable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->simCard:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->connected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataConnected:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->dataType:Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->networkType:I

    iget v4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->overrideNetworkType:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NONE"

    invoke-static {v4}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "/"

    if-nez v3, :cond_0

    const-string v3, "UNKNOWN"

    invoke-static {v4}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "(5gavailable:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->fivegavailable:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->simCard:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->slotId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileSimpleLogger;->subId:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") connected="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " dataConnected="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " dataType="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " networkType="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " simCard="

    invoke-static {v5, v3, p0, v4}, Landroidx/datastore/preferences/core/MutablePreferences$toString$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
