.class public final Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animators:Ljava/util/List;

.field public final appInfoPill:Landroid/view/ViewGroup;

.field public final captionHeight:F

.field public final handleMenu:Landroid/view/View;

.field public final menuWidth:I

.field public final moreActionsPill:Landroid/view/ViewGroup;

.field public runningAnimation:Landroid/animation/AnimatorSet;

.field public final windowingPill:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->handleMenu:Landroid/view/View;

    iput p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->menuWidth:I

    iput p3, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->captionHeight:F

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    const p2, 0x7f0a00fe

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    const p2, 0x7f0a0ecf

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    const p2, 0x7f0a0737

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final animateAppInfoPillFadeOut()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v1, v0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x19

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final animateAppInfoPillOpen()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0x21

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0x53

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v1, v0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    aput v3, v7, v6

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0x43

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0x64

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final animateMoreActionsPillOpen()V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x32

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0xb4

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0x85

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0x96

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v5, v4, [F

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0x21

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0x53

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v1, v0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    aput v3, v9, v6

    invoke-static {v1, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0xa7

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final animateWindowingPillOpen()V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x32

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0xb4

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0x85

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0x96

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v5, v4, [F

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0x21

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0x53

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v1, v0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v4, [F

    aput v3, v9, v6

    invoke-static {v1, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0xa7

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final moreActionsPillClose()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0x32

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v5, v4, [F

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    new-array v5, v4, [F

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->captionHeight:F

    neg-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    aput v0, v3, v6

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final prepareMenuForAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    new-instance v1, Landroidx/core/view/ViewGroupKt$children$1;

    invoke-direct {v1, v0}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->handleMenu:Landroid/view/View;

    iget v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->menuWidth:I

    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->handleMenu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    int-to-float v2, v1

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->moreActionsPill:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->appInfoPill:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setPivotY(F)V

    return-void
.end method

.method public final runAnimations(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->runningAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$runAnimations$lambda$39$$inlined$doOnEnd$1;

    invoke-direct {v1, p1, p0}, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator$runAnimations$lambda$39$$inlined$doOnEnd$1;-><init>(Ljava/lang/Runnable;Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->runningAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public final windowingPillClose()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0x32

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v5, v4, [F

    aput v3, v5, v6

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->animators:Ljava/util/List;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuAnimator;->windowingPill:Landroid/view/ViewGroup;

    new-array v1, v4, [F

    aput v3, v1, v6

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
