.class public Lcom/samsung/android/settings/bixby/target/DualMessengerAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "DualMessengerAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 13
    const-class v0, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 27
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    const-string p1, "not_supported"

    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.da.daagent"

    const-string v1, "com.samsung.android.da.daagent.activity.DualAppActivity"

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 38
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/DualMessengerAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_3
    const-string p1, "fail"

    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
