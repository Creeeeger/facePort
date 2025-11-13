.class public final synthetic Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$1:Z

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$2:Z

    iput-boolean p4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$3:Z

    iput-boolean p5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$1:Z

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$2:Z

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$3:Z

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;->f$4:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "showing"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "occluded"

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "bouncerShowing"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "bouncerModeChanging"

    invoke-virtual {v4, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v4, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "broadcast intent= "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
