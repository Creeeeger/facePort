.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;
.super Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final config:Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

.field public final layout:Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;Lcom/android/systemui/log/core/MessageBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/clocks/AnimatableClockView;",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/log/core/MessageBuffer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;Ljava/lang/Integer;Lcom/android/systemui/log/core/MessageBuffer;)V

    new-instance p3, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

    invoke-direct {p3, p2}, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;-><init>(Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;->getViews()Ljava/util/List;

    move-result-object p4

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iget-object v0, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;->resources:Landroid/content/res/Resources;

    iget-object v1, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lockscreen_clock_view_large"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setId(I)V

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->layout:Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

    new-instance p3, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    iget-boolean v4, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;->hasStepClockAnimation:Z

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/plugins/clocks/ClockFaceConfig;-><init>(Lcom/android/systemui/plugins/clocks/ClockTickRate;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->config:Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    iget-boolean p3, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;->migratedClocks:Z

    iput-boolean p3, p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->migratedClocks:Z

    iget-boolean p3, p1, Lcom/android/systemui/shared/clocks/DefaultClockController;->hasStepClockAnimation:Z

    iput-boolean p3, p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->hasCustomPositionUpdatedAnimation:Z

    new-instance p3, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4, p4}, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->animations:Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/android/systemui/plugins/clocks/ClockFaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->config:Lcom/android/systemui/plugins/clocks/ClockFaceConfig;

    return-object p0
.end method

.method public final getLayout()Lcom/android/systemui/plugins/clocks/ClockFaceLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->layout:Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

    return-object p0
.end method

.method public final getLayout()Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->layout:Lcom/android/systemui/plugins/clocks/DefaultClockFaceLayout;

    return-object p0
.end method

.method public final recomputePadding(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-boolean v1, v0, Lcom/android/systemui/shared/clocks/DefaultClockController;->migratedClocks:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController;->onSecondaryDisplay:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    :cond_3
    const/high16 v0, -0x41000000    # -0.5f

    mul-float/2addr v2, v0

    add-float/2addr v2, p1

    float-to-int p1, v2

    :goto_1
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
