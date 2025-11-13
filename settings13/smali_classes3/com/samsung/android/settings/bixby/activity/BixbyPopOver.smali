.class public Lcom/samsung/android/settings/bixby/activity/BixbyPopOver;
.super Landroid/app/Activity;
.source "BixbyPopOver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "menu"

    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "targetTaskId"

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 37
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "temporary_unavailable"

    .line 38
    invoke-static {p0, p1}, Lcom/samsung/android/settings/bixby/BixbyUtils;->startSettingsMain(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "intent is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
