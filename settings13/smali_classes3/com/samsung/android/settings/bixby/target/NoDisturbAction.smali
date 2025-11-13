.class public Lcom/samsung/android/settings/bixby/target/NoDisturbAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "NoDisturbAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 20
    const-class v0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getZenMode()Z
    .locals 2

    .line 52
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public doGetAction()Landroid/os/Bundle;
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->getZenMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 87
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings.Settings$ZenModeSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->mTaskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    .line 98
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "zen_duration"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->setZenModeForDuration(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->setZenMode(ILandroid/net/Uri;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->setZenMode(ILandroid/net/Uri;)V

    :goto_0
    const-string p1, "success"

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NoDisturbAction;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
