.class public final Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_4

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentVolumeLevel:I

    int-to-float v2, v2

    sget-boolean v4, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mIsFold:Z

    if-eqz v4, :cond_1

    iget v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarStartTouch:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget v4, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float p2, p2, v4

    if-lez p2, :cond_3

    iget p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarScale:F

    mul-float/2addr v0, p0

    add-float/2addr v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarStartTouch:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget v5, v4, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    iget-object v0, v4, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarScale:F

    mul-float/2addr p2, p0

    sub-float/2addr v2, p2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarScale:F

    mul-float/2addr p2, p0

    add-float/2addr v2, p2

    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0, v3, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    return v1

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;->onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarChangeListener:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;->onStartTrackingTouch()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mCurrentVolumeLevel:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v2

    sub-int/2addr v0, v2

    sget-boolean v2, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mIsFold:Z

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v3

    sub-int/2addr v2, p1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    int-to-float p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarScale:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarStartTouch:F

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    add-int/2addr p1, v3

    sub-int/2addr v2, p1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$4;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    int-to-float p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarScale:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarStartTouch:F

    :goto_1
    return v1
.end method
