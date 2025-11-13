.class Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "SemDragAndDropListAnimator.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemDragAndDropListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final blacklist mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemDragAndDropListAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V
    .locals 0
    .param p2, "wrappedController"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 924
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-object p2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 926
    return-void
.end method


# virtual methods
.method public whitelist canDrag(I)Z
    .locals 3
    .param p1, "startPos"    # I

    .line 929
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 931
    return v1

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    .line 933
    return v1

    .line 935
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderFooterDndController : canDrag #3 mListView.getHeaderViewsCount() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemDragAndDropListAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrag(I)Z

    move-result v0

    return v0

    .line 938
    :cond_2
    return v1
.end method

.method public whitelist canDrop(II)Z
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .line 942
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 944
    return v1

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p2, v0, :cond_1

    .line 946
    return v1

    .line 948
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderFooterDndController : canDrop #4 startPos - mListView.getHeaderViewsCount() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemDragAndDropListAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    .line 950
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    .line 949
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->canDrop(II)Z

    move-result v0

    return v0

    .line 952
    :cond_2
    return v1
.end method

.method public whitelist dropDone(II)V
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .line 956
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-eqz v0, :cond_4

    .line 958
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    goto :goto_0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    move p1, v0

    .line 963
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p2

    goto :goto_1

    .line 965
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_3

    .line 966
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    .line 969
    :cond_3
    :goto_1
    const-string v0, "SemDragAndDropListAnimator"

    const-string v1, "HeaderFooterDndController : dropDone : mWrappedController.dropDone #3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeaderFooterDndController : dropDone : startPos - mListView.getHeaderViewsCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeaderFooterDndController : dropDone : destPos - mListView.getHeaderViewsCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    iget-object v1, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/samsung/android/animation/SemDragAndDropListAnimator$HeaderFooterDndController;->this$0:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemDragAndDropListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    .line 973
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    .line 972
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;->dropDone(II)V

    .line 975
    :cond_4
    return-void
.end method
