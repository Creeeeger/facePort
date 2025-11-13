.class public Lcom/android/settings/Settings$ConnectionsSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionsSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 88
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->isLockTaskModePinned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->findActivityBelow(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    return-void

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected getContentViewResId()I
    .locals 0

    .line 73
    sget p0, Lcom/android/settings/R$layout;->sec_settings_homepage_container:I

    return p0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.settings.connection.ConnectionsSettings"

    .line 78
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ConnectionsSettingsActivity"

    const-string p1, "Connectionsettings isValidFragment"

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
