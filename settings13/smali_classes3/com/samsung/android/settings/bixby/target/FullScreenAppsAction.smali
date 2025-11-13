.class public Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "FullScreenAppsAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 14
    const-class v0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 28
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFullScreenApps()Z

    move-result p1

    const-string v0, "not_supported"

    if-eqz p1, :cond_3

    .line 29
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result p1

    const-string v1, "success"

    const-string v2, "com.android.settings.Settings$FullScreenAppsSettingsActivity"

    const v3, 0x10008000

    if-eqz p1, :cond_1

    .line 30
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 34
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 46
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 47
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FullScreenAppsAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "fail"

    .line 62
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
