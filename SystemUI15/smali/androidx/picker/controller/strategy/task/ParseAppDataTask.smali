.class public final Landroidx/picker/controller/strategy/task/ParseAppDataTask;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;


# instance fields
.field public final createAppInfoViewDatas:Lkotlin/jvm/functions/Function1;

.field public final createCategoryViewData:Lkotlin/jvm/functions/Function2;

.field public final createGroupTitleViewData:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->Companion:Landroidx/picker/controller/strategy/task/ParseAppDataTask$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createAppInfoViewDatas:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createGroupTitleViewData:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createCategoryViewData:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final createViewDatas(Ljava/util/List;)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/picker/model/appdata/CategoryAppData;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/picker/model/AppInfoData;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createCategoryViewData:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createAppInfoViewDatas:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/model/appdata/CategoryAppData;

    iget-object v6, v3, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    invoke-interface {v5, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v4, v3, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_6

    new-instance p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroidx/picker/model/AppData$CategoryAppDataBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->appInfoDataList:Ljava/util/List;

    sget-object v1, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/picker/model/AppInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->key:Ljava/lang/String;

    invoke-direct {v1, v3, p1, v2}, Landroidx/picker/model/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->label:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_3
    iget-object p0, p0, Landroidx/picker/model/AppData$CategoryAppDataBuilder;->appInfoDataList:Ljava/util/List;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Landroidx/picker/model/appdata/CategoryAppData;

    invoke-direct {v2, v1, p1, v3, p0}, Landroidx/picker/model/appdata/CategoryAppData;-><init>(Landroidx/picker/model/AppInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/List;)V

    iget-object p0, v2, Landroidx/picker/model/appdata/CategoryAppData;->appInfoDataList:Ljava/util/List;

    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {v4, v2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_4
    return-object v0
.end method

.method public final execute(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/picker/model/appdata/GroupAppData;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, p0, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createGroupTitleViewData:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/model/appdata/GroupAppData;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    invoke-virtual {p0, v3}, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createViewDatas(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    new-instance v1, Landroidx/picker/model/AppData$GroupAppDataBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroidx/picker/model/AppData$GroupAppDataBuilder;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    invoke-virtual {v1}, Landroidx/picker/model/AppData$GroupAppDataBuilder;->build()Landroidx/picker/model/appdata/GroupAppData;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createViewDatas(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/picker/controller/strategy/task/ParseAppDataTask;->createViewDatas(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-object v0
.end method
