.class Lcom/android/settings/security/ScreenPinningSettings$1;
.super Landroid/database/ContentObserver;
.source "ScreenPinningSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/ScreenPinningSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/ScreenPinningSettings;Landroid/os/Handler;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings$1;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings$1;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-static {p1}, Lcom/android/settings/security/ScreenPinningSettings;->-$$Nest$fgetmSwitchBar(Lcom/android/settings/security/ScreenPinningSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings$1;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-static {p1}, Lcom/android/settings/security/ScreenPinningSettings;->-$$Nest$fgetmSwitchBar(Lcom/android/settings/security/ScreenPinningSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/security/ScreenPinningSettings$1;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/security/ScreenPinningSettings;->-$$Nest$smisLockToAppEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method
