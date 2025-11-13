.class public Lcom/samsung/android/settings/bixby/target/SettingsMainAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "SettingsMainAction.java"


# instance fields
.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/SettingsMainAction;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/SettingsMainAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 26
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 27
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SettingsMainAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SettingsMainAction;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SettingsMainAction;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/SettingsMainAction;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "success"

    goto :goto_1

    :cond_1
    const-string p1, "fail"

    .line 41
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
