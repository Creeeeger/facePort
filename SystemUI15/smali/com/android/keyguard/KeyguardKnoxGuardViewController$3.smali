.class Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemoteLockInfoChanged()V
    .locals 3

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "onRemoteLockInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda8;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 3

    const-string v0, "onSimStateChanged subID : "

    const-string v1, ", slotId : "

    const-string v2, ", simState : "

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "KeyguardKnoxGuardView"

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    const/4 p1, 0x5

    if-ne p3, p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateNetworkSettingsButton()V

    :cond_1
    return-void
.end method
