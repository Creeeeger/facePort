.class final Lcom/android/systemui/aibrief/control/BriefNowBarController$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aibrief/control/BriefNowBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$1$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/aibrief/control/BriefNowBarController$1$1;->emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$1$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {p2, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->access$updateNowBar(Lcom/android/systemui/aibrief/control/BriefNowBarController;Z)V

    iget-object p2, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$1$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {p2, p1}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->access$updateRemoteNowBar(Lcom/android/systemui/aibrief/control/BriefNowBarController;Z)V

    iget-object p0, p0, Lcom/android/systemui/aibrief/control/BriefNowBarController$1$1;->this$0:Lcom/android/systemui/aibrief/control/BriefNowBarController;

    invoke-static {p0}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->access$getViewController$p(Lcom/android/systemui/aibrief/control/BriefNowBarController;)Lcom/android/systemui/aibrief/ui/BriefViewController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/aibrief/ui/BriefViewController;->updateViewAlpha(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
