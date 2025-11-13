.class public Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "ScreenTimeoutAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private taskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 20
    const-class v0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Landroid/os/Bundle;
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_0

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 38
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->context:Landroid/content/Context;

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_config_screen_timeout"

    .line 38
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "temporary_unavailable"

    goto :goto_0

    .line 44
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.ScreenTimeout"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->taskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_3
    const-string p1, "fail"

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenTimeoutAction;->context:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setScreenTimeout(Landroid/content/Context;J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
