.class public final Landroidx/picker/loader/select/SelectStateLoader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

.field public final categorySelectableItemMap:Ljava/util/Map;

.field public onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final createAllAppsSelectableItem$picker_app_release(Ljava/util/List;)Landroidx/picker/loader/select/AllAppsSelectableItem;
    .locals 2

    iget-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/picker/loader/select/AllAppsSelectableItem;->dispose()V

    :cond_0
    new-instance v0, Landroidx/picker/loader/select/AllAppsSelectableItem;

    new-instance v1, Landroidx/picker/loader/select/SelectStateLoader$createAllAppsSelectableItem$1;

    invoke-direct {v1, p0}, Landroidx/picker/loader/select/SelectStateLoader$createAllAppsSelectableItem$1;-><init>(Landroidx/picker/loader/select/SelectStateLoader;)V

    invoke-direct {v0, p1, v1}, Landroidx/picker/loader/select/AllAppsSelectableItem;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/picker/loader/select/AllAppsSelectableItem;->dispose()V

    :cond_1
    iput-object v0, p0, Landroidx/picker/loader/select/SelectStateLoader;->allAppsSelectableItem:Landroidx/picker/loader/select/AllAppsSelectableItem;

    return-object v0
.end method

.method public final createCategorySelectableItem$picker_app_release(Landroidx/picker/model/appdata/CategoryAppData;Ljava/util/List;)Landroidx/picker/loader/select/CategorySelectableItem;
    .locals 2

    new-instance v0, Landroidx/picker/loader/select/CategorySelectableItem;

    new-instance v1, Landroidx/picker/loader/select/SelectStateLoader$createCategorySelectableItem$1;

    invoke-direct {v1, p0, p1}, Landroidx/picker/loader/select/SelectStateLoader$createCategorySelectableItem$1;-><init>(Landroidx/picker/loader/select/SelectStateLoader;Landroidx/picker/model/appdata/CategoryAppData;)V

    invoke-direct {v0, p2, v1}, Landroidx/picker/loader/select/CategorySelectableItem;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iget-object p2, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    check-cast p2, Ljava/util/LinkedHashMap;

    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/picker/loader/select/CategorySelectableItem;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/picker/loader/select/CategorySelectableItem;->dispose()V

    :cond_0
    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader;->categorySelectableItemMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final createSelectableItem$picker_app_release(Landroidx/picker/model/AppInfoData;)Landroidx/picker/loader/select/AppDataSelectableItem;
    .locals 3

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v0

    new-instance v1, Landroidx/picker/loader/select/AppDataSelectableItem;

    new-instance v2, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;

    invoke-direct {v2, p0, v0}, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;-><init>(Landroidx/picker/loader/select/SelectStateLoader;Landroidx/picker/model/AppInfo;)V

    invoke-direct {v1, p1, v2}, Landroidx/picker/loader/select/AppDataSelectableItem;-><init>(Landroidx/picker/model/AppInfoData;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method
