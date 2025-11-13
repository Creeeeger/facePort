.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

.field public final synthetic f$1:Lcom/android/wm/shell/freeform/FreeformContainerItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerViewController;Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->throwAwayAllItems()V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SA_LOGGING:Z

    if-eqz p0, :cond_2

    const-string p0, "2202"

    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->isParentMultiInstanceItem()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerViewController;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_1
    return-void
.end method
