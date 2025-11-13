.class public final Lcom/android/settings/wifi/WifiSettings$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/wifi/ConnectedListAdapter$OnEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "onItemClicked - connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->signIn()V

    :cond_5
    :goto_2
    return-void
.end method
