.class Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;
.super Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemImageOverflowMenuButton"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    sget-object v0, Lcom/android/internal/R$styleable;->ImageView:[I

    const/4 v1, 0x0

    const v2, 0x10102f6

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmTooltipText(Landroid/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private blacklist checkNaviBarForLandscape()Z
    .locals 10

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v5

    const v6, 0x10502c9

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v6

    iget v9, v3, Landroid/graphics/Point;->x:I

    if-lt v8, v9, :cond_0

    iget v8, v3, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v8}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setNavigationBarHeight(I)V

    return v7

    :cond_0
    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    iget v8, v2, Landroid/graphics/Rect;->left:I

    if-gt v8, v6, :cond_1

    iget v8, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v8}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setNavigationBarHeight(I)V

    return v7

    :cond_1
    const/4 v7, 0x0

    return v7
.end method

.method private blacklist getNavigationBarHeight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmNavigationBarHeight(Landroid/widget/ActionMenuPresenter;)I

    move-result v0

    return v0
.end method

.method private blacklist setNavigationBarHeight(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0, p1}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmNavigationBarHeight(Landroid/widget/ActionMenuPresenter;I)V

    return-void
.end method


# virtual methods
.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fgetmTooltipText(Landroid/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipOffset()V

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const/4 v2, 0x0

    const v3, 0x10102f6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x25

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setMinimumHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public whitelist performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getTooltip()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipNull(Z)V

    :cond_1
    return v1
.end method

.method public whitelist performLongClick()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipOffset()V

    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->performLongClick()Z

    move-result v0

    return v0
.end method

.method protected whitelist setFrame(IIII)Z
    .locals 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->setFrame(IIII)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v5, 0x2

    const/4 v7, 0x0

    add-int v8, v6, v3

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return v0
.end method

.method blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected blacklist setTooltipOffset()V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingStart()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getPaddingEnd()I

    move-result v8

    new-array v9, v3, [I

    invoke-virtual {v0, v9}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLocationInWindow([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v10}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string/jumbo v11, "window"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v11, v12}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v13, 0x0

    iget-object v14, v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v14}, Landroid/widget/ActionMenuPresenter;->access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v14

    if-eqz v14, :cond_0

    iget-object v14, v0, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v14}, Landroid/widget/ActionMenuPresenter;->access$600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    instance-of v15, v14, Landroid/widget/Toolbar;

    const/16 v16, 0x0

    if-eqz v15, :cond_1

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v15

    iget v3, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v18, v1

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    if-ge v15, v3, :cond_2

    aget v1, v4, v16

    aget v3, v9, v16

    sub-int/2addr v1, v3

    iget v3, v10, Landroid/graphics/Rect;->left:I

    sub-int v13, v1, v3

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_4

    iget v3, v10, Landroid/graphics/Rect;->right:I

    iget v15, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v15

    aget v15, v9, v16

    add-int/2addr v15, v5

    sub-int/2addr v3, v15

    sub-int v15, v5, v7

    sub-int/2addr v15, v8

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v3, v15

    sub-int/2addr v3, v13

    invoke-direct/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->checkNaviBarForLandscape()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->getNavigationBarHeight()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v19, v4

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v20, v2

    iget v2, v12, Landroid/util/DisplayMetrics;->density:F

    div-float v16, v15, v4

    move/from16 v17, v4

    mul-float v4, v16, v2

    float-to-int v4, v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v19, v4

    goto :goto_2

    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v19, v4

    aget v2, v9, v16

    add-int/2addr v2, v7

    sub-int v3, v8, v7

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v3, v2

    :goto_2
    invoke-virtual {v0, v3, v1}, Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;->setTooltipPosition(II)V

    return-void
.end method
