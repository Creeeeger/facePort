.class final Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;
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
.field final synthetic $forUser:I

.field final synthetic $toStore:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->$toStore:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->$forUser:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;

    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->$toStore:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->$forUser:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;

    iget-object v0, p1, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->$toStore:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$2;->$forUser:I

    const/4 v6, 0x1

    const-string/jumbo v1, "sysui_qs_tiles"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
