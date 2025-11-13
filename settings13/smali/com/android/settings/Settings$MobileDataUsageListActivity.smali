.class public Lcom/android/settings/Settings$MobileDataUsageListActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataUsageListActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 499
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 500
    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->getSMManageAppDataIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 501
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 504
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
