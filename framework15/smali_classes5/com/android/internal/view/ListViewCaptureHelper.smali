.class public Lcom/android/internal/view/ListViewCaptureHelper;
.super Ljava/lang/Object;
.source "ListViewCaptureHelper.java"

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LVCaptureHelper"


# instance fields
.field private blacklist mOverScrollMode:I

.field private blacklist mScrollBarWasEnabled:Z

.field private blacklist mScrollDelta:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist onAcceptSession(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ListViewCaptureHelper;->onAcceptSession(Landroid/widget/ListView;)Z

    move-result p1

    return p1
.end method

.method public blacklist onAcceptSession(Landroid/widget/ListView;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ListView;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic blacklist onPrepareForEnd(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ListViewCaptureHelper;->onPrepareForEnd(Landroid/widget/ListView;)V

    return-void
.end method

.method public blacklist onPrepareForEnd(Landroid/widget/ListView;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->scrollListBy(I)V

    iget v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mOverScrollMode:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    iget-boolean v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollBarWasEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public bridge synthetic blacklist onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/ListViewCaptureHelper;->onPrepareForStart(Landroid/widget/ListView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist onPrepareForStart(Landroid/widget/ListView;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    invoke-virtual {p1}, Landroid/widget/ListView;->isVerticalScrollBarEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollBarWasEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public bridge synthetic blacklist onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/ListViewCaptureHelper;->onScrollRequested(Landroid/widget/ListView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onScrollRequested(Landroid/widget/ListView;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "LVCaptureHelper"

    const-string v6, "-----------------------------------------------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onScrollRequested(scrollBounds="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", requestRect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v7}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    iput v8, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->isVisibleToUser()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-static {v8, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    if-lez v11, :cond_1

    neg-int v12, v11

    div-int/lit8 v12, v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Landroid/graphics/Rect;->inset(II)V

    :cond_1
    invoke-static {v9, v10}, Lcom/android/internal/view/ScrollCaptureViewSupport;->computeScrollAmount(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v12

    if-gez v12, :cond_2

    const-string v13, "About to scroll UP (content moves down within parent)"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-lez v12, :cond_3

    const-string v13, "About to scroll DOWN (content moves up within parent)"

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "scrollAmount: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v12}, Lcom/android/internal/view/ScrollCaptureViewSupport;->findScrollingReferenceView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1, v12}, Landroid/widget/ListView;->scrollListBy(I)V

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v14, v15

    move-object/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v10

    const-string v10, "Parent view has scrolled vertically by "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " px"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    add-int/2addr v8, v15

    iput v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    iget v8, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    iput v8, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    if-eqz v15, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v11

    const-string v11, "Scroll delta is now "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move/from16 v18, v11

    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    iget v10, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-static {v10, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromRequestToContainer(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, v0, Lcom/android/internal/view/ListViewCaptureHelper;->mScrollDelta:I

    invoke-static {v10, v2, v8}, Lcom/android/internal/view/ScrollCaptureViewSupport;->transformFromContainerToRequest(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    :cond_5
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_2
    const-string/jumbo v6, "listView is empty or not visible, cannot continue"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
