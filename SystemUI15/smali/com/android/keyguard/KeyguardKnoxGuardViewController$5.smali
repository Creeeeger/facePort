.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->-$$Nest$mcheckUnlockAttempts(Lcom/android/keyguard/KeyguardKnoxGuardViewController;IJ)V

    :goto_0
    return-void
.end method
