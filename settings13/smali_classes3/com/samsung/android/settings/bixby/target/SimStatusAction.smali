.class public Lcom/samsung/android/settings/bixby/target/SimStatusAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "SimStatusAction.java"


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
    const-class v0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->taskId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 28
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->context:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 31
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Settings$SimStatusActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/SimStatusAction;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string v0, "success"

    goto :goto_0

    :cond_1
    const-string v0, "not_supported"

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
