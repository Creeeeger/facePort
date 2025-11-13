.class public final Lcom/android/systemui/assist/AssistManager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAssistantGestureCompletion(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->animateInvocationCompletion()V

    const/high16 p1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/ui/DefaultUiController;->logInvocationProgressMetrics(FZ)V

    return-void
.end method

.method public final onAssistantProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->onInvocationProgress(F)V

    return-void
.end method
