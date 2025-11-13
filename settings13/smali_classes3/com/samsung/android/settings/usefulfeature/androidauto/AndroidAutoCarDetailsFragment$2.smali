.class Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;
.super Landroid/os/Handler;
.source "AndroidAutoCarDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->onProfileClicked(Landroidx/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;

.field final synthetic val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 437
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 439
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->-$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;->val$profile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :goto_0
    return-void
.end method
