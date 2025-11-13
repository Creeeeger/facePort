.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic $event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

.field public final synthetic $module:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;->$module:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;->$event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    iput p4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;->$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;->$module:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;->$event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$filterBands$bands$1;->$displayId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/BandAid;->getEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_e

    iget-boolean v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->runeDependency:Z

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->sPluginTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    goto/16 :goto_4

    :cond_2
    const/4 v3, -0x1

    iget v6, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->targetDisplayId:I

    if-eq v6, v3, :cond_3

    if-eq v6, p0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->targetEvents:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/Type;

    invoke-interface {v7}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_5
    move-object v6, v4

    :goto_1
    check-cast v6, Ljava/lang/reflect/Type;

    if-nez v6, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v2, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->targetModules:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/reflect/Type;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;

    invoke-virtual {v8}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_8
    move-object v3, v4

    :cond_9
    :goto_2
    check-cast v3, Ljava/lang/reflect/Type;

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band;->moduleDependencies:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Type;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;->modules:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_c
    move-object v2, v4

    :goto_3
    if-nez v2, :cond_b

    move-object v4, v1

    :cond_d
    check-cast v4, Ljava/lang/reflect/Type;

    if-nez v4, :cond_e

    const/4 v5, 0x1

    :cond_e
    :goto_4
    return v5
.end method
