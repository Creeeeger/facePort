.class public Lcom/samsung/android/settings/bixby/target/SoftwareUpdateAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "SoftwareUpdateAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    const-string v0, "SoftwareUpdateAction"

    .line 13
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoftwareUpdateAction;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/SoftwareUpdateAction;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/SoftwareUpdateAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 26
    :try_start_0
    new-instance p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixbyController;

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoftwareUpdateAction;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixbyController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixbyController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SoftwareUpdateAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "SoftwareUpdateAction"

    const-string v1, "failed to start activity : "

    .line 30
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "not_supported"

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
