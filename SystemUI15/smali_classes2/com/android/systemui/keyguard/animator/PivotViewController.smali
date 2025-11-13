.class public final Lcom/android/systemui/keyguard/animator/PivotViewController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public affordancePivotX:I

.field public affordancePivotY:I

.field public final pivot:Landroid/util/SparseArray;

.field public final pivotViews:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0xc

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivotViews:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivot:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/systemui/keyguard/animator/PivotViewController$1;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$1;

    new-instance v1, Lcom/android/systemui/keyguard/animator/PivotViewController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$2;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p1, Lcom/android/systemui/keyguard/animator/PivotViewController$3;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$3;

    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$4;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    invoke-virtual {p0, v11, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p1, Lcom/android/systemui/keyguard/animator/PivotViewController$5;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$5;

    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$6;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    invoke-virtual {p0, v7, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p1, Lcom/android/systemui/keyguard/animator/PivotViewController$7;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$7;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$8;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    invoke-virtual {p0, v9, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p1, Lcom/android/systemui/keyguard/animator/PivotViewController$9;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$9;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$10;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    invoke-virtual {p0, v10, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p1, Lcom/android/systemui/keyguard/animator/PivotViewController$11;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$11;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$12;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    invoke-virtual {p0, v8, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p1, Lcom/android/systemui/keyguard/animator/PivotViewController$13;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$13;

    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$14;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p1, Lcom/android/systemui/keyguard/animator/PivotViewController$15;->INSTANCE:Lcom/android/systemui/keyguard/animator/PivotViewController$15;

    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController$16;-><init>(Lcom/android/systemui/keyguard/animator/PivotViewController;)V

    invoke-virtual {p0, v12, p1, v0}, Lcom/android/systemui/keyguard/animator/PivotViewController;->initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public final initPivot(ILjava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivot:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final setChildViewPivot$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivotViews:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardTouchAnimator"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivotViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->pivot:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/function/Function;

    invoke-interface {v4, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    :cond_5
    return-void
.end method
