.class public final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final connectionFlow:Lkotlinx/coroutines/flow/Flow;

.field public final context:Landroid/content/Context;

.field public service:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->audioManager:Landroid/media/AudioManager;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->connectionFlow:Lkotlinx/coroutines/flow/Flow;

    const-string p0, "SmartMirroringClient"

    const-string p1, "init()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
