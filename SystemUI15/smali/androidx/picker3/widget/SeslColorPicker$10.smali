.class public final Landroidx/picker3/widget/SeslColorPicker$10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setSelected(Z)V

    return p2

    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setSelected(Z)V

    return v0
.end method
