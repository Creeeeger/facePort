.class Lcom/android/systemui/log/SessionTracker$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/log/SessionTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/SessionTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/SessionTracker$1;->this$0:Lcom/android/systemui/log/SessionTracker;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartedGoingToSleep(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker$1;->this$0:Lcom/android/systemui/log/SessionTracker;

    iget-boolean p1, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardSessionStarted:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->KEYGUARD_SESSION_END_GOING_TO_SLEEP:Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/log/SessionTracker;->endSession(ILcom/android/systemui/log/SessionTracker$SessionUiEvent;)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardSessionStarted:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/SessionTracker;->startSession(I)V

    return-void
.end method
