.class public final Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesAutoAddableSettingFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final autoAddableSettingFactoryProvider:Ljavax/inject/Provider;

.field public final resourcesProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesAutoAddableSettingFactory;->resourcesProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesAutoAddableSettingFactory;->autoAddableSettingFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providesAutoAddableSetting(Landroid/content/res/Resources;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$48;)Ljava/util/Set;
    .locals 12

    sget-object v0, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule;->Companion:Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/AutoAddableSettingList;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/autoaddable/AutoAddableSettingList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, ":"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v4, v5, v6, v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const-string v9, "Malformed item in array: "

    const-string v10, "AutoAddableSettingList"

    if-ne v7, v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v7

    sget-object v11, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {v5}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v4

    invoke-virtual {p1, v6, v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$48;->create(Ljava/lang/String;Lcom/android/systemui/qs/pipeline/shared/TileSpec;)Lcom/android/systemui/qs/pipeline/domain/autoaddable/AutoAddableSetting;

    move-result-object v8

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesAutoAddableSettingFactory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesAutoAddableSettingFactory;->autoAddableSettingFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$48;

    invoke-static {v0, p0}, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesAutoAddableSettingFactory;->providesAutoAddableSetting(Landroid/content/res/Resources;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$48;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
