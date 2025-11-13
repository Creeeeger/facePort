.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bootstrap:Z

.field public final carrierName:Ljava/lang/String;

.field public final embedded:Z

.field public final groupUuid:Landroid/os/ParcelUuid;

.field public final isExclusivelyNonTerrestrial:Z

.field public final isOpportunistic:Z

.field public final profileClass:I

.field public final subscriptionId:I


# direct methods
.method public constructor <init>(IZZLandroid/os/ParcelUuid;Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->subscriptionId:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isOpportunistic:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isExclusivelyNonTerrestrial:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->groupUuid:Landroid/os/ParcelUuid;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->carrierName:Ljava/lang/String;

    iput p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->profileClass:I

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->embedded:Z

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->bootstrap:Z

    return-void
.end method

.method public synthetic constructor <init>(IZZLandroid/os/ParcelUuid;Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    move-object v3, p0

    move v4, p1

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;-><init>(IZZLandroid/os/ParcelUuid;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->subscriptionId:I

    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->subscriptionId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isOpportunistic:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isOpportunistic:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isExclusivelyNonTerrestrial:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isExclusivelyNonTerrestrial:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->groupUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->groupUuid:Landroid/os/ParcelUuid;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->carrierName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->carrierName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->profileClass:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->profileClass:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->embedded:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->embedded:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->bootstrap:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->bootstrap:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->subscriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isOpportunistic:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isExclusivelyNonTerrestrial:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->groupUuid:Landroid/os/ParcelUuid;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->carrierName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->profileClass:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->embedded:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->bootstrap:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->groupUuid:Landroid/os/ParcelUuid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionModel(subscriptionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->subscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isOpportunistic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isOpportunistic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isExclusivelyNonTerrestrial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->isExclusivelyNonTerrestrial:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", groupUuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", carrierName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->carrierName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", profileClass="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->profileClass:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", embedded="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->embedded:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bootstrap="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;->bootstrap:Z

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
