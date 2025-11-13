.class public Lcom/android/settings/Settings$XcoverTopKeySettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XcoverTopKeySettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasActiveKey()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result p1

    if-nez p1, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
