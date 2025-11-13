.class public final Landroidx/picker3/widget/SeslColorPicker$10;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker3/widget/SeslColorPicker;I)V
    .locals 0

    iput p2, p0, Landroidx/picker3/widget/SeslColorPicker$10;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1

    :pswitch_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    :goto_0
    move v0, p2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setSelected(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$10;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setSelected(Z)V

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
