.class public final Lcom/android/wm/shell/bubbles/BubbleController$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    return-void
.end method

.method public final bubbleOrderChanged(Ljava/util/List;Z)V
    .locals 0

    return-void
.end method

.method public final bubbleOverflowChanged()V
    .locals 0

    return-void
.end method

.method public final expansionChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->collapse(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda7;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final removeBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$6$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$6$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda7;

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleController$6$$ExternalSyntheticLambda0;)V

    iget-object p1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->collapse(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda7;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda7;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final selectionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_0
    return-void
.end method

.method public final suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    return-void
.end method

.method public final updateBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    return-void
.end method
