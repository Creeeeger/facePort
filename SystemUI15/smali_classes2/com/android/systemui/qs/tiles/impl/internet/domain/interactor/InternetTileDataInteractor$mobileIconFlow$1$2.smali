.class final Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;-><init>(Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Triple;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    move-object v6, v1

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/Triple;

    invoke-virtual {v2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;

    invoke-virtual {v2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    invoke-virtual {v2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    instance-of v7, v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/NetworkNameModel;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->Companion:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_3

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, ""

    :goto_0
    move-object v2, v5

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v7, v7, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->context:Landroid/content/Context;

    const v9, 0x7f130c12

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    :goto_1
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;

    iget-object v7, v5, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->mainCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2$drawable$1;

    invoke-direct {v8, v5, v3}, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2$drawable$1;-><init>(Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->label:I

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_5

    return-object v1

    :cond_5
    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    :goto_2
    check-cast v4, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;->getLevel()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    new-instance v9, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    invoke-direct {v9, v4, v3}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Active;

    new-instance v10, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->internetLabel:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Active;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_6
    instance-of v1, v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/systemui/common/shared/model/ContentDescription;->Companion:Lcom/android/systemui/common/shared/model/ContentDescription$Companion;

    check-cast v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    iget-object v2, v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object v2, v2, Lcom/android/systemui/common/shared/model/Icon$Resource;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/systemui/common/shared/model/ContentDescription$Companion;->loadContentDescription(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Active;

    iget-object v2, v6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget v2, v2, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v12, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    invoke-direct {v12, v8}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor$mobileIconFlow$1$2;->this$0:Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/internet/domain/interactor/InternetTileDataInteractor;->internetLabel:Ljava/lang/String;

    invoke-direct {v13, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v14, 0xa

    const/4 v15, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lcom/android/systemui/qs/tiles/impl/internet/domain/model/InternetTileModel$Active;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Text;Ljava/lang/Integer;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/common/shared/model/ContentDescription;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    return-object v1

    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
