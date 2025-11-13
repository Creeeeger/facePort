.class public final Lcom/android/wm/shell/controlpanel/activity/TouchPad;
.super Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCenterText:Landroid/view/View;

.field public final mIsMediaPanel:Z

.field public mTouchPadBg:Landroid/view/View;

.field public mTouchPadLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mIsMediaPanel:Z

    return-void
.end method


# virtual methods
.method public final connectUIObject()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    const v1, 0x7f0a0d6f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadBg:Landroid/view/View;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    const v1, 0x7f0a0271

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mCenterText:Landroid/view/View;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    const v1, 0x7f0a0d70

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadLine:Landroid/view/View;

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final fadeInAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mTouchPadBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->startFadeInAnimation(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mCenterText:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->startFadeInAnimation(Landroid/view/View;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/controlpanel/activity/TouchPad$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/TouchPad;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getPixel(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final setAppendLayoutParams()V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayY(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flex_mode_scroll_wheel_pos"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v3

    iget-boolean v5, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->mIsMediaPanel:Z

    const/16 v6, 0x53

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    if-eqz v3, :cond_3

    const v3, 0x7f0700b5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    int-to-double v9, v1

    const-wide v11, 0x403e666666666666L    # 30.4

    mul-double/2addr v9, v11

    div-double/2addr v9, v7

    double-to-int v1, v9

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    int-to-double v9, v1

    const-wide v11, 0x40428ccccccccccdL    # 37.1

    mul-double/2addr v11, v9

    div-double/2addr v11, v7

    double-to-int v11, v11

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/2addr v1, v4

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v3

    sub-int/2addr v1, v3

    const-wide v11, 0x40328ccccccccccdL    # 18.55

    mul-double/2addr v9, v11

    div-double/2addr v9, v7

    double-to-int v3, v9

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/2addr v9, v4

    sub-int/2addr v1, v9

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    const v3, 0x7f071744

    const v5, 0x7f071755

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide v9, 0x401b0a3d70a3d70aL    # 6.76

    const v1, 0x7f0700b2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v1

    int-to-double v4, v0

    mul-double/2addr v4, v9

    div-double/2addr v4, v7

    double-to-int v4, v4

    add-int/2addr v1, v4

    const v4, 0x7f071745

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v2, v0, v2

    const v4, 0x7f070ed1

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v1

    int-to-double v11, v0

    mul-double/2addr v11, v9

    div-double/2addr v11, v7

    double-to-int v4, v11

    add-int/2addr v1, v4

    const v4, 0x7f071746

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v5}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v5}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_4

    const v5, 0x7f071758

    invoke-virtual {p0, v5}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v5

    goto :goto_2

    :cond_4
    const v5, 0x7f071740

    invoke-virtual {p0, v5}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v5

    :goto_2
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    if-ne v2, v4, :cond_5

    const/16 v6, 0x55

    :cond_5
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x7f071757

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v2

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, v0, v3

    int-to-double v5, v0

    const-wide v9, 0x4016333333333333L    # 5.55

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    double-to-int v0, v5

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    int-to-double v5, v0

    const-wide v9, 0x405639999999999aL    # 88.9

    mul-double/2addr v5, v9

    div-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x51

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    div-int/2addr v1, v4

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v2

    const v2, 0x7f071756

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/TouchPad;->getPixel(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "FlexPanelTouchPad"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final startFadeInAnimation(Landroid/view/View;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v0, 0x7f0101a1

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
