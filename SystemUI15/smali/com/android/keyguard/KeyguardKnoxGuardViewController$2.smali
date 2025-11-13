.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "timeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Unlock attempt result : "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timeout : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "KeyguardKnoxGuardView"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
