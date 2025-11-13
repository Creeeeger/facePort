.class public abstract Landroidx/picker/controller/strategy/Strategy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final appPickerContext:Landroidx/picker/di/AppPickerContext;


# direct methods
.method public constructor <init>(Landroidx/picker/di/AppPickerContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/controller/strategy/Strategy;->appPickerContext:Landroidx/picker/di/AppPickerContext;

    return-void
.end method


# virtual methods
.method public final clear$picker_app_release()V
    .locals 2

    iget-object p0, p0, Landroidx/picker/controller/strategy/Strategy;->appPickerContext:Landroidx/picker/di/AppPickerContext;

    iget-object p0, p0, Landroidx/picker/di/AppPickerContext;->viewDataRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/repository/ViewDataRepository;

    iget-object p0, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    iget-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    iget-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/loader/select/CategorySelectableItem;

    invoke-virtual {v1}, Landroidx/picker/loader/select/CategorySelectableItem;->dispose()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public abstract convert$picker_app_release(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/picker/model/AppData;",
            ">;",
            "Ljava/util/Comparator<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;"
        }
    .end annotation
.end method
