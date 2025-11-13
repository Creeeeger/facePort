.class public final Lcom/android/wm/shell/bubbles/ManageEducationView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public bubbleExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

.field public final gotItButton$delegate:Lkotlin/Lazy;

.field public isHiding:Z

.field public final manageButton$delegate:Lkotlin/Lazy;

.field public final manageView$delegate:Lkotlin/Lazy;

.field public final positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final realManageButtonRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/bubbles/ManageEducationView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/ManageEducationView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    new-instance p2, Lcom/android/wm/shell/bubbles/ManageEducationView$manageView$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$manageView$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/wm/shell/bubbles/ManageEducationView$manageButton$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$manageButton$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageButton$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/wm/shell/bubbles/ManageEducationView$gotItButton$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$gotItButton$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->gotItButton$delegate:Lkotlin/Lazy;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d007b

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07015f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setLayoutDirection(I)V

    return-void
.end method


# virtual methods
.method public final getManageButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageButton$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method public final hide()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->bubbleExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/taskview/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->isHiding:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$1;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/ManageEducationView$hide$2;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->setLayoutDirection(I)V

    return-void
.end method

.method public final setLayoutDirection(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const p1, 0x7f0806db

    goto :goto_1

    :cond_1
    const p1, 0x7f0806dc

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public final show(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Z)V
    .locals 9

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x1120026

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageButton()Landroid/widget/Button;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x1060028

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/ManageEducationView;->getManageButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->gotItButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->bubbleExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, v0, Lcom/android/wm/shell/taskview/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->realManageButtonRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mManageButton:Lcom/android/wm/shell/common/AlphaOptimizedButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v5, v5, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070197

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    const v7, 0x7f0806db

    goto :goto_2

    :cond_4
    const v7, 0x7f0806dc

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    if-eqz p2, :cond_5

    const/4 v6, 0x3

    goto :goto_3

    :cond_5
    const/4 v6, 0x5

    :goto_3
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v3, :cond_6

    if-nez p2, :cond_6

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v7, v7, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    sub-int/2addr v7, v8

    goto :goto_4

    :cond_6
    if-nez v3, :cond_7

    if-eqz p2, :cond_7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    goto :goto_4

    :cond_7
    iget-object v7, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v7, v7, Lcom/android/wm/shell/bubbles/BubblePositioner;->mDeviceConfig:Lcom/android/wm/shell/bubbles/DeviceConfig;

    iget-boolean v8, v7, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLargeScreen:Z

    if-eqz v8, :cond_8

    const/4 v7, -0x2

    goto :goto_4

    :cond_8
    iget-boolean v7, v7, Lcom/android/wm/shell/bubbles/DeviceConfig;->isLandscape:Z

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07019a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_4

    :cond_9
    const/4 v7, -0x1

    :goto_4
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070196

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-eqz p2, :cond_a

    move v8, v1

    goto :goto_5

    :cond_a
    move v8, v7

    :goto_5
    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz p2, :cond_b

    goto :goto_6

    :cond_b
    move v7, v1

    :goto_6
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->manageView$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    if-eqz p2, :cond_c

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    goto :goto_7

    :cond_c
    move v7, v5

    :goto_7
    if-nez v3, :cond_d

    if-nez p2, :cond_d

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/ManageEducationView;->positioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mScreenRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v0

    sub-int v5, p2, v2

    :cond_d
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    invoke-virtual {v6, v7, p2, v5, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    new-instance p2, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/bubbles/ManageEducationView$show$1;-><init>(Lcom/android/wm/shell/bubbles/ManageEducationView;Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "HasSeenBubblesManageOnboarding"

    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
