.class final Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $mediaHostVisible:Z

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->$mediaHostVisible:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;

    iget-boolean p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->$mediaHostVisible:Z

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x1

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->label:I

    if-nez v1, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/smartspace/SmartspaceTarget;

    new-instance v13, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceTarget;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v8

    const/4 v12, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;JLcom/android/systemui/communal/shared/model/CommunalContentSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1;->$mediaHostVisible:Z

    if-eqz p0, :cond_1

    iget-boolean p0, v1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->hasActiveMediaOrRecommendation:Z

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;

    iget-wide v4, v1, Lcom/android/systemui/communal/data/model/CommunalMediaModel;->createdTimestampMillis:J

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;-><init>(JLcom/android/systemui/communal/shared/model/CommunalContentSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v0, :cond_2

    new-instance p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1$invokeSuspend$$inlined$sortByDescending$1;

    invoke-direct {p0}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$getOngoingContent$1$invokeSuspend$$inlined$sortByDescending$1;-><init>()V

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    if-ltz p1, :cond_7

    check-cast v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Ongoing;

    sget-object v5, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->Companion:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$Companion;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->$ENTRIES:Lkotlin/enums/EnumEntries;

    move-object v7, v5

    check-cast v7, Lkotlin/collections/AbstractCollection;

    invoke-virtual {v7}, Lkotlin/collections/AbstractCollection;->getSize()I

    move-result v8

    rem-int/2addr v6, v8

    sget-object v8, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->Companion:Lcom/android/systemui/communal/shared/model/CommunalContentSize$Companion;

    sget-object v9, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->FULL:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    invoke-virtual {v9}, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->getSpan()I

    move-result v9

    add-int/lit8 v10, v6, -0x1

    if-le p1, v10, :cond_3

    invoke-virtual {v7}, Lkotlin/collections/AbstractCollection;->getSize()I

    move-result v6

    :cond_3
    div-int/2addr v9, v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lkotlin/collections/AbstractList;

    invoke-virtual {v5}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    invoke-virtual {v6}, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->getSpan()I

    move-result v6

    if-ne v6, v9, :cond_4

    move-object v4, v5

    :cond_5
    check-cast v4, Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    if-eqz v4, :cond_6

    invoke-interface {v1, v4}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Ongoing;->setSize(Lcom/android/systemui/communal/shared/model/CommunalContentSize;)V

    move p1, v3

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Invalid span for communal content size"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v4

    :cond_8
    return-object v2

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
