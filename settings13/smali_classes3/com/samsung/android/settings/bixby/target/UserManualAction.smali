.class public Lcom/samsung/android/settings/bixby/target/UserManualAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "UserManualAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 14
    const-class v0, Lcom/samsung/android/settings/bixby/target/UserManualAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/UserManualAction;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/UserManualAction;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/UserManualAction;->mTaskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/UserManualAction;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getUserManualSearchURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/UserManualAction;->mTaskId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/UserManualAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "success"

    goto :goto_0

    :cond_0
    const-string v0, "fail"

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/UserManualAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOpenAction() : target : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
