.class final Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;
.super Ljava/lang/Object;
.source "GtsExpressionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StoreContentsDelegate"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsExpressionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsExpressionBuilder.kt\ncom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,371:1\n352#2,7:372\n67#3:379\n92#3,3:380\n*E\n*S KotlinDebug\n*F\n+ 1 GtsExpressionBuilder.kt\ncom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate\n*L\n356#1,7:372\n364#1:379\n364#1,3:380\n*E\n"
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/gtscell/data/GtsStoreType;",
            "Ljava/util/Set<",
            "Lcom/samsung/android/gtscell/data/GtsStorePackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getOrPut(Lcom/samsung/android/gtscell/data/GtsStoreType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/GtsStoreType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;->map:Ljava/util/Map;

    .line 372
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 375
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    check-cast v0, Ljava/util/Set;

    .line 359
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsStorePackage;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/gtscell/data/GtsStorePackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toStoreContentsMap()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsStoreContents;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 364
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 380
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 366
    new-instance v2, Lcom/samsung/android/gtscell/data/GtsStoreContents;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gtscell/data/GtsStoreType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/gtscell/data/GtsStoreContents;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method
