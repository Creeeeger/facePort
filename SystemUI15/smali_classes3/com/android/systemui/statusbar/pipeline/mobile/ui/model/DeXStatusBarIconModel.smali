.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityId:I

.field public final isVisible:Z

.field public final netwotkTypeId:I

.field public final roamingId:I

.field public final showTriangle:Z

.field public final slotId:I

.field public final strengthId:I

.field public final subId:I


# direct methods
.method public constructor <init>(ZIIIIZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    iput p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    iput p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    iput p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    iput p7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    iput p8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    return-void
.end method

.method public synthetic constructor <init>(ZIIIIZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;-><init>(ZIIIIZII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeXStatusBarIconModel(isVisible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strengthId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->strengthId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", netwotkTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->netwotkTypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showTriangle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->showTriangle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->activityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roamingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;->roamingId:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
