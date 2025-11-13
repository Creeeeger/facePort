.class Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;
.super Landroid/os/Handler;
.source "SecBluetoothDetailsCodecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;Landroidx/preference/Preference;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;->val$preference:Landroidx/preference/Preference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 214
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 216
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-boolean p1, p1, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mIsCalledDestroy:Z

    if-eqz p1, :cond_1

    const-string p0, "SecBluetoothDetailsCodecController"

    const-string p1, "EVENT_LDAC_SWITCHING :: it doesn\'t need to update view, it is destroyed"

    .line 218
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;->val$preference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController$2;->this$0:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;->refresh()V

    :goto_0
    return-void
.end method
