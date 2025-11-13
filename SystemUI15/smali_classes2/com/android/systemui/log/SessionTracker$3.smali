.class public final Lcom/android/systemui/log/SessionTracker$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/log/SessionTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/SessionTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/log/SessionTracker$3;->this$0:Lcom/android/systemui/log/SessionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricPromptDismissed()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/log/SessionTracker;->DEBUG:Z

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker$3;->this$0:Lcom/android/systemui/log/SessionTracker;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/log/SessionTracker;->endSession(ILcom/android/systemui/log/SessionTracker$SessionUiEvent;)V

    return-void
.end method

.method public final onBiometricPromptShown()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/log/SessionTracker;->DEBUG:Z

    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker$3;->this$0:Lcom/android/systemui/log/SessionTracker;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/SessionTracker;->startSession(I)V

    return-void
.end method
