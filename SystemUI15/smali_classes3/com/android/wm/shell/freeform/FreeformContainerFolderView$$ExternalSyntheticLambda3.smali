.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;I)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstancePreviewAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->collapse(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->launch()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->launch()V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_1
    check-cast p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->throwAwayAllItems()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
