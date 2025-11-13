.class final Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$3;->this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$onCreateViewHolder$3;->this$0:Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter;->model:Lcom/android/systemui/controls/management/model/AllControlsModel;

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/controls/management/model/SecElementWrapper;

    instance-of v4, v3, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    iget-object v3, v3, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean p1, v1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    if-ne p2, p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ControlStatus;

    iget-object v3, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/management/model/SecElementWrapper;

    instance-of v6, v5, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    if-eqz v6, :cond_4

    check-cast v5, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    iget-object v5, v5, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;->controlStatus:Lcom/android/systemui/controls/ControlStatus;

    iget-object v5, v5, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v5}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_5
    move-object v4, v2

    :goto_2
    check-cast v4, Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;

    invoke-virtual {p0, v4, p2}, Lcom/android/systemui/controls/management/model/AllControlsModel;->setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/SecControlStatusWrapper;Z)V

    goto :goto_1

    :cond_6
    iput-boolean p2, v1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_7

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
