.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alpha:F

.field public final deviceIcon:Lcom/android/systemui/common/shared/model/Icon;

.field public final deviceString:Ljava/lang/CharSequence;

.field public final isCurrentBroadcastApp:Z

.field public final isIntentValid:Z

.field public final isTapEnabled:Z

.field public final isVisible:Z

.field public final onClicked:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ZLjava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Icon;ZZFZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/CharSequence;",
            "Lcom/android/systemui/common/shared/model/Icon;",
            "ZZFZ",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isTapEnabled:Z

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceString:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceIcon:Lcom/android/systemui/common/shared/model/Icon;

    iput-boolean p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isCurrentBroadcastApp:Z

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isIntentValid:Z

    iput p6, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->alpha:F

    iput-boolean p7, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isVisible:Z

    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

    iget-boolean v1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isTapEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isTapEnabled:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceString:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceString:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceIcon:Lcom/android/systemui/common/shared/model/Icon;

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceIcon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isCurrentBroadcastApp:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isCurrentBroadcastApp:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isIntentValid:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isIntentValid:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->alpha:F

    iget v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->alpha:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isVisible:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isTapEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceString:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceIcon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isCurrentBroadcastApp:Z

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isIntentValid:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->alpha:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceString:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaOutputSwitcherViewModel(isTapEnabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isTapEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", deviceString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", deviceIcon="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->deviceIcon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isCurrentBroadcastApp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isCurrentBroadcastApp:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isIntentValid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isIntentValid:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", alpha="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->alpha:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", isVisible="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->isVisible:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", onClicked="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;->onClicked:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
