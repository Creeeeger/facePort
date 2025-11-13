.class public final Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object v1, v1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->background:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    mul-float/2addr v1, p1

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v2

    sub-int/2addr p1, v2

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    :goto_2
    move v5, p1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    goto :goto_2

    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip$1;->this$0:Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;->batteryChipContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v1

    div-float/2addr p0, v2

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    div-float v7, v1, v2

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_2
    return-void
.end method
