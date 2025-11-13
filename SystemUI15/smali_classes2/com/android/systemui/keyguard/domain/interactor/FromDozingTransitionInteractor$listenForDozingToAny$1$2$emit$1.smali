.class final Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field L$0:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field Z$2:Z

.field Z$3:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2$emit$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1$2;->emit(Lcom/android/systemui/util/kotlin/Quint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
