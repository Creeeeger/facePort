.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteGridAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$deletedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$firstVisiblePosBefore:I

.field final synthetic blacklist val$gridView:Landroid/widget/GridView;

.field final synthetic blacklist val$lastVisiblePosBefore:I

.field final synthetic blacklist val$singleRowHeightBefore:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/GridView;IIILandroid/widget/ListAdapter;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    iput p5, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 30

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getNumColumns()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_0

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v7, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v8, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    :goto_0
    const/4 v5, 0x1

    iget v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    sub-int/2addr v8, v3

    move v9, v8

    iget v10, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v2, :cond_6

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v12, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    add-int v14, v11, v3

    invoke-interface {v13, v14}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v15, v15, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v15

    int-to-float v15, v15

    move-wide/from16 v16, v13

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    const/16 v18, 0x0

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    move/from16 v19, v5

    iget v5, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v5, v5

    cmpl-float v5, v5, v15

    if-nez v5, :cond_1

    iget v5, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    cmpl-float v5, v5, v13

    if-nez v5, :cond_1

    move/from16 v26, v8

    move/from16 v23, v11

    move/from16 v5, v19

    goto/16 :goto_5

    :cond_1
    iget v5, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v15

    iget v14, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v14, v14

    sub-float/2addr v14, v13

    move-object/from16 v22, v6

    move/from16 v26, v8

    move/from16 v23, v11

    goto/16 :goto_4

    :cond_2
    add-int v19, v11, v3

    const/16 v20, -0x1

    if-lez v9, :cond_3

    if-eqz v5, :cond_3

    sub-int v20, v19, v8

    add-int/lit8 v9, v9, -0x1

    move/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v5, v20

    goto :goto_2

    :cond_3
    move/from16 v21, v5

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v22, v6

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-static {v5, v6, v10}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-$$Nest$mgetNextAppearingViewPosition(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Ljava/util/HashSet;I)I

    move-result v20

    move/from16 v10, v20

    move/from16 v5, v20

    :goto_2
    move v6, v8

    move/from16 v20, v9

    int-to-double v8, v5

    move/from16 v24, v10

    move/from16 v23, v11

    int-to-double v10, v4

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    div-int v9, v19, v4

    sub-int v10, v8, v9

    rem-int v11, v5, v4

    if-gez v11, :cond_4

    add-int/2addr v11, v4

    :cond_4
    if-le v2, v11, :cond_5

    move/from16 v25, v5

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move/from16 v26, v6

    move/from16 v27, v8

    goto :goto_3

    :cond_5
    move/from16 v25, v5

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move/from16 v26, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    move/from16 v27, v8

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v8, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v6

    mul-int/2addr v6, v11

    add-int/2addr v5, v6

    :goto_3
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    mul-int v8, v10, v7

    add-int/2addr v6, v8

    int-to-float v8, v5

    sub-float/2addr v8, v15

    int-to-float v14, v6

    sub-float/2addr v14, v13

    move v5, v8

    move/from16 v9, v20

    move/from16 v19, v21

    move/from16 v10, v24

    :goto_4
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-virtual {v6, v12, v5, v14}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v19

    :goto_5
    add-int/lit8 v11, v23, 0x1

    move/from16 v8, v26

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_6
    move/from16 v21, v5

    move/from16 v26, v8

    move/from16 v23, v11

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v12, v12, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroid/graphics/Rect;

    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget v14, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget v15, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move-object/from16 v16, v5

    iget v5, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v12, v13, v14, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v12

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget v13, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v12

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v14, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    sub-int v14, v12, v3

    const/4 v15, 0x0

    const/16 v17, 0x0

    if-ltz v14, :cond_8

    if-lt v14, v2, :cond_7

    move/from16 v18, v3

    goto :goto_7

    :cond_7
    move/from16 v18, v3

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v3, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v15, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    int-to-float v15, v15

    move/from16 v19, v2

    goto :goto_9

    :cond_8
    move/from16 v18, v3

    :goto_7
    rem-int v3, v12, v4

    if-le v2, v3, :cond_9

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move/from16 v19, v2

    rem-int v2, v12, v4

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    move v3, v2

    goto :goto_8

    :cond_9
    move/from16 v19, v2

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    move v3, v2

    :goto_8
    iget v2, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    div-int/2addr v2, v4

    div-int v15, v12, v4

    sub-int/2addr v2, v15

    iget v15, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    mul-int v20, v2, v7

    sub-int v15, v15, v20

    int-to-float v15, v15

    nop

    :goto_9
    iget v2, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    move/from16 v17, v3

    iget v3, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v3, v3

    sub-float v3, v15, v3

    move/from16 v20, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v22, v7

    float-to-int v7, v2

    move/from16 v23, v2

    float-to-int v2, v3

    invoke-virtual {v4, v7, v2}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v13, :cond_a

    sget v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    const/high16 v24, 0x40000000    # 2.0f

    div-float v2, v2, v24

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    float-to-int v2, v2

    sget v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v7, v25, v7

    div-float v7, v7, v24

    move/from16 v24, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v7, v3

    float-to-int v3, v7

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v25, v8

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v2

    move/from16 v27, v9

    iget v9, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v3

    move/from16 v28, v10

    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    move/from16 v29, v2

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-direct {v7, v8, v9, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v7

    goto :goto_a

    :cond_a
    move/from16 v24, v3

    move-object/from16 v25, v8

    move/from16 v27, v9

    move/from16 v28, v10

    :goto_a
    sget-object v2, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v7, "bounds"

    invoke-static {v7, v2, v3}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/16 v3, 0xff

    const/4 v7, 0x0

    filled-new-array {v3, v7}, [I

    move-result-object v3

    const-string v8, "alpha"

    invoke-static {v8, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget-object v8, v11, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v9, v7

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    if-nez v6, :cond_b

    iget-object v9, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v9, v9, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v6, 0x1

    :cond_b
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v16

    move/from16 v3, v18

    move/from16 v2, v19

    move/from16 v4, v20

    move/from16 v7, v22

    move/from16 v9, v27

    move/from16 v10, v28

    goto/16 :goto_6

    :cond_c
    move/from16 v19, v2

    move/from16 v18, v3

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v3, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mTranslationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
