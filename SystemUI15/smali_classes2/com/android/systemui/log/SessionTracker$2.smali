.class public final Lcom/android/systemui/log/SessionTracker$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/log/SessionTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/SessionTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/SessionTracker$2;->this$0:Lcom/android/systemui/log/SessionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker$2;->this$0:Lcom/android/systemui/log/SessionTracker;

    iget-boolean v0, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardSessionStarted:Z

    iget-object v1, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardSessionStarted:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/log/SessionTracker;->startSession(I)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/log/SessionTracker;->mKeyguardSessionStarted:Z

    sget-object v0, Lcom/android/systemui/log/SessionTracker$SessionUiEvent;->KEYGUARD_SESSION_END_KEYGUARD_GOING_AWAY:Lcom/android/systemui/log/SessionTracker$SessionUiEvent;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/log/SessionTracker;->endSession(ILcom/android/systemui/log/SessionTracker$SessionUiEvent;)V

    :cond_1
    :goto_0
    return-void
.end method
