.class public final Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;


# instance fields
.field public final contextualButtonVisible:Z

.field public final darkIntensity:F

.field public final displayId:I

.field public final leftContainer:Landroid/widget/LinearLayout;

.field public final rightContainer:Landroid/widget/LinearLayout;

.field public final rotation:I


# direct methods
.method public constructor <init>(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rotation:I

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->leftContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rightContainer:Landroid/widget/LinearLayout;

    iput-boolean p4, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->contextualButtonVisible:Z

    iput p5, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->darkIntensity:F

    iput p6, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->displayId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    iget v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rotation:I

    iget v3, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rotation:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->leftContainer:Landroid/widget/LinearLayout;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->leftContainer:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rightContainer:Landroid/widget/LinearLayout;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rightContainer:Landroid/widget/LinearLayout;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->contextualButtonVisible:Z

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->contextualButtonVisible:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->darkIntensity:F

    iget v3, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->darkIntensity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->displayId:I

    iget p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->displayId:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rotation:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->leftContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rightContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->contextualButtonVisible:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->darkIntensity:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->displayId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->leftContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rightContainer:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnUpdateRemoteViewContainer(rotation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", leftContainer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightContainer="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contextualButtonVisible="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->contextualButtonVisible:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", darkIntensity="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->darkIntensity:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", displayId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->displayId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
