.class public Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mHighBrightnessModeEnter:Z

.field public mHighBrightnessModeToast:Landroid/widget/Toast;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsDetailViewTouched:Z

.field public mIsDragging:Z

.field public mIsHorizontalGesture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsHorizontalGesture:Z

    iput-boolean p1, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeEnter:Z

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDragging:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsDetailViewTouched:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeEnter:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getSubscreenBrightnessMode()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SubScreenBrightnessToggleSeekBar"

    const-string/jumbo v3, "showHighBrightnessModeToast()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SeekBar;->mContext:Landroid/content/Context;

    const v3, 0x7f131053

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mHighBrightnessModeToast:Landroid/widget/Toast;

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v1, :cond_5

    const/4 v2, 0x2

    if-eq v4, v2, :cond_3

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsHorizontalGesture:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mInitialTouchY:F

    sub-float/2addr v3, v2

    iget v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mInitialTouchX:F

    sub-float/2addr v0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    iget-object v2, p0, Landroid/widget/SeekBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iput-boolean v1, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsHorizontalGesture:Z

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    iput v0, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mInitialTouchX:F

    iput v3, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mInitialTouchY:F

    iput-boolean v2, p0, Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;->mIsHorizontalGesture:Z

    :cond_7
    :goto_1
    return v1
.end method
