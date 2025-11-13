.class public final Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$colorDisplayManagerChangeEventFlow$1$nightDisplayCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$colorDisplayManagerChangeEventFlow$1$nightDisplayCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivated(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$colorDisplayManagerChangeEventFlow$1$nightDisplayCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnActivatedChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnActivatedChanged;-><init>(Z)V

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAutoModeChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$colorDisplayManagerChangeEventFlow$1$nightDisplayCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnAutoModeChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnAutoModeChanged;-><init>(I)V

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$colorDisplayManagerChangeEventFlow$1$nightDisplayCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomEndTimeChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomEndTimeChanged;-><init>(Ljava/time/LocalTime;)V

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/NightDisplayRepository$colorDisplayManagerChangeEventFlow$1$nightDisplayCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomStartTimeChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/accessibility/data/model/NightDisplayChangeEvent$OnCustomStartTimeChanged;-><init>(Ljava/time/LocalTime;)V

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
