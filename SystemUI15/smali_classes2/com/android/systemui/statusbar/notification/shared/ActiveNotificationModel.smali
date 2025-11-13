.class public final Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;
.super Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationEntryModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final aodIcon:Landroid/graphics/drawable/Icon;

.field public final bucket:I

.field public final groupKey:Ljava/lang/String;

.field public final instanceId:Ljava/lang/Integer;

.field public final isAmbient:Z

.field public final isGroupSummary:Z

.field public final isLastMessageFromReply:Z

.field public final isPulsing:Z

.field public final isRowDismissed:Z

.field public final isSilent:Z

.field public final isSuppressedFromStatusBar:Z

.field public final key:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final shelfIcon:Landroid/graphics/drawable/Icon;

.field public final statusBarIcon:Landroid/graphics/drawable/Icon;

.field public final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZZZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;ILjava/lang/String;Ljava/lang/Integer;ZI)V
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationEntryModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->key:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->groupKey:Ljava/lang/String;

    move v1, p3

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isAmbient:Z

    move v1, p4

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isRowDismissed:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSilent:Z

    move v1, p6

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isLastMessageFromReply:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSuppressedFromStatusBar:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isPulsing:Z

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->aodIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->shelfIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->statusBarIcon:Landroid/graphics/drawable/Icon;

    move v1, p12

    iput v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->uid:I

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->packageName:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->instanceId:Ljava/lang/Integer;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isGroupSummary:Z

    move/from16 v1, p16

    iput v1, v0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->bucket:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->groupKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->groupKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isAmbient:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isAmbient:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isRowDismissed:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isRowDismissed:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSilent:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSilent:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isLastMessageFromReply:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isLastMessageFromReply:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSuppressedFromStatusBar:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSuppressedFromStatusBar:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isPulsing:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isPulsing:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->aodIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->aodIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->shelfIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->shelfIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->statusBarIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->statusBarIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->uid:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->uid:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->instanceId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->instanceId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isGroupSummary:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isGroupSummary:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget p0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->bucket:I

    iget p1, p1, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->bucket:I

    if-eq p0, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->groupKey:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isAmbient:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isRowDismissed:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSilent:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isLastMessageFromReply:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSuppressedFromStatusBar:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isPulsing:Z

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->aodIcon:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->shelfIcon:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->statusBarIcon:Landroid/graphics/drawable/Icon;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->uid:I

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->instanceId:Ljava/lang/Integer;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isGroupSummary:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->bucket:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->aodIcon:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->shelfIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->statusBarIcon:Landroid/graphics/drawable/Icon;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ActiveNotificationModel(key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", groupKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->groupKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isAmbient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isAmbient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRowDismissed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isRowDismissed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSilent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSilent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isLastMessageFromReply="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isLastMessageFromReply:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isSuppressedFromStatusBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isSuppressedFromStatusBar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPulsing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isPulsing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", aodIcon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shelfIcon="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", statusBarIcon="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->uid:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packageName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", instanceId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->instanceId:Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isGroupSummary="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->isGroupSummary:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", bucket="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;->bucket:I

    const-string v0, ")"

    invoke-static {p0, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
