.class public final Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$1$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$1$listener$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    iput-object p2, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$1$listener$1;->this$0:Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;

    iget v0, v0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository;->displayId:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/brightness/data/repository/ScreenBrightnessDisplayManagerRepository$brightnessInfo$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
