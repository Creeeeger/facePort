.class Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecBluetoothTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothTetherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;-><init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateController()V

    goto/16 :goto_3

    :cond_0
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 204
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 208
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_4

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_e

    .line 213
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmIsEnabledForTether(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 214
    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 215
    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p2, v4}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$msetBluetoothTethering(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V

    .line 217
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fputmIsEnabledForTether(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V

    .line 218
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 219
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 221
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateController()V

    goto/16 :goto_3

    .line 210
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$mupdateBluetoothSubText(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V

    goto/16 :goto_3

    :cond_5
    const-string v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 227
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 228
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PAN connection state changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_8

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    if-eq p1, v4, :cond_7

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    .line 233
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 231
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 235
    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateController()V

    goto/16 :goto_3

    :cond_a
    const-string v0, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 238
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isBluetoothTetheringOn()Z

    move-result p2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 241
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 242
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 243
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isBluetoothTetheringOn()Z

    move-result v0

    const/16 v3, 0x14

    const-string v4, "android.bluetooth.adapter.extra.SCAN_MODE"

    .line 249
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 251
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    if-eqz v0, :cond_e

    if-eq p2, v2, :cond_e

    .line 252
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 253
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 260
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "networkInfo"

    .line 261
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 262
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 263
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WIFI connected :: disable PAN NAP (VZW requirement)"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p0, v3}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$msetBluetoothTethering(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V

    goto :goto_3

    :cond_d
    const-string v0, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "android.bluetooth.extra.TETHERING_STATE"

    .line 268
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 270
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BT Tethering state changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateController()V

    :cond_e
    :goto_3
    return-void
.end method
