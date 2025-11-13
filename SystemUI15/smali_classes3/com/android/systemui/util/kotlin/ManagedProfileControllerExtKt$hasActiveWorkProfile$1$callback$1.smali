.class public final Lcom/android/systemui/util/kotlin/ManagedProfileControllerExtKt$hasActiveWorkProfile$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;


# instance fields
.field final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope;"
        }
    .end annotation
.end field

.field final synthetic $this_hasActiveWorkProfile:Lcom/android/systemui/statusbar/phone/ManagedProfileController;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/statusbar/phone/ManagedProfileController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/ManagedProfileControllerExtKt$hasActiveWorkProfile$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/ManagedProfileControllerExtKt$hasActiveWorkProfile$1$callback$1;->$this_hasActiveWorkProfile:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagedProfileChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/ManagedProfileControllerExtKt$hasActiveWorkProfile$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/ManagedProfileControllerExtKt$hasActiveWorkProfile$1$callback$1;->$this_hasActiveWorkProfile:Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->hasActiveProfile()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onManagedProfileRemoved()V
    .locals 0

    return-void
.end method
