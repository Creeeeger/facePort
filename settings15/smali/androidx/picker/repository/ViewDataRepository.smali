.class public final Landroidx/picker/repository/ViewDataRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final dataLoader:Landroidx/picker/loader/DataLoaderImpl;

.field public final selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;


# direct methods
.method public constructor <init>(Landroidx/picker/loader/DataLoaderImpl;Landroidx/picker/loader/select/SelectStateLoader;)V
    .locals 1

    const-string v0, "dataLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectStateLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/repository/ViewDataRepository;->dataLoader:Landroidx/picker/loader/DataLoaderImpl;

    iput-object p2, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    return-void
.end method


# virtual methods
.method public final createAppInfoViewData(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/viewdata/AppInfoViewData;
    .locals 9

    const-string v0, "appInfoData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v0

    new-instance v7, Landroidx/picker/model/viewdata/AppInfoViewData;

    new-instance v3, Landroidx/picker/loader/AppIconFlow;

    new-instance v1, Landroidx/picker/repository/ViewDataRepository$createAppInfoViewData$1;

    invoke-direct {v1, p1}, Landroidx/picker/features/observable/UpdateMutableState;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Landroidx/picker/repository/ViewDataRepository;->dataLoader:Landroidx/picker/loader/DataLoaderImpl;

    invoke-virtual {v8, v0}, Landroidx/picker/loader/DataLoaderImpl;->loadIcon(Landroidx/picker/model/AppInfo;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Landroidx/picker/loader/AppIconFlow;-><init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p0, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    invoke-virtual {p0, p1}, Landroidx/picker/loader/select/SelectStateLoader;->createSelectableItem$picker_app_release(Landroidx/picker/model/AppInfoData;)Landroidx/picker/loader/select/AppDataSelectableItem;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/picker/model/viewdata/AppInfoViewData;-><init>(Landroidx/picker/model/AppInfoData;Landroidx/picker/loader/AppIconFlow;Landroidx/picker/loader/select/SelectableItem;ILkotlin/jvm/functions/Function1;)V

    invoke-interface {p1}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v8, Landroidx/picker/loader/DataLoaderImpl;->labelMap$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "<get-labelMap>(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, v8, Landroidx/picker/loader/DataLoaderImpl;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelperImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Unknown"

    const-string v3, "can\'t find label for "

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    iget v6, v0, Landroidx/picker/model/AppInfo;->user:I

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v1}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v8, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    const-string v5, "pm.getActivityInfo(componentName, 0)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {p1, v5, v1}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object v5

    :try_start_1
    invoke-virtual {v5, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    const-string v6, "pm.getApplicationInfo(packageName, 0)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v4

    goto :goto_0

    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getAppLabel key="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    :cond_1
    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    :cond_2
    invoke-virtual {v7, p0}, Landroidx/picker/model/viewdata/AppInfoViewData;->setLabel(Ljava/lang/String;)V

    return-object v7
.end method

.method public final createCategoryViewData(Landroidx/picker/model/appdata/CategoryAppData;Ljava/util/List;)Landroidx/picker/model/viewdata/CategoryViewData;
    .locals 2

    const-string v0, "appData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewDataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, v1, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/picker/repository/ViewDataRepository;->selectStateLoader:Landroidx/picker/loader/select/SelectStateLoader;

    invoke-virtual {p0, p1, v0}, Landroidx/picker/loader/select/SelectStateLoader;->createCategorySelectableItem$picker_app_release(Landroidx/picker/model/appdata/CategoryAppData;Ljava/util/List;)Landroidx/picker/loader/select/CategorySelectableItem;

    move-result-object p0

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    new-instance v0, Landroidx/picker/model/viewdata/CategoryViewData;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p0, p2}, Landroidx/picker/model/viewdata/CategoryViewData;-><init>(Landroidx/picker/model/appdata/CategoryAppData;Landroidx/picker/loader/select/CategorySelectableItem;Ljava/util/List;)V

    return-object v0
.end method
