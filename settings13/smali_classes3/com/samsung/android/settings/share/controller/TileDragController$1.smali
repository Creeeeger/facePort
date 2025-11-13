.class Lcom/samsung/android/settings/share/controller/TileDragController$1;
.super Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;
.source "TileDragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/share/controller/TileDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/share/controller/TileDragController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/share/controller/TileDragController;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController$1;->this$0:Lcom/samsung/android/settings/share/controller/TileDragController;

    invoke-direct {p0}, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method onDragEnd(Landroid/view/View;)V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$1;->this$0:Lcom/samsung/android/settings/share/controller/TileDragController;

    iget-object p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mStartTag:Lcom/samsung/android/settings/share/structure/ShareTileTag;

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/share/structure/ShareComponent;->mDisableIcon:Z

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mStartTag:Lcom/samsung/android/settings/share/structure/ShareTileTag;

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mOnDragStateChangeListener:Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;

    if-eqz p0, :cond_1

    .line 105
    invoke-interface {p0}, Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;->onDragEnd()V

    :cond_1
    return-void
.end method

.method onDragEnter(Landroid/view/View;)V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$1;->this$0:Lcom/samsung/android/settings/share/controller/TileDragController;

    iget-object v0, v0, Lcom/samsung/android/settings/share/controller/TileDragController;->mStartTag:Lcom/samsung/android/settings/share/structure/ShareTileTag;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/share/structure/ShareTileTag;

    if-nez v1, :cond_1

    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareTileTag;

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->getPosition()I

    move-result v1

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->getTileContainerPresenter()Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->getPosition()I

    move-result v3

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->getTileContainerPresenter()Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;

    move-result-object v4

    if-ne v1, v3, :cond_2

    if-ne v2, v4, :cond_2

    .line 69
    invoke-interface {v2}, Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;->notifyChange()V

    return-void

    :cond_2
    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->getPosition()I

    move-result v1

    if-ne v1, v5, :cond_3

    if-eq v2, v4, :cond_3

    .line 75
    iget-object v1, v0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-interface {v4, v1}, Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;->addTileLast(Ljava/lang/Object;)I

    .line 76
    iget-object v1, v0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-interface {v2, v1}, Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;->removeTile(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->getTileContainerPresenter()Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->setIDraggableContainer(Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;)V

    .line 78
    instance-of p1, v2, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$1;->this$0:Lcom/samsung/android/settings/share/controller/TileDragController;

    iget-object v0, v0, Lcom/samsung/android/settings/share/controller/TileDragController;->mSelectAppPresenter:Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;->resizeRecyclerView(Z)V

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$1;->this$0:Lcom/samsung/android/settings/share/controller/TileDragController;

    iget-object p0, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mSelectAppPresenter:Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;

    invoke-interface {p0}, Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;->updateNoItemText()V

    :cond_3
    return-void

    :cond_4
    if-eq v1, v3, :cond_5

    if-ne v2, v4, :cond_5

    .line 87
    invoke-interface {v2, v1, v3}, Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;->shiftItems(II)V

    return-void

    :cond_5
    if-eq v2, v4, :cond_6

    .line 91
    iget-object v1, v0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->getPosition()I

    move-result p1

    invoke-interface {v4, v1, p1}, Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;->addTile(Ljava/lang/Object;I)V

    .line 92
    iget-object p1, v0, Lcom/samsung/android/settings/share/structure/ShareTileTag;->mShareComponent:Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-interface {v2, p1}, Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;->removeTile(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/share/structure/ShareTileTag;->setIDraggableContainer(Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController$1;->this$0:Lcom/samsung/android/settings/share/controller/TileDragController;

    iget-object p1, p1, Lcom/samsung/android/settings/share/controller/TileDragController;->mSelectAppPresenter:Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;->resizeRecyclerView(Z)V

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$1;->this$0:Lcom/samsung/android/settings/share/controller/TileDragController;

    iget-object p0, p0, Lcom/samsung/android/settings/share/controller/TileDragController;->mSelectAppPresenter:Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;

    invoke-interface {p0}, Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;->updateNoItemText()V

    :cond_6
    return-void
.end method

.method onDragStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method
