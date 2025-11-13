.class public final Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic receiver$inlined:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2;->receiver$inlined:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    instance-of v1, p2, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;

    iget v2, v1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;-><init>(Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;->label:I

    if-eqz v3, :cond_2

    if-ne v3, v0, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object p2, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->Companion:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$Companion;

    iget-object p2, p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2;->receiver$inlined:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p2, p2, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->packageManager:Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;

    invoke-virtual {p2, v3, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "PictureInPictureListModel"

    const-string v3, "Exception while getInstalledPackagesAsUser"

    invoke-static {p2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/pm/PackageInfo;

    sget-object v5, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->Companion:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$Companion;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    add-int/2addr v6, v0

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput v0, v1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_7

    return-object v2

    :cond_7
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
