.class public Lcom/android/settings/Settings$FOTASuggestionActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FOTASuggestionActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 873
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 876
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 877
    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->checkNewSoftwareUpdate(Landroid/content/Context;)V

    .line 878
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
