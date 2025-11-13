.class Landroidx/picker3/widget/SeslColorPicker$9;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker3/widget/SeslColorPicker;->initGradientColorSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    .line 560
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 564
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/picker3/widget/SeslColorPicker;->access$1102(Landroidx/picker3/widget/SeslColorPicker;Z)Z

    .line 565
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return p2

    .line 571
    :cond_0
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$900(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslGradientColorSeekBar;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setSelected(Z)V

    return p2

    .line 567
    :cond_1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker;->access$900(Landroidx/picker3/widget/SeslColorPicker;)Landroidx/picker3/widget/SeslGradientColorSeekBar;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setSelected(Z)V

    return v0
.end method
