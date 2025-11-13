.class public Lcom/android/settings/Settings$UserManualLaunchActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserManualLaunchActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 769
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 772
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 773
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getUserManualSearchURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 774
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
