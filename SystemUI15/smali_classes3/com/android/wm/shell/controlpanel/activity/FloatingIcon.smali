.class public final Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;
.super Lcom/android/wm/shell/controlpanel/activity/FloatingUI;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentPositionX:I

.field public mCurrentPositionY:I

.field public final mDisplayX:I

.field public final mDisplayY:I

.field public final mExpandState:Z

.field public mFloatingButton:Landroid/view/View;

.field public final mFloatingButtonTouchListener:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda1;

.field public mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

.field public mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

.field public mIconArea:Landroid/view/View;

.field public final mIconDisplayableBound:Landroid/graphics/Rect;

.field public mIconSize:I

.field public mIsMoving:Z

.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconDisplayableBound:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mTouchSlop:I

    iput-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIsMoving:Z

    new-instance p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;)V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingButtonTouchListener:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;-><init>(Landroid/content/Context;)V

    const-string v0, "flex_panel_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mExpandState:Z

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_FLOATING_ICON_MOVABLE:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    add-int/lit8 p1, p1, 0x14

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mTouchSlop:I

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mDisplayX:I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayY(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mDisplayY:I

    return-void
.end method


# virtual methods
.method public final addView()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->addView()V

    return-void

    :cond_0
    const-string v0, "ControlPanelService"

    const-string v1, "addView "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->fadeInAnimation()V

    return-void
.end method

.method public final connectUIObject()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mExpandState:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d0104

    goto :goto_0

    :cond_0
    const v1, 0x7f0d0103

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0102

    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_FLOATING_ICON_MOVABLE:Z

    const/4 v3, 0x0

    const v4, 0x7f0a0506

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    invoke-virtual {v5, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v5, v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mInsetsComputer:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconArea:Landroid/view/View;

    const v3, 0x7f0a0518

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    const v3, 0x7f0a0460

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_5

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;I)V

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->updateIconDisplayableBound()V

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_3
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingButtonTouchListener:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingButton:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const/4 v1, 0x1

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "floating_icon_position_x"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "floating_icon_position_y"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    iget v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    invoke-virtual {p0, v3, v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->setIconPosition(II)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->setTouchableRegion()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->forceHasOverlappingRendering(Z)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final fadeInAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0101a3

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public final fadeOutAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0101a4

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getPixelSize(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final onMovingEnd()Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIsMoving:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v7, v0

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    invoke-virtual {p0, v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->setIconPosition(II)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v5, v0

    if-ne v6, v4, :cond_1

    if-ne v7, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;IIII)V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0009

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->setTouchableRegion()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->mIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "floating_icon_position_x"

    iget v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "floating_icon_position_y"

    iget v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIsMoving:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final removeView()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    :cond_0
    invoke-super {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->removeView()V

    return-void
.end method

.method public final setAppendLayoutParams()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mExpandState:Z

    if-eqz v0, :cond_0

    const v2, 0x7f0703cc

    goto :goto_0

    :cond_0
    const v2, 0x7f0703cd

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconSize:I

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_FLOATING_ICON_MOVABLE:Z

    const v4, 0x7f0703c7

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mDisplayX:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mDisplayY:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0xa2e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x7f0703c8

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconSize:I

    const v3, 0x7f0703c6

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0xa2d

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x53

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "navigation_bar_gesture_hint"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "task_bar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "FlexPanelFloatingIcon"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setIconPosition(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconDisplayableBound:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconSize:I

    add-int v2, p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v2, v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconDisplayableBound:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ge p2, v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconSize:I

    add-int v1, p2, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, p1, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionX:I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mCurrentPositionY:I

    return-void
.end method

.method public final setTouchableRegion()V
    .locals 6

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    return-void
.end method

.method public final updateIconDisplayableBound()V
    .locals 6

    const v0, 0x7f0703cb

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isTypeFold()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0703ca

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0703c9

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mDisplayY:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconDisplayableBound:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mDisplayX:I

    sub-int/2addr v5, v0

    invoke-direct {v4, v0, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIconDisplayableBound : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconDisplayableBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FloatingIcon"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
