.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$HandleView$CursorView;
    }
.end annotation


# static fields
.field private static final blacklist CURSOR_MAGNIFYING_FACTOR:F = 1.3f

.field private static final greylist-max-o HISTORY_SIZE:I = 0x5

.field private static final blacklist MAGNIFYING_FACTOR:F = 1.5f

.field private static final greylist-max-o TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final greylist-max-o TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private blacklist CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist CURSOR_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContainer:Landroid/widget/PopupWindow;

.field private blacklist mContentsViewOffset:I

.field private blacklist mCurrentDragInitialTouchRawX:F

.field protected blacklist mCursor:Landroid/graphics/drawable/Drawable;

.field private blacklist mCursorContainer:Landroid/widget/PopupWindow;

.field protected blacklist mCursorHeight:I

.field blacklist mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

.field protected blacklist mCursorView:Landroid/widget/Editor$HandleView$CursorView;

.field protected blacklist mCursorWidth:I

.field protected greylist-max-o mDrawable:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected greylist-max-o mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected blacklist mFirstParentY:I

.field private blacklist mHideAnimator:Landroid/animation/ObjectAnimator;

.field protected greylist-max-o mHorizontalGravity:I

.field protected blacklist mHorizontalOffset:F

.field protected greylist-max-o mHotspotX:I

.field private final blacklist mIdealFingerToCursorOffset:I

.field private final greylist-max-o mIdealVerticalOffset:F

.field private greylist-max-o mIsDragging:Z

.field private blacklist mIsHideAnimating:Z

.field private blacklist mIsRestoring:Z

.field private blacklist mIsShowAnimating:Z

.field private blacklist mIsSwitching:Z

.field protected blacklist mIsVerticalScrolled:Z

.field protected greylist-max-o mLastParentX:I

.field protected greylist-max-o mLastParentXOnScreen:I

.field protected greylist-max-o mLastParentY:I

.field protected greylist-max-o mLastParentYOnScreen:I

.field protected blacklist mMaxCursorHeight:I

.field private greylist-max-o mMinSize:I

.field private greylist-max-o mNumberPreviousOffsets:I

.field private final blacklist mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private greylist-max-o mPositionHasChanged:Z

.field private greylist-max-o mPositionX:I

.field private greylist-max-o mPositionY:I

.field protected greylist-max-o mPrevLine:I

.field protected greylist-max-o mPreviousLineTouched:I

.field protected greylist-max-o mPreviousOffset:I

.field private greylist-max-o mPreviousOffsetIndex:I

.field private final greylist-max-o mPreviousOffsets:[I

.field private final greylist-max-o mPreviousOffsetsTimes:[J

.field private blacklist mShowAnimator:Landroid/animation/ObjectAnimator;

.field private blacklist mTextViewScaleX:F

.field private blacklist mTextViewScaleY:F

.field protected greylist-max-o mTouchOffsetY:F

.field protected greylist-max-o mTouchToWindowOffsetX:F

.field protected greylist-max-o mTouchToWindowOffsetY:F

.field protected blacklist mUpperLimit:I

.field protected blacklist mVerticalOffset:F

.field protected blacklist mVerticalScrolledYOffset:I

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorContainer(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHideAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHideAnimating(Landroid/widget/Editor$HandleView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsShowAnimating(Landroid/widget/Editor$HandleView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositionX(Landroid/widget/Editor$HandleView;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositionY(Landroid/widget/Editor$HandleView;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowAnimator(Landroid/widget/Editor$HandleView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHideAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsHideAnimating(Landroid/widget/Editor$HandleView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRestoring(Landroid/widget/Editor$HandleView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsShowAnimating(Landroid/widget/Editor$HandleView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowAnimator(Landroid/widget/Editor$HandleView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDrawableBounds(Landroid/widget/Editor$HandleView;II)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldShow(Landroid/widget/Editor$HandleView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 17
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

    .line 5761
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 5762
    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5699
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 5701
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5705
    iput v2, v0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 5709
    iput v2, v0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 5712
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    .line 5733
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/Editor$HandleView;->mCursorHeight:I

    .line 5734
    iput v4, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    .line 5735
    iput v4, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    .line 5736
    iput v4, v0, Landroid/widget/Editor$HandleView;->mUpperLimit:I

    .line 5737
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    .line 5738
    iput-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    .line 5739
    iput-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    .line 5936
    const/4 v6, 0x5

    new-array v7, v6, [J

    iput-object v7, v0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 5937
    new-array v6, v6, [I

    iput-object v6, v0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 5938
    iput v4, v0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5939
    iput v4, v0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 6714
    iput-boolean v4, v0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    .line 6716
    new-instance v6, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v6, v0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v6, v0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 7004
    new-instance v6, Landroid/widget/Editor$HandleView$8;

    invoke-direct {v6, v0}, Landroid/widget/Editor$HandleView$8;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v6, v0, Landroid/widget/Editor$HandleView;->CURSOR_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 7024
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e2e147b    # 0.17f

    const v8, 0x3ecccccd    # 0.4f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, v0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 5763
    move/from16 v6, p4

    invoke-virtual {v0, v6}, Landroid/widget/Editor$HandleView;->setId(I)V

    .line 5765
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5767
    .local v7, "contentHolder":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/PopupWindow;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10102c8

    invoke-direct {v8, v9, v5, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 5769
    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 5770
    invoke-virtual {v8, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 5771
    const/16 v9, 0x3ea

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 5778
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5779
    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5783
    instance-of v11, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v11, :cond_2

    .line 5784
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 5785
    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 5786
    .local v11, "drawableForCursor":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_0

    .line 5787
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 5788
    .local v12, "rectF":Landroid/graphics/RectF;
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 5789
    .local v13, "highlightPath":Landroid/graphics/Path;
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 5790
    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v14, v15, v13, v2}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 5791
    invoke-virtual {v13, v12, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5792
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 5793
    .local v2, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 5794
    iget v14, v12, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    iget v15, v12, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    iget v9, v12, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v4, v12, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v11, v14, v15, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5796
    .end local v2    # "drawable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v12    # "rectF":Landroid/graphics/RectF;
    .end local v13    # "highlightPath":Landroid/graphics/Path;
    :cond_0
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    .line 5797
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/widget/Editor$HandleView;->mCursorHeight:I

    .line 5798
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    .line 5800
    if-nez v2, :cond_1

    .line 5801
    iput v3, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    .line 5804
    :cond_1
    iget v2, v0, Landroid/widget/Editor$HandleView;->mCursorHeight:I

    int-to-float v2, v2

    const v4, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    .line 5805
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v5, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    .line 5807
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5808
    iget-object v2, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 5809
    iget-object v2, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    const/16 v4, 0x3ea

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 5811
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5812
    .local v2, "cursorHolder":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5813
    new-instance v4, Landroid/widget/Editor$HandleView$CursorView;

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/widget/Editor$HandleView$CursorView;-><init>(Landroid/widget/Editor$HandleView;Landroid/content/Context;)V

    iput-object v4, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    .line 5814
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5815
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 5816
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setDecorViewBGNull(Z)V

    .line 5817
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/Editor$HandleView$CursorView;->setVisibility(I)V

    .line 5821
    .end local v2    # "cursorHolder":Landroid/widget/LinearLayout;
    .end local v11    # "drawableForCursor":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v2, v4}, Landroid/widget/Editor$HandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5823
    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x10504e1

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 5827
    instance-of v5, v0, Landroid/widget/Editor$InsertionHandleView;

    const/high16 v9, 0x3fc00000    # 1.5f

    if-eqz v5, :cond_3

    .line 5828
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    iget-object v10, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5829
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    iget v10, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5834
    :cond_3
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v5, v10

    invoke-virtual {v8, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 5835
    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    invoke-virtual {v8, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 5838
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v5

    .line 5839
    .local v5, "handleHeight":I
    const v8, -0x41666666    # -0.3f

    int-to-float v9, v5

    mul-float/2addr v9, v8

    iput v9, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 5840
    const-string/jumbo v8, "widget__finger_to_cursor_distance"

    const/4 v9, -0x1

    invoke-static {v8, v9}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v8

    .line 5843
    .local v8, "distance":I
    if-ltz v8, :cond_5

    const/16 v9, 0x64

    if-le v8, v9, :cond_4

    goto :goto_0

    .line 5847
    :cond_4
    int-to-float v9, v8

    invoke-static/range {p1 .. p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    .line 5849
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 5847
    invoke-static {v3, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    .line 5850
    int-to-float v3, v3

    iget v9, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v3, v9

    iput v3, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_1

    .line 5844
    :cond_5
    :goto_0
    const v3, 0x3f333333    # 0.7f

    int-to-float v9, v5

    mul-float/2addr v9, v3

    iput v9, v0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 5845
    iget v3, v0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    sub-float/2addr v9, v3

    float-to-int v3, v9

    iput v3, v0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    .line 5852
    :goto_1
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private greylist-max-o addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .line 5947
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5948
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aput p1, v1, v0

    .line 5949
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 5950
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5951
    return-void
.end method

.method private blacklist checkForTransforms()Z
    .locals 7

    .line 6283
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifierIsShowing(Landroid/widget/Editor$MagnifierMotionAnimator;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6285
    return v1

    .line 6288
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotation()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 6289
    invoke-virtual {v0}, Landroid/widget/TextView;->getRotationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_3

    .line 6292
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    .line 6293
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    .line 6295
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6296
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_5

    .line 6297
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 6298
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 6299
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getRotationX()F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_3

    .line 6300
    invoke-virtual {v4}, Landroid/view/View;->getRotationY()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    goto :goto_1

    .line 6303
    :cond_2
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    .line 6304
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    goto :goto_2

    .line 6301
    :cond_3
    :goto_1
    return v3

    .line 6306
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    :goto_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 6308
    :cond_5
    return v1

    .line 6290
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_6
    :goto_3
    return v3
.end method

.method private greylist-max-o filterOnTouchUp(Z)V
    .locals 10
    .param p1, "fromTouchScreen"    # Z

    .line 5954
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5955
    .local v0, "now":J
    const/4 v2, 0x0

    .line 5956
    .local v2, "i":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 5957
    .local v3, "index":I
    iget v4, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5958
    .local v4, "iMax":I
    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v6, v3

    sub-long v6, v0, v6

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 5959
    add-int/lit8 v2, v2, 0x1

    .line 5960
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v6, v2

    add-int/2addr v6, v5

    rem-int/lit8 v3, v6, 0x5

    goto :goto_0

    .line 5963
    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v4, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v3

    sub-long v5, v0, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 5965
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 5967
    :cond_1
    return-void
.end method

.method private blacklist getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "targetRect"    # Landroid/graphics/Rect;

    .line 6758
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "bounds"

    invoke-static {v0, v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 6761
    .local v0, "changeSizeAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6768
    new-instance v1, Landroid/widget/Editor$HandleView$3;

    invoke-direct {v1, p0, p2}, Landroid/widget/Editor$HandleView$3;-><init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6782
    return-object v0
.end method

.method private blacklist getCursorSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "startRect"    # Landroid/graphics/Rect;
    .param p2, "targetRect"    # Landroid/graphics/Rect;
    .param p3, "isHideAnim"    # Z

    .line 6968
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->CURSOR_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "bounds"

    invoke-static {v0, v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 6971
    .local v0, "cursorSizeAnimator":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/widget/Editor$HandleView$6;

    invoke-direct {v1, p0}, Landroid/widget/Editor$HandleView$6;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6978
    new-instance v1, Landroid/widget/Editor$HandleView$7;

    invoke-direct {v1, p0, p2, p3}, Landroid/widget/Editor$HandleView$7;-><init>(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7001
    return-object v0
.end method

.method private blacklist getDrawableBounds(II)Landroid/graphics/Rect;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 6734
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    sub-int/2addr v0, v1

    .line 6735
    .local v0, "left":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-eqz v2, :cond_1

    .line 6736
    :cond_0
    add-int/2addr v0, v1

    .line 6738
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v1

    .line 6739
    .local v1, "hotspot":I
    const/4 v2, 0x0

    .line 6741
    .local v2, "offset":I
    iget v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 6749
    :pswitch_1
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v2, v4, 0x4

    goto :goto_1

    .line 6743
    :pswitch_2
    div-int/lit8 v2, p1, 0x4

    .line 6744
    goto :goto_1

    .line 6746
    :pswitch_3
    div-int/lit8 v2, p1, 0x2

    .line 6747
    nop

    .line 6752
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v2, v1

    sub-int v5, v0, v5

    sub-int v6, v2, v1

    sub-int v6, v0, v6

    add-int/2addr v6, p1

    invoke-direct {v4, v5, v3, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getHideAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    .line 7108
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7109
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 7110
    .local v1, "startWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 7112
    .local v2, "startHeight":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 7113
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 7112
    const-string v6, "bounds"

    invoke-static {v3, v6, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 7117
    .local v3, "hideAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/widget/Editor$HandleView$11;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$11;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7127
    new-instance v4, Landroid/widget/Editor$HandleView$12;

    invoke-direct {v4, p0}, Landroid/widget/Editor$HandleView$12;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7166
    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7167
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7169
    return-object v3
.end method

.method private greylist-max-o getOtherSelectionHandle()Landroid/widget/Editor$HandleView;
    .locals 2

    .line 6439
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    .line 6440
    .local v0, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 6443
    :cond_0
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 6444
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    goto :goto_0

    .line 6445
    :cond_1
    invoke-static {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->-$$Nest$fgetmEndHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;

    move-result-object v1

    .line 6443
    :goto_0
    return-object v1

    .line 6441
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getRestorePositionAnimator()Landroid/animation/ValueAnimator;
    .locals 11

    .line 6907
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 6908
    .local v1, "startCoords":[I
    new-array v2, v0, [I

    .line 6910
    .local v2, "targetCoords":[I
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 6911
    .local v5, "layout":Landroid/text/Layout;
    if-nez v5, :cond_0

    .line 6912
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6913
    const/4 v0, 0x0

    return-object v0

    .line 6916
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v5

    .line 6917
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v6

    .line 6918
    .local v6, "offset":I
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 6920
    .local v7, "line":I
    invoke-virtual {p0, v5, v6}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v8, v9

    .line 6921
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    .line 6922
    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v2, v3

    .line 6923
    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    .line 6924
    invoke-virtual {v9}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v2, v4

    .line 6926
    aget v8, v1, v3

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    aput v8, v1, v3

    .line 6927
    aget v8, v2, v3

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    aput v8, v2, v3

    .line 6929
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 6930
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 6932
    aget v8, v1, v3

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v1, v3

    .line 6933
    aget v8, v2, v3

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    aput v8, v2, v3

    .line 6935
    new-array v8, v0, [Landroid/animation/PropertyValuesHolder;

    .line 6936
    .local v8, "valuesHolders":[Landroid/animation/PropertyValuesHolder;
    new-array v9, v0, [I

    aget v10, v1, v3

    aput v10, v9, v3

    aget v10, v2, v3

    aput v10, v9, v4

    const-string/jumbo v10, "x"

    invoke-static {v10, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v8, v3

    .line 6937
    new-array v0, v0, [I

    aget v9, v1, v4

    aput v9, v0, v3

    aget v3, v2, v4

    aput v3, v0, v4

    const-string/jumbo v3, "y"

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v8, v4

    .line 6939
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 6942
    .local v0, "restorePositionAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6943
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6945
    new-instance v3, Landroid/widget/Editor$HandleView$5;

    invoke-direct {v3, p0}, Landroid/widget/Editor$HandleView$5;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6963
    return-object v0
.end method

.method private blacklist getRestoreSizeAnimator()Landroid/animation/ObjectAnimator;
    .locals 8

    .line 6888
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6889
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 6890
    .local v1, "drawableStartWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 6891
    .local v2, "drawableStartHeight":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 6892
    .local v3, "drawableTargetWidth":I
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 6894
    .local v4, "drawableTargetHeight":I
    nop

    .line 6895
    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    .line 6896
    invoke-direct {p0, v3, v4}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    .line 6894
    invoke-direct {p0, v5, v6}, Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 6898
    .local v5, "restoreSizeAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6899
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6901
    return-object v5
.end method

.method private blacklist getShowAnimator()Landroid/animation/ObjectAnimator;
    .locals 9

    .line 7032
    const/4 v0, 0x0

    .line 7033
    .local v0, "startWidth":I
    const/4 v1, 0x0

    .line 7035
    .local v1, "startHeight":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 7036
    .local v2, "targetWidth":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 7039
    .local v3, "targetHeight":I
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->CHANGE_SIZE_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 7040
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 7041
    invoke-direct {p0, v2, v3}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 7039
    const-string v7, "bounds"

    invoke-static {v4, v7, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 7043
    .local v4, "showAnimator":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/widget/Editor$HandleView$9;

    invoke-direct {v5, p0}, Landroid/widget/Editor$HandleView$9;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7053
    new-instance v5, Landroid/widget/Editor$HandleView$10;

    invoke-direct {v5, p0, v2, v3}, Landroid/widget/Editor$HandleView$10;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7100
    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7101
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7103
    return-object v4
.end method

.method private greylist-max-o handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "handle"    # Landroid/widget/Editor$HandleView;
    .param p2, "magnifierRect"    # Landroid/graphics/Rect;

    .line 6426
    iget-object v0, p1, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 6427
    .local v0, "window":Landroid/widget/PopupWindow;
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6428
    const/4 v1, 0x0

    return v1

    .line 6430
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 6431
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 6432
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 6433
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 6434
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6435
    .local v1, "handleRect":Landroid/graphics/Rect;
    invoke-static {v1, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private blacklist isScrollChanged(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6670
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6671
    .local v0, "viewPortRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private blacklist isValid()Z
    .locals 3

    .line 7173
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 7174
    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7178
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 7179
    return v1

    .line 7182
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7183
    return v1

    .line 7186
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 7175
    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist magnifySize()V
    .locals 11

    .line 6787
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 6788
    .local v0, "drawableStartWidth":I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 6789
    .local v1, "drawableStartHeight":I
    int-to-float v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 6790
    .local v2, "drawableTargetWidth":I
    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 6792
    .local v4, "drawableTargetHeight":I
    nop

    .line 6793
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v5

    .line 6794
    invoke-direct {p0, v2, v4}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v6

    .line 6792
    invoke-direct {p0, v5, v6}, Landroid/widget/Editor$HandleView;->getChangeSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 6796
    .local v5, "magnifySizeAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6797
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6798
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 6801
    instance-of v6, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v6, :cond_0

    .line 6802
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 6804
    .local v6, "targetRect":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v3, v7

    div-int/lit8 v3, v3, 0x2

    .line 6805
    .local v3, "center":I
    iget v7, p0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 6806
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 6807
    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 6808
    iget v8, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 6810
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Landroid/widget/Editor$HandleView;->getCursorSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 6812
    .local v7, "cursorSizeAnimator":Landroid/animation/ObjectAnimator;
    const/16 v8, 0xfa

    .line 6813
    .local v8, "duration":I
    int-to-long v9, v8

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6814
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6815
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 6818
    .end local v3    # "center":I
    .end local v6    # "targetRect":Landroid/graphics/Rect;
    .end local v7    # "cursorSizeAnimator":Landroid/animation/ObjectAnimator;
    .end local v8    # "duration":I
    :cond_0
    return-void
.end method

.method private greylist-max-o obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "showPosInView"    # Landroid/graphics/PointF;

    .line 6320
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getMagnifierHandleTrigger()I

    move-result v2

    .line 6323
    .local v2, "trigger":I
    packed-switch v2, :pswitch_data_0

    .line 6337
    const/4 v3, -0x1

    .line 6338
    .local v3, "offset":I
    const/4 v4, -0x1

    .local v4, "otherHandleOffset":I
    goto :goto_0

    .line 6333
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_0
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 6334
    .restart local v3    # "offset":I
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 6335
    .restart local v4    # "otherHandleOffset":I
    goto :goto_0

    .line 6329
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_1
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 6330
    .restart local v3    # "offset":I
    iget-object v4, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 6331
    .restart local v4    # "otherHandleOffset":I
    goto :goto_0

    .line 6325
    .end local v3    # "offset":I
    .end local v4    # "otherHandleOffset":I
    :pswitch_2
    iget-object v3, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 6326
    .restart local v3    # "offset":I
    const/4 v4, -0x1

    .line 6327
    .restart local v4    # "otherHandleOffset":I
    nop

    .line 6342
    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    .line 6343
    return v6

    .line 6346
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    .line 6347
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    goto :goto_1

    .line 6348
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v8, :cond_2

    .line 6349
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    .line 6352
    :cond_2
    :goto_1
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 6353
    .local v7, "layout":Landroid/text/Layout;
    invoke-virtual {v7, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 6356
    .local v9, "lineNumber":I
    if-eq v4, v5, :cond_3

    .line 6357
    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    if-ne v9, v5, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    move v5, v6

    .line 6358
    .local v5, "sameLineSelection":Z
    :goto_2
    if-eqz v5, :cond_6

    if-ge v3, v4, :cond_4

    move v10, v8

    goto :goto_3

    :cond_4
    move v10, v6

    :goto_3
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 6360
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v3}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    iget-object v12, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    .line 6361
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v12

    invoke-virtual {v0, v12, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    move v11, v8

    goto :goto_4

    :cond_5
    move v11, v6

    :goto_4
    if-eq v10, v11, :cond_6

    move v10, v8

    goto :goto_5

    :cond_6
    move v10, v6

    .line 6364
    .local v10, "rtl":Z
    :goto_5
    const/4 v11, 0x2

    new-array v12, v11, [I

    .line 6365
    .local v12, "textViewLocationOnScreen":[I
    iget-object v13, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6366
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    aget v14, v12, v6

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 6368
    .local v13, "touchXInView":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 6369
    const/4 v11, 0x0

    .line 6370
    .local v11, "leftBound":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    .line 6371
    .local v14, "rightBound":F
    cmpg-float v16, v13, v11

    if-ltz v16, :cond_7

    cmpl-float v16, v13, v14

    if-lez v16, :cond_e

    .line 6373
    :cond_7
    return v6

    .line 6376
    .end local v11    # "leftBound":F
    .end local v14    # "rightBound":F
    :cond_8
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v14

    iget-object v6, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    sub-int/2addr v14, v6

    int-to-float v6, v14

    .line 6377
    .local v6, "leftBound":F
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v14

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollX()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 6378
    .restart local v14    # "rightBound":F
    if-eqz v5, :cond_a

    if-ne v2, v11, :cond_9

    move v11, v8

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    :goto_6
    xor-int/2addr v11, v10

    if-eqz v11, :cond_a

    .line 6380
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v6, v11

    goto :goto_7

    .line 6382
    :cond_a
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    add-float/2addr v6, v11

    .line 6384
    :goto_7
    if-eqz v5, :cond_c

    if-ne v2, v8, :cond_b

    move v11, v8

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    :goto_8
    xor-int/2addr v11, v10

    if-eqz v11, :cond_c

    .line 6386
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v0, v11, v4}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v11

    add-float/2addr v14, v11

    goto :goto_9

    .line 6388
    :cond_c
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    add-float/2addr v14, v11

    .line 6390
    :goto_9
    iget v11, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v6, v11

    .line 6391
    mul-float/2addr v14, v11

    .line 6392
    iget-object v11, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v11

    invoke-static {v11}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Magnifier;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v15

    invoke-static {v15}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v15

    .line 6393
    invoke-virtual {v15}, Landroid/widget/Magnifier;->getZoom()F

    move-result v15

    div-float/2addr v11, v15

    .line 6392
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    .line 6394
    .local v11, "contentWidth":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v17, v11, v15

    sub-float v17, v6, v17

    cmpg-float v17, v13, v17

    if-ltz v17, :cond_10

    div-float v18, v11, v15

    add-float v18, v14, v18

    cmpl-float v15, v13, v18

    if-lez v15, :cond_d

    goto :goto_b

    :cond_d
    move v11, v6

    .line 6402
    .end local v6    # "leftBound":F
    .local v11, "leftBound":F
    :cond_e
    iget v6, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v15

    if-nez v6, :cond_f

    .line 6409
    move v6, v13

    .local v6, "scaledTouchXInView":F
    goto :goto_a

    .line 6411
    .end local v6    # "scaledTouchXInView":F
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v15, v0, Landroid/widget/Editor$HandleView;->mCurrentDragInitialTouchRawX:F

    sub-float/2addr v6, v15

    iget v8, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleX:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v15

    const/4 v8, 0x0

    aget v8, v12, v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    .line 6415
    .restart local v6    # "scaledTouchXInView":F
    :goto_a
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v1, Landroid/graphics/PointF;->x:F

    .line 6418
    iget-object v8, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    .line 6419
    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v15

    add-int/2addr v8, v15

    int-to-float v8, v8

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v8, v15

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    .line 6420
    invoke-virtual {v15}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v8, v15

    iget-object v15, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v15}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/TextView;->getScrollY()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v8, v15

    iget v15, v0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v8, v15

    iput v8, v1, Landroid/graphics/PointF;->y:F

    .line 6421
    const/4 v8, 0x1

    return v8

    .line 6397
    .local v6, "leftBound":F
    .local v11, "contentWidth":F
    :cond_10
    :goto_b
    const/4 v8, 0x0

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist restore()V
    .locals 17

    .line 6822
    move-object/from16 v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6824
    .local v1, "restoreAnimators":Landroid/animation/AnimatorSet;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getRestoreSizeAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6825
    .local v2, "restoreSizeAnimator":Landroid/animation/ObjectAnimator;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getRestorePositionAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 6826
    .local v3, "restorePositionAnimator":Landroid/animation/ValueAnimator;
    if-nez v3, :cond_0

    .line 6827
    const-string v4, "Editor"

    const-string/jumbo v5, "restorePositionAnimator is null. hide() is called."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6828
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->hide()V

    .line 6829
    return-void

    .line 6833
    :cond_0
    instance-of v4, v0, Landroid/widget/Editor$InsertionHandleView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_1

    .line 6834
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6835
    .local v4, "targetRect":Landroid/graphics/Rect;
    iget-object v8, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    div-int/2addr v8, v7

    .line 6836
    .local v8, "center":I
    iget v9, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    div-int/2addr v9, v7

    sub-int v9, v8, v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 6837
    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/widget/Editor$HandleView;->mCursorWidth:I

    add-int/2addr v9, v10

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 6839
    iget-object v9, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v9

    .line 6840
    .local v9, "layout":Landroid/text/Layout;
    iget-object v10, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    .line 6841
    .local v10, "offset":I
    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 6842
    .local v11, "line":I
    invoke-virtual {v9, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 6843
    .local v12, "top":I
    invoke-virtual {v9, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    .line 6845
    .local v13, "bottom":I
    iget v14, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int v15, v13, v12

    sub-int/2addr v14, v15

    iput v14, v4, Landroid/graphics/Rect;->top:I

    .line 6846
    iget v14, v0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    iput v14, v4, Landroid/graphics/Rect;->bottom:I

    .line 6848
    iget-object v14, v0, Landroid/widget/Editor$HandleView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v0, v14, v4, v6}, Landroid/widget/Editor$HandleView;->getCursorSizeAnimator(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iput-object v14, v0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    .line 6850
    const/16 v15, 0xfa

    .line 6851
    .local v15, "duration":I
    move/from16 v16, v8

    .end local v8    # "center":I
    .local v16, "center":I
    int-to-long v7, v15

    invoke-virtual {v14, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6852
    iget-object v7, v0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    iget-object v8, v0, Landroid/widget/Editor$HandleView;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6853
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v5

    aput-object v3, v7, v6

    iget-object v5, v0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6854
    .end local v4    # "targetRect":Landroid/graphics/Rect;
    .end local v9    # "layout":Landroid/text/Layout;
    .end local v10    # "offset":I
    .end local v11    # "line":I
    .end local v12    # "top":I
    .end local v13    # "bottom":I
    .end local v15    # "duration":I
    .end local v16    # "center":I
    goto :goto_0

    .line 6856
    :cond_1
    move v8, v7

    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6858
    :goto_0
    new-instance v4, Landroid/widget/Editor$HandleView$4;

    invoke-direct {v4, v0}, Landroid/widget/Editor$HandleView$4;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6883
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 6884
    return-void
.end method

.method private greylist-max-o setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 6066
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6068
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 6069
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6072
    :cond_2
    return-void
.end method

.method private greylist-max-o shouldShow()Z
    .locals 3

    .line 6053
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 6054
    const/4 v0, 0x1

    return v0

    .line 6057
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6058
    const/4 v0, 0x0

    return v0

    .line 6061
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    .line 6062
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    .line 6061
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 5942
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 5943
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 5944
    return-void
.end method

.method private greylist-max-o tooLargeTextForMagnifier()Z
    .locals 6

    .line 6260
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6261
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6262
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 6263
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMaxLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v5

    if-lt v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 6266
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    .line 6267
    invoke-virtual {v0}, Landroid/widget/Magnifier;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v3

    .line 6268
    invoke-virtual {v3}, Landroid/widget/Magnifier;->getZoom()F

    move-result v3

    div-float/2addr v0, v3

    .line 6266
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 6269
    .local v0, "magnifierContentHeight":F
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 6270
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    .line 6271
    .local v4, "glyphHeight":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mTextViewScaleY:F

    mul-float/2addr v5, v4

    cmpl-float v5, v5, v0

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist updateHandlesVisibility()V
    .locals 7

    .line 6449
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Magnifier;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 6450
    .local v0, "magnifierTopLeft":Landroid/graphics/Point;
    if-nez v0, :cond_0

    .line 6451
    return-void

    .line 6453
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v5

    .line 6454
    invoke-virtual {v5}, Landroid/widget/Magnifier;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v6

    .line 6455
    invoke-virtual {v6}, Landroid/widget/Magnifier;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6456
    .local v1, "magnifierRect":Landroid/graphics/Rect;
    invoke-direct {p0, p0, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 6458
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v2

    .line 6459
    .local v2, "otherHandle":Landroid/widget/Editor$HandleView;
    if-eqz v2, :cond_2

    .line 6460
    invoke-direct {p0, v2, v1}, Landroid/widget/Editor$HandleView;->handleOverlapsMagnifier(Landroid/widget/Editor$HandleView;Landroid/graphics/Rect;)Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {v2, v3}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 6462
    :cond_2
    return-void
.end method


# virtual methods
.method protected greylist-max-o dismiss()V
    .locals 1

    .line 6026
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 6029
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    .line 6030
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 6031
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 6033
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 6034
    return-void
.end method

.method protected final greylist-max-o dismissMagnifier()V
    .locals 2

    .line 6519
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6520
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mdismiss(Landroid/widget/Editor$MagnifierMotionAnimator;)V

    .line 6521
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    .line 6522
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    .line 6523
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 6524
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 6525
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 6527
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mresumeBlink(Landroid/widget/Editor;)V

    .line 6528
    invoke-direct {p0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 6529
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getOtherSelectionHandle()Landroid/widget/Editor$HandleView;

    move-result-object v0

    .line 6530
    .local v0, "otherHandle":Landroid/widget/Editor$HandleView;
    if-eqz v0, :cond_1

    .line 6531
    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView;->setVisible(Z)V

    .line 6534
    .end local v0    # "otherHandle":Landroid/widget/Editor$HandleView;
    :cond_1
    return-void
.end method

.method public abstract greylist-max-o getCurrentCursorOffset()I
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6154
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected greylist-max-o getCursorOffset()I
    .locals 1

    .line 6256
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6089
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method protected abstract greylist-max-o getHorizontalGravity(Z)I
.end method

.method protected greylist-max-o getHorizontalOffset()I
    .locals 5

    .line 6233
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    .line 6234
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 6235
    .local v1, "drawWidth":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    .line 6237
    .local v2, "popupWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    .line 6244
    :pswitch_0
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    .line 6245
    .local v3, "left":I
    sub-int v4, v2, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    .line 6246
    goto :goto_0

    .line 6248
    .end local v3    # "left":I
    :pswitch_1
    sub-int v3, v0, v1

    .line 6249
    .restart local v3    # "left":I
    sub-int v4, v2, v0

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    goto :goto_0

    .line 6239
    .end local v3    # "left":I
    :pswitch_2
    const/4 v3, 0x0

    .line 6240
    .restart local v3    # "left":I
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    .line 6241
    nop

    .line 6252
    :goto_0
    iget v4, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    add-int/2addr v4, v3

    return v4

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method final blacklist getIdealFingerToCursorOffset()I
    .locals 1

    .line 5859
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealFingerToCursorOffset:I

    return v0
.end method

.method public greylist-max-o getIdealVerticalOffset()F
    .locals 1

    .line 5855
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method protected abstract greylist-max-o getMagnifierHandleTrigger()I
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 6093
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method protected final greylist-max-o getPreferredHeight()I
    .locals 2

    .line 6007
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final greylist-max-o getPreferredWidth()I
    .locals 2

    .line 6003
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o hide()V
    .locals 1

    .line 6042
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 6044
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6045
    return-void
.end method

.method protected blacklist hideAfterDelay()V
    .locals 0

    .line 6663
    return-void
.end method

.method public whitelist invalidate()V
    .locals 3

    .line 5991
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 5993
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    if-eqz v0, :cond_0

    .line 5994
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView$CursorView;->invalidate()V

    .line 5997
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5998
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6000
    :cond_1
    return-void
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6084
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDragging()Z
    .locals 1

    .line 6647
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected blacklist isScreenOut(IZ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "atRtl"    # Z

    .line 6666
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isShowing()Z
    .locals 1

    .line 6048
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o offsetHasBeenChanged()Z
    .locals 2

    .line 5970
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o onDetached()V
    .locals 0

    .line 6652
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 6222
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 6223
    .local v0, "drawWidth":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mContentsViewOffset:I

    sub-int/2addr v1, v2

    .line 6225
    .local v1, "left":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsShowAnimating:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_0

    .line 6226
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6228
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6229
    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .locals 0

    .line 6650
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 5977
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    .line 5978
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    add-int/2addr v1, v2

    .line 5980
    .local v1, "height":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-eqz v2, :cond_1

    .line 5981
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 5982
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 5985
    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 5987
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 6656
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 6657
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 6658
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 6546
    const-string v0, "Editor"

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1, p1}, Landroid/widget/Editor;->-$$Nest$mupdateFloatingToolbarVisibility(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 6548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0x1002

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 6635
    :pswitch_0
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 6637
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    .line 6638
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->restore()V

    .line 6640
    invoke-virtual {p0, v3}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    goto/16 :goto_2

    .line 6587
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 6588
    .local v1, "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v6, v5

    add-float/2addr v3, v6

    .line 6591
    .local v3, "yInWindow":F
    iget v6, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    int-to-float v7, v5

    sub-float/2addr v6, v7

    .line 6592
    .local v6, "previousVerticalOffset":F
    iget v7, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v7, v7

    sub-float v7, v3, v7

    int-to-float v5, v5

    sub-float/2addr v7, v5

    .line 6594
    .local v7, "currentVerticalOffset":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v6, v5

    if-gez v8, :cond_0

    .line 6595
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 6596
    .local v5, "newVerticalOffset":F
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    .line 6598
    .end local v5    # "newVerticalOffset":F
    :cond_0
    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 6599
    .restart local v5    # "newVerticalOffset":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 6601
    :goto_0
    iget v8, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v9, v8

    add-float/2addr v9, v5

    iput v9, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 6604
    iget v9, p0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/Editor$HandleView;->mVerticalScrolledYOffset:I

    .line 6605
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->isScrollChanged(Landroid/view/MotionEvent;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Editor$HandleView;->mIsVerticalScrolled:Z

    .line 6608
    iget v8, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v1, v8

    iget v9, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 6609
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    .line 6610
    .local v8, "newPosX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float/2addr v9, v10

    .line 6614
    .local v9, "newPosY":F
    nop

    .line 6615
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 6614
    invoke-virtual {p0, v8, v9, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FFZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6618
    :catch_0
    move-exception v2

    .line 6619
    .local v2, "obe":Ljava/lang/IndexOutOfBoundsException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle view action move IndexOutOfBoundsException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6622
    .end local v2    # "obe":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_2

    .line 6616
    :catch_1
    move-exception v2

    .line 6617
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handle view action move IllegalArgumentException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6620
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto/16 :goto_2

    .line 6626
    .end local v1    # "xInWindow":F
    .end local v3    # "yInWindow":F
    .end local v5    # "newVerticalOffset":F
    .end local v6    # "previousVerticalOffset":F
    .end local v7    # "currentVerticalOffset":F
    .end local v8    # "newPosX":F
    .end local v9    # "newPosY":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp(Z)V

    .line 6628
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 6629
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    .line 6630
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->restore()V

    .line 6631
    goto/16 :goto_2

    .line 6550
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 6552
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 6553
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 6554
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 6555
    iput v1, p0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    .line 6556
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionXOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    .line 6557
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionYOnScreen()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    .line 6559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 6560
    .restart local v1    # "xInWindow":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 6561
    .local v2, "yInWindow":F
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 6562
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 6564
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 6565
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 6568
    instance-of v5, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v5, :cond_2

    .line 6569
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6570
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorRestoreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->end()V

    .line 6572
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iput-boolean v4, v5, Landroid/widget/Editor;->mCursorMoving:Z

    .line 6573
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorView:Landroid/widget/Editor$HandleView$CursorView;

    invoke-virtual {v5, v3}, Landroid/widget/Editor$HandleView$CursorView;->setVisibility(I)V

    .line 6574
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$msuspendBlink(Landroid/widget/Editor;)V

    .line 6575
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 6579
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    .line 6580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    .line 6581
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->magnifySize()V

    .line 6583
    nop

    .line 6643
    .end local v0    # "positionListener":Landroid/widget/Editor$PositionListener;
    .end local v1    # "xInWindow":F
    .end local v2    # "yInWindow":F
    :goto_2
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 6106
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6107
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 6109
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6110
    return-void

    .line 6114
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    .line 6117
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6118
    .local v1, "offsetChanged":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_6

    .line 6119
    :cond_2
    if-eqz v1, :cond_4

    .line 6120
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 6121
    if-eqz p3, :cond_3

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6124
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x29

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 6127
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 6129
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 6130
    .local v3, "line":I
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 6132
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v4, :cond_5

    .line 6133
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 6134
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 6135
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 6138
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 6139
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 6141
    :cond_5
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 6142
    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 6144
    .end local v3    # "line":I
    :cond_6
    return-void
.end method

.method protected blacklist removeHiderCallback()V
    .locals 0

    .line 6661
    return-void
.end method

.method blacklist setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .line 5863
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 5864
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 5865
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 5866
    return-void
.end method

.method public greylist-max-o show()V
    .locals 2

    .line 6016
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v0, :cond_0

    return-void

    .line 6018
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 6021
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 6022
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6023
    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .locals 8
    .param p1, "updateDrawableWhenDragging"    # Z

    .line 5869
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 5870
    return-void

    .line 5872
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5873
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 5874
    return-void

    .line 5876
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 5878
    .local v1, "offset":I
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v2

    .line 5879
    .local v2, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5880
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5881
    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 5882
    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 5884
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5886
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    .line 5887
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5890
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 5891
    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$mgetPositionListener(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v5

    add-int/2addr v4, v5

    .line 5892
    .local v4, "positionX":I
    invoke-virtual {p0, v4, v2}, Landroid/widget/Editor$HandleView;->isScreenOut(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5893
    xor-int/lit8 v5, v2, 0x1

    move v2, v5

    .line 5894
    if-eqz v2, :cond_4

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5895
    invoke-virtual {p0, v5, v2}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 5896
    invoke-virtual {p0, v2}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 5897
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5899
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_5

    .line 5900
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5906
    :cond_5
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5908
    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v5

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v5, v6

    .line 5909
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5910
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5911
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5913
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    .line 5914
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5917
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_6

    .line 5918
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5921
    :cond_6
    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v6, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, v7}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 5922
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 5924
    iput-boolean v7, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    .line 5927
    :cond_7
    return-void
.end method

.method protected final greylist-max-o updateMagnifier(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6465
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6466
    return-void

    .line 6469
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 6470
    .local v0, "showPosInView":Landroid/graphics/PointF;
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->checkForTransforms()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 6471
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->tooLargeTextForMagnifier()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6472
    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$HandleView;->obtainMagnifierShowCoordinates(Landroid/view/MotionEvent;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 6473
    .local v1, "shouldShow":Z
    :goto_0
    if-eqz v1, :cond_7

    .line 6475
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v3}, Landroid/widget/Editor;->-$$Nest$fputmRenderCursorRegardlessTiming(Landroid/widget/Editor;Z)V

    .line 6476
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 6477
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$msuspendBlink(Landroid/widget/Editor;)V

    .line 6479
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmNewMagnifierEnabled(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6481
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 6482
    .local v4, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 6483
    .local v5, "line":I
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    float-to-int v6, v6

    .line 6484
    .local v6, "lineLeft":I
    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getScrollX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 6485
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    float-to-int v7, v7

    .line 6486
    .local v7, "lineRight":I
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 6487
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v6, -0x14

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    iget v9, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v10, v7, 0x14

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-static {v8, v2}, Landroid/widget/Editor;->-$$Nest$fputmDrawCursorOnMagnifier(Landroid/widget/Editor;Z)V

    .line 6490
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v2

    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v9, v9, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8, v9}, Landroid/widget/Magnifier;->setDrawCursor(ZLandroid/graphics/drawable/Drawable;)V

    .line 6492
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mCursorVisible:Z

    .line 6495
    .local v2, "cursorVisible":Z
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmDrawCursorOnMagnifier(Landroid/widget/Editor;)Z

    move-result v9

    xor-int/2addr v3, v9

    iput-boolean v3, v8, Landroid/widget/Editor;->mCursorVisible:Z

    .line 6496
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 6499
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->updateCursorPosition()V

    .line 6501
    :cond_4
    nop

    .line 6502
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v3

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v3, v8

    .line 6503
    .local v3, "lineHeight":I
    iget-object v8, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmInitialZoom(Landroid/widget/Editor;)F

    move-result v8

    .line 6504
    .local v8, "zoom":F
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 6505
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMinLineHeightForMagnifier(Landroid/widget/Editor;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    int-to-float v10, v3

    div-float v8, v9, v10

    .line 6507
    :cond_5
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v9

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Landroid/widget/Magnifier;->updateSourceFactors(IF)V

    .line 6508
    iget-object v9, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v9

    invoke-static {v9}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$fgetmMagnifier(Landroid/widget/Editor$MagnifierMotionAnimator;)Landroid/widget/Magnifier;

    move-result-object v9

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/widget/Magnifier;->show(FF)V

    .line 6509
    .end local v2    # "cursorVisible":Z
    .end local v3    # "lineHeight":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "line":I
    .end local v6    # "lineLeft":I
    .end local v7    # "lineRight":I
    .end local v8    # "zoom":F
    goto :goto_1

    .line 6510
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmMagnifierAnimator(Landroid/widget/Editor;)Landroid/widget/Editor$MagnifierMotionAnimator;

    move-result-object v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3, v4}, Landroid/widget/Editor$MagnifierMotionAnimator;->-$$Nest$mshow(Landroid/widget/Editor$MagnifierMotionAnimator;FF)V

    .line 6512
    :goto_1
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->updateHandlesVisibility()V

    goto :goto_2

    .line 6514
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismissMagnifier()V

    .line 6516
    :goto_2
    return-void
.end method

.method protected abstract greylist-max-o updatePosition(FFZ)V
.end method

.method public greylist-max-o updatePosition(IIZZ)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .line 6160
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6161
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_b

    .line 6162
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 6164
    iget v0, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 6165
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-int v0, p1, v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 6166
    iget v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 6167
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 6168
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 6171
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 6174
    :cond_3
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsRestoring:Z

    if-nez v0, :cond_a

    .line 6175
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6177
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 6178
    .local v0, "pts":[I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 6179
    aget v2, v0, v1

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    aput v2, v0, v1

    .line 6181
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsHideAnimating:Z

    if-nez v2, :cond_4

    .line 6182
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v4, v0, v1

    aget v5, v0, v3

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6184
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_8

    .line 6185
    aget v4, v0, v1

    aget v3, v0, v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v4, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 6189
    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isValid()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6190
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    aget v5, v0, v1

    aget v6, v0, v3

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6193
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_5

    .line 6194
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    aget v5, v0, v1

    aget v3, v0, v3

    iget v6, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int/2addr v3, v6

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6197
    :cond_5
    instance-of v2, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_6

    .line 6198
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$mgetActiveLayout(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mUpperLimit:I

    .line 6202
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_7

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 6203
    :cond_7
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsSwitching:Z

    if-nez v2, :cond_8

    .line 6204
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 6209
    .end local v0    # "pts":[I
    :cond_8
    :goto_0
    goto :goto_1

    .line 6210
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6211
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 6216
    :cond_a
    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 6218
    :cond_b
    return-void
.end method

.method protected blacklist updatePositionDuringDragging(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 6677
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 6678
    .local v1, "textViewCoords":[I
    invoke-virtual {p0, v1}, Landroid/widget/Editor$HandleView;->getLocationInWindow([I)V

    .line 6679
    const/4 v2, 0x0

    aget v3, v1, v2

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 6680
    const/4 v3, 0x1

    aget v4, v1, v3

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    .line 6682
    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    sub-int/2addr v4, v5

    aget v5, v1, v2

    .line 6683
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6682
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 6686
    instance-of v4, p0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v4, :cond_0

    .line 6687
    iget v4, p0, Landroid/widget/Editor$HandleView;->mUpperLimit:I

    aget v5, v1, v3

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    goto :goto_0

    .line 6690
    :cond_0
    aget v4, v1, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 6694
    :goto_0
    new-array v0, v0, [I

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v4, v5

    .line 6695
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v0, v2

    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v4, v0, v3

    .line 6697
    .local v0, "pts":[I
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 6698
    aget v4, v0, v2

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    aput v4, v0, v2

    .line 6700
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6701
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v5, v0, v2

    aget v6, v0, v3

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6703
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mCursorContainer:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_1

    .line 6704
    aget v2, v0, v2

    aget v3, v0, v3

    iget v5, p0, Landroid/widget/Editor$HandleView;->mMaxCursorHeight:I

    sub-int/2addr v3, v5

    invoke-virtual {v4, v2, v3, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 6708
    :cond_1
    return-void
.end method

.method protected abstract greylist-max-o updateSelection(I)V
.end method
