.class public final Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;
.super Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final icon:Lcom/android/systemui/common/shared/model/Icon;

.field public final onClickListener:Landroid/view/View$OnClickListener;

.field public final startTimeMs:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/shared/model/Icon;JLandroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->icon:Lcom/android/systemui/common/shared/model/Icon;

    iput-wide p2, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->startTimeMs:J

    iput-object p4, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;

    iget-object v1, p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->icon:Lcom/android/systemui/common/shared/model/Icon;

    iget-object v3, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->startTimeMs:J

    iget-wide v5, p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->startTimeMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->onClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->startTimeMs:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shown(icon="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", startTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;->startTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", onClickListener="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
