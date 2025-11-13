.class public final Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, p1

    goto :goto_0

    :sswitch_1
    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    :sswitch_2
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const-string p1, "android.bluetooth.extra.TETHERING_STATE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    if-ne p1, v0, :cond_4

    const-string/jumbo p1, "off"

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "on"

    :goto_1
    const-string v0, "BT tethering state: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateController()V

    goto/16 :goto_6

    :pswitch_1
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->getPanStateMessage(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PAN connection state: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, p1, :cond_7

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    if-eq p2, v0, :cond_6

    const/4 p1, 0x3

    if-ne p2, p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$msetPrefEnabled(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$msetPrefEnabled(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateController()V

    goto :goto_6

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-eq p1, p2, :cond_c

    const/16 p2, 0xb

    if-ne p1, p2, :cond_a

    goto :goto_4

    :cond_a
    const/16 p2, 0xc

    if-eq p1, p2, :cond_b

    const/16 p2, 0xa

    if-ne p1, p2, :cond_d

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$msetPrefEnabled(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V

    goto :goto_5

    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->-$$Nest$msetPrefEnabled(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V

    :cond_d
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateController()V

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_2
        -0x32445438 -> :sswitch_1
        -0x31501ea2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
