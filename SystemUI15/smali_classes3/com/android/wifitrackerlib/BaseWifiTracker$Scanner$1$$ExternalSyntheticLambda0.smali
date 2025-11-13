.class public final synthetic Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;

    iput p2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;

    iget p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    iget-boolean v2, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v1, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to scan! Reason: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;->this$1:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->scanLoop()V

    :goto_0
    return-void
.end method
