.class public Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;
.super Landroid/widget/ImageButton;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;


# static fields
.field public static final TASK_FOCUSED_STATE:[I


# instance fields
.field public final mHasIconBackground:Z

.field public final mIconBackgroundPaint:Landroid/graphics/Paint;

.field public final mIconSize:I

.field public mIsDex:Z

.field public mIsRtlLayout:Z

.field public mIsTaskFocused:Z

.field public mShowIconBackground:Z

.field public mTopFrameInset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f04065e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->TASK_FOCUSED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIconBackgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/wm/shell/R$styleable;->WindowMenuItemView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mHasIconBackground:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->updateRippleBackground()V

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070fa4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIconSize:I

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p0, 0x7f060644

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onCreateDrawableState(I)[I
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIsTaskFocused:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->TASK_FOCUSED_STATE:[I

    invoke-static {p0, p1}, Landroid/widget/ImageButton;->mergeDrawableStates([I[I)[I

    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mHasIconBackground:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIsRtlLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIconSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/2addr v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIconSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIconSize:I

    sub-int/2addr v0, v2

    iget v3, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mTopFrameInset:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v1

    int-to-float v5, v0

    add-int/2addr v1, v2

    int-to-float v6, v1

    add-int/2addr v2, v0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIconBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIsDex:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTaskFocusState(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIsTaskFocused:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIsTaskFocused:Z

    invoke-virtual {p0}, Landroid/widget/ImageButton;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public final updateRippleBackground()V
    .locals 7

    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    const v1, 0x7f08101a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f070f7d

    goto :goto_0

    :cond_1
    const v2, 0x7f070f77

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f070f81

    goto :goto_1

    :cond_2
    const v3, 0x7f070f7c

    :goto_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f070f80

    goto :goto_2

    :cond_3
    const v4, 0x7f070f7b

    :goto_2
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingTop()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mTopFrameInset:I

    iget-object v1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mIsRtlLayout:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    move-result v1

    if-le v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v1, v2

    add-int v3, v1, v6

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mTopFrameInset:I

    sub-int v4, v6, v1

    const/4 v2, 0x0

    move-object v1, v0

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v1

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mTopFrameInset:I

    sub-int v4, v6, v1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v1

    sub-int/2addr v1, v2

    add-int v5, v1, v6

    const/4 v2, 0x0

    move-object v1, v0

    move v3, v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mTopFrameInset:I

    sub-int v4, v6, v1

    const/4 v2, 0x0

    move-object v1, v0

    move v3, v6

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v1

    if-le v1, v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingStart()I

    move-result v1

    sub-int/2addr v1, v2

    add-int v3, v1, v6

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mTopFrameInset:I

    sub-int v4, v6, v1

    const/4 v2, 0x0

    move-object v1, v0

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    move-result v1

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mTopFrameInset:I

    sub-int v4, v6, v1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v1, v2

    add-int v5, v1, v6

    const/4 v2, 0x0

    move-object v1, v0

    move v3, v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    goto :goto_4

    :cond_9
    iget v1, p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mTopFrameInset:I

    sub-int v4, v6, v1

    const/4 v2, 0x0

    move-object v1, v0

    move v3, v6

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    :goto_4
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    const v1, 0x7f020036

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method
