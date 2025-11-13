.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$childCountBefore:I

.field final synthetic blacklist val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$deletedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$firstVisiblePosBefore:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;IILjava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$firstVisiblePosBefore:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$childCountBefore:I

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 35

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-le v2, v5, :cond_0

    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$mgetChildMaxHeight(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v13

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v14

    add-int v10, v13, v14

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v12

    :goto_0
    const/4 v13, 0x1

    iget v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$firstVisiblePosBefore:I

    sub-int/2addr v14, v3

    move v15, v14

    add-int/lit8 v16, v4, 0x1

    move/from16 v17, v4

    iget v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$childCountBefore:I

    sub-int/2addr v4, v2

    add-int v16, v16, v4

    const/4 v4, 0x0

    :goto_1
    const/16 v18, 0x1

    if-ge v4, v2, :cond_7

    move/from16 v19, v8

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v20, v1

    add-int v1, v4, v3

    move/from16 v21, v2

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const/16 v24, 0x0

    const-wide/16 v25, -0x1

    cmp-long v25, v22, v25

    if-nez v25, :cond_3

    if-ge v1, v5, :cond_1

    move/from16 v25, v5

    add-int/lit8 v5, v1, 0x1

    move/from16 v26, v11

    move/from16 v27, v12

    int-to-long v11, v5

    move-wide/from16 v22, v11

    goto :goto_2

    :cond_1
    move/from16 v25, v5

    move/from16 v26, v11

    move/from16 v27, v12

    sub-int v5, v7, v6

    if-lt v1, v5, :cond_2

    add-int v5, v1, v6

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    neg-int v11, v5

    int-to-long v11, v11

    move-wide/from16 v22, v11

    :cond_2
    :goto_2
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    goto :goto_3

    :cond_3
    move/from16 v25, v5

    move/from16 v26, v11

    move/from16 v27, v12

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    const/4 v13, 0x0

    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v11, v11

    cmpl-float v11, v11, v2

    if-nez v11, :cond_4

    move/from16 v8, v19

    goto :goto_6

    :cond_4
    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v11, v11

    sub-float/2addr v11, v2

    move/from16 v24, v1

    goto :goto_5

    :cond_5
    if-lez v15, :cond_6

    if-eqz v13, :cond_6

    neg-int v11, v14

    add-int/lit8 v15, v15, -0x1

    goto :goto_4

    :cond_6
    sub-int v11, v16, v1

    add-int/lit8 v16, v16, 0x1

    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    mul-int v18, v11, v10

    add-int v12, v12, v18

    move/from16 v24, v1

    int-to-float v1, v12

    sub-float/2addr v1, v2

    move v11, v1

    :goto_5
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v1, v8, v12, v11}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v11

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v5, v25

    move/from16 v11, v26

    move/from16 v12, v27

    goto/16 :goto_1

    :cond_7
    move-object/from16 v20, v1

    move/from16 v21, v2

    move/from16 v25, v5

    move/from16 v19, v8

    move/from16 v26, v11

    move/from16 v27, v12

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v11, v11, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroid/graphics/Rect;

    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move-object/from16 v19, v1

    add-int v1, v26, v27

    move-object/from16 v22, v4

    iget v4, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v23, v6

    move/from16 v6, v26

    invoke-direct {v11, v6, v12, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v11

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v11, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v11, v12}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v4

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    sub-int v12, v4, v3

    move/from16 v24, v3

    if-ltz v12, :cond_9

    move/from16 v3, v21

    if-lt v12, v3, :cond_8

    move/from16 v21, v4

    move/from16 v28, v6

    move-object/from16 v4, v20

    move/from16 v20, v7

    goto :goto_8

    :cond_8
    move/from16 v21, v4

    move-object/from16 v4, v20

    invoke-virtual {v4, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move/from16 v28, v6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    move/from16 v20, v7

    iget v7, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    move v8, v7

    goto :goto_a

    :cond_9
    move/from16 v28, v6

    move/from16 v3, v21

    move/from16 v21, v4

    move-object/from16 v4, v20

    move/from16 v20, v7

    :goto_8
    if-nez v3, :cond_a

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    :goto_9
    iget v7, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    neg-int v8, v12

    mul-int/2addr v8, v10

    int-to-float v8, v8

    sub-float/2addr v7, v8

    move v8, v7

    :goto_a
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    float-to-int v7, v8

    move/from16 v29, v3

    const/4 v3, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v11, :cond_b

    sget v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v3

    const/high16 v30, 0x40000000    # 2.0f

    div-float v3, v3, v30

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    float-to-int v3, v3

    sget v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v31, 0x3f800000    # 1.0f

    sub-float v7, v31, v7

    div-float v7, v7, v30

    move-object/from16 v30, v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v7, v4

    float-to-int v4, v7

    new-instance v7, Landroid/graphics/Rect;

    move/from16 v31, v8

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v3

    move/from16 v32, v10

    iget v10, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v4

    move/from16 v33, v11

    iget v11, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v3

    move/from16 v34, v3

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-direct {v7, v8, v10, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v7

    goto :goto_b

    :cond_b
    move-object/from16 v30, v4

    move/from16 v31, v8

    move/from16 v32, v10

    move/from16 v33, v11

    :goto_b
    sget-object v3, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v1, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "bounds"

    invoke-static {v7, v3, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/16 v4, 0xff

    const/4 v7, 0x0

    filled-new-array {v4, v7}, [I

    move-result-object v4

    const-string v8, "alpha"

    invoke-static {v8, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    iget-object v8, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v10, v7

    aput-object v4, v10, v18

    invoke-static {v8, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    if-nez v2, :cond_c

    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v8, v8, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, 0x1

    :cond_c
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v19

    move/from16 v7, v20

    move/from16 v6, v23

    move/from16 v3, v24

    move/from16 v26, v28

    move/from16 v21, v29

    move-object/from16 v20, v30

    move/from16 v8, v31

    move/from16 v10, v32

    goto/16 :goto_7

    :cond_d
    move-object/from16 v19, v1

    move/from16 v24, v3

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v3, v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postDelayed #1 mAniTimeoutRunnable delay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
