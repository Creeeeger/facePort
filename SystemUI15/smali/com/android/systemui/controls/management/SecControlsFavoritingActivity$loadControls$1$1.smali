.class public final Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object v0, v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->initialFavoriteIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object v0, v0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->initialFavoriteIds:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->favoritesIds:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->loadForComponent(Lcom/android/systemui/controls/controller/ControlsController$LoadData;Z)V

    return-void
.end method
