.class public final Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothAdvancedSettings"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onReceive :: Intent.getAction() is return null"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "onReceive :: getAction = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroidx/preference/SecPreference;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "device_name"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    iget-boolean p2, p1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCSupportV2:Z

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCMenuUpdated:Z

    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    new-array p0, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    return-void
.end method
