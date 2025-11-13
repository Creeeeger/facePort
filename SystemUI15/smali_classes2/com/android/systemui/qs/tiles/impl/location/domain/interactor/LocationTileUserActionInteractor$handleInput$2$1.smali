.class public final Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $wasEnabled:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1;->this$0:Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1;->$wasEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1;->this$0:Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1;->this$0:Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1;->$wasEnabled:Z

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor$handleInput$2$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/location/domain/interactor/LocationTileUserActionInteractor;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
