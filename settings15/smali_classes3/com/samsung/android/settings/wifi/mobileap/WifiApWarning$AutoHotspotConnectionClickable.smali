.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final focusOnDisconnectNotInUsePreference:Z

.field public final mDialog:Landroid/app/AlertDialog;

.field public final shouldDismissDialogOnClick:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field public final useSubSetting:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/AlertDialog;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->mDialog:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->shouldDismissDialogOnClick:Z

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->focusOnDisconnectNotInUsePreference:Z

    iput-boolean p4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->useSubSetting:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->useSubSetting:Z

    if-eqz p1, :cond_1

    const-string p1, ":settings:fragment_args_key"

    const-string v0, "disconnect_when_not_in_use"

    invoke-static {p1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/AutoConnectHotspotSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->focusOnDisconnectNotInUsePreference:Z

    if-eqz v1, :cond_0

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.setttings.WIFI_AUTO_HOTSPOT_CONNECTIONS_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->shouldDismissDialogOnClick:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_2
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x0

    iput p0, p1, Landroid/text/TextPaint;->linkColor:I

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
