.class final synthetic Landroidx/picker/controller/strategy/AllSelectStrategy$addAllAppsTask$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "createAllAppsViewData(Ljava/util/List;)Landroidx/picker/model/viewdata/AllAppsViewData;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Landroidx/picker/repository/ViewDataRepository;

    const-string v4, "createAllAppsViewData"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/picker/repository/ViewDataRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, v1, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    invoke-virtual {p0, v0}, Landroidx/picker/loader/select/SelectStateLoader;->createAllAppsSelectableItem$picker_app_release(Ljava/util/List;)Landroidx/picker/loader/select/AllAppsSelectableItem;

    move-result-object p0

    new-instance p1, Landroidx/picker/model/viewdata/AllAppsViewData;

    invoke-direct {p1, p0}, Landroidx/picker/model/viewdata/AllAppsViewData;-><init>(Landroidx/picker/loader/select/SelectableItem;)V

    return-object p1
.end method
