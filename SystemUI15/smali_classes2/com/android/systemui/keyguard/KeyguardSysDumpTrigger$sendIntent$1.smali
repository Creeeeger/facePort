.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $currentUser:I

.field public final synthetic $reason:I

.field public final synthetic $timestamp:J

.field public final synthetic $userUnlocked:Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;


# direct methods
.method public constructor <init>(IZLcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$currentUser:I

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$userUnlocked:Z

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iput p4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$reason:I

    iput-wide p5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$currentUser:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$userUnlocked:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget v2, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$reason:I

    iget-wide v3, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->$timestamp:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->access$sendBroadcastToIssueTracker(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "occluded"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x10000000

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "KeyguardSysDumpTrigger"

    const-string/jumbo v2, "unable to start activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
