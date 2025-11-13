.class public final synthetic Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;Landroidx/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;->f$2:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    move-object v2, p0

    check-cast v2, Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/PanProfile;->isNapEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->stopTethering(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mHandler:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$1;

    const/4 v3, 0x1

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v3, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mIsWorkingSwitchAnimation:Z

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->onProfileClicked(Landroidx/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_0
    return-void
.end method
