.class Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "SemDragAndDropHorizontalListAnimator.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final blacklist mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 0
    .param p2, "wrappedController"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 878
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 880
    return-void
.end method


# virtual methods
.method public whitelist canDrag(I)Z
    .locals 3
    .param p1, "startPos"    # I

    .line 883
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 885
    return v1

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    .line 887
    return v1

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    return v0

    .line 892
    :cond_2
    return v1
.end method

.method public whitelist canDrop(II)Z
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .line 896
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 897
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 898
    return v1

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_1

    .line 900
    return v1

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v2

    .line 903
    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    .line 902
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v0

    return v0

    .line 905
    :cond_2
    return v1
.end method

.method public whitelist dropDone(II)V
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .line 909
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-eqz v0, :cond_4

    .line 911
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result p1

    goto :goto_0

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    move p1, v0

    .line 916
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result p2

    goto :goto_1

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_3

    .line 919
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    .line 922
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v2

    .line 923
    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    .line 922
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    .line 925
    :cond_4
    return-void
.end method
