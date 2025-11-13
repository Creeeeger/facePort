.class public Landroid/view/HandwritingInitiator$HandwritingAreaTracker;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritingAreaTracker"
.end annotation


# instance fields
.field private final blacklist mHandwritableViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/HandwritingInitiator$HandwritableViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic blacklist lambda$computeViewInfos$0(Landroid/view/HandwritingInitiator$HandwritableViewInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->update()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist computeViewInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/HandwritingInitiator$HandwritableViewInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    new-instance v1, Landroid/view/HandwritingInitiator$HandwritingAreaTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    return-object v0
.end method

.method public blacklist updateHandwritingAreaForView(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    invoke-virtual {v2}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HandwritingInitiator;->-$$Nest$smisViewActive(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    if-ne v3, p1, :cond_1

    const/4 v1, 0x1

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->mIsDirty:Z

    :cond_1
    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/view/HandwritingInitiator;->-$$Nest$smisViewActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->mHandwritableViewInfos:Ljava/util/List;

    new-instance v3, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    invoke-direct {v3, p1}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;-><init>(Landroid/view/View;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
