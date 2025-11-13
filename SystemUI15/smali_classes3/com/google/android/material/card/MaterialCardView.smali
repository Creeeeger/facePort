.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# static fields
.field public static final CHECKABLE_STATE_SET:[I

.field public static final CHECKED_STATE_SET:[I


# instance fields
.field public final cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

.field public checked:Z

.field public final isParentCardViewDoneInitializing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->CHECKABLE_STATE_SET:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040438

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const v0, 0x7f140861

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/card/MaterialCardView;->isParentCardViewDoneInitializing:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/google/android/material/R$styleable;->MaterialCardView:[I

    const v6, 0x7f140861

    new-array v7, p1, [I

    move-object v3, p2

    move v5, p3

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    sget-object p2, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewApi21Impl;

    iget-object p3, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    check-cast p3, Landroidx/cardview/widget/RoundRectDrawable;

    iget-object p3, p3, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    iget-object v0, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget p3, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->userContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, p3, v4, v5, p0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    iget-object p0, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v4, 0xb

    invoke-static {p3, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_0

    const/4 p3, -0x1

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 p3, 0xc

    invoke-virtual {v2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    invoke-virtual {v2, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v4, 0x6

    invoke-static {p3, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v4, 0x2

    invoke-static {p3, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean p3, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    invoke-virtual {v3, p3, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setChecked(ZZ)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    iput-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p3, :cond_2

    const v4, 0x7f0a0794

    iget-object v5, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_2
    const/4 p3, 0x5

    invoke-virtual {v2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    const/4 p3, 0x4

    invoke-virtual {v2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    const/4 p3, 0x3

    const v4, 0x800035

    invoke-virtual {v2, p3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconGravity:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v4, 0x7

    invoke-static {p3, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_3

    const p3, 0x7f04013e

    invoke-static {p0, p3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v2, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iget-object v1, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->foregroundContentDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-nez p3, :cond_4

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :cond_4
    invoke-virtual {v1, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iget-object p3, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-object p1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    iget p1, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeWidth:I

    int-to-float p1, p1

    iget-object p2, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->strokeColor:Landroid/content/res/ColorStateList;

    iget-object p3, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iput p1, p3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeWidth:F

    invoke-virtual {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    iget-object p1, v1, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object p3, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    if-eq p3, p2, :cond_6

    iput-object p2, p1, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    :cond_6
    invoke-virtual {v3, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/card/MaterialCardViewHelper$1;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldUseClickableForeground()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v3}, Lcom/google/android/material/card/MaterialCardViewHelper;->getClickableForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_7
    iput-object v1, v3, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/card/MaterialCardViewHelper$1;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateClickable()V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    iget-object v0, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/material/card/MaterialCardView;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 17

    const/16 v0, 0x50

    invoke-super/range {p0 .. p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v4, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_8

    iget-object v4, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    iget-boolean v5, v4, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/cardview/widget/CardView;->IMPL:Landroidx/cardview/widget/CardViewApi21Impl;

    iget-object v6, v4, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroidx/cardview/widget/RoundRectDrawable;

    iget v6, v6, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    iget-object v9, v4, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v9, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroidx/cardview/widget/RoundRectDrawable;

    iget v5, v5, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardViewHelper;->calculateActualCornerPadding()F

    move-result v8

    :cond_1
    add-float/2addr v5, v8

    mul-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    iget v7, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconGravity:I

    const v8, 0x800005

    and-int v9, v7, v8

    if-ne v9, v8, :cond_3

    iget v9, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    sub-int v9, v3, v9

    iget v10, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v5

    goto :goto_2

    :cond_3
    iget v9, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    :goto_2
    and-int/lit8 v10, v7, 0x50

    if-ne v10, v0, :cond_4

    iget v10, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    :goto_3
    move/from16 v16, v10

    goto :goto_4

    :cond_4
    iget v10, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    sub-int v10, v1, v10

    iget v11, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v6

    goto :goto_3

    :goto_4
    and-int v10, v7, v8

    if-ne v10, v8, :cond_5

    iget v3, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    goto :goto_5

    :cond_5
    iget v8, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    sub-int/2addr v3, v8

    iget v8, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    sub-int/2addr v3, v8

    sub-int/2addr v3, v5

    :goto_5
    and-int/lit8 v5, v7, 0x50

    if-ne v5, v0, :cond_6

    iget v0, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    sub-int/2addr v1, v0

    iget v0, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconSize:I

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    move v14, v1

    goto :goto_6

    :cond_6
    iget v0, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->checkedIconMargin:I

    move v14, v0

    :goto_6
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    move v13, v3

    move v15, v9

    goto :goto_7

    :cond_7
    move v15, v3

    move v13, v9

    :goto_7
    iget-object v11, v2, Lcom/google/android/material/card/MaterialCardViewHelper;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v12, 0x2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_8
    return-void
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->isParentCardViewDoneInitializing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    iget-boolean v0, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    if-nez v0, :cond_0

    const-string v0, "MaterialCardView"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    :cond_0
    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateClickable()V

    :cond_0
    return-void
.end method

.method public final setRadius(F)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(F)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(F)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(F)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(F)V

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->materialCardView:Lcom/google/android/material/card/MaterialCardView;

    if-nez p1, :cond_0

    iget-boolean p1, v1, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->isRoundRect()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->updateContentPadding()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardViewHelper;->shouldAddCornerPaddingOutsideCardBackground()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->isBackgroundOverwritten:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/card/MaterialCardViewHelper$1;

    move-result-object p1

    invoke-super {v1, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardViewHelper;->fgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->insetDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/card/MaterialCardViewHelper$1;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    iget-object v1, v1, Lcom/google/android/material/card/MaterialCardViewHelper;->bgDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public final toggle()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->checkable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    iget-object v2, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Lcom/google/android/material/card/MaterialCardViewHelper;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->cardViewHelper:Lcom/google/android/material/card/MaterialCardViewHelper;

    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->checked:Z

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/card/MaterialCardViewHelper;->setChecked(ZZ)V

    :cond_1
    return-void
.end method
