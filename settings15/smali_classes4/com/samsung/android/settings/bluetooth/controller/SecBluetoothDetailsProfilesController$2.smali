.class public final Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

.field public final synthetic val$asha:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field public final synthetic val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final synthetic val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field public final synthetic val$profilePref:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroidx/preference/Preference;Lcom/android/settingslib/bluetooth/HearingAidProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$profilePref:Landroidx/preference/Preference;

    iput-object p5, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$asha:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mIsPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$profilePref:Landroidx/preference/Preference;

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$asha:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$2;->val$profilePref:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
