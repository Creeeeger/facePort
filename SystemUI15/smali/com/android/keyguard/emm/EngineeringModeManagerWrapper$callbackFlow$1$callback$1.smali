.class public final Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;->this$0:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    iget-object v0, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper$callbackFlow$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
