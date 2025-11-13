.class public final Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $listener:Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;

.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeControllerSceneImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeControllerSceneImpl;Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1$1;->this$0:Lcom/android/systemui/shade/ShadeControllerSceneImpl;

    iput-object p2, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1$1;->$listener:Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1$1;->this$0:Lcom/android/systemui/shade/ShadeControllerSceneImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeControllerSceneImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1$1$1;

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1$1;->$listener:Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/shade/ShadeControllerSceneImpl$setVisibilityListener$1$1$1;-><init>(Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
