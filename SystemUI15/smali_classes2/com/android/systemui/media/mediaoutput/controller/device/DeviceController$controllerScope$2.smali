.class final Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$controllerScope$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$controllerScope$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$controllerScope$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->controllerJob$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/JobImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    return-object p0
.end method
