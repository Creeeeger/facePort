.class Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecUsbTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbTetherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;-><init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

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

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fputmMassStorageActive(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fputmMassStorageActive(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V

    .line 120
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    goto :goto_0

    :cond_2
    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    const-string v0, "connected"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fputmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;Z)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->updateController()V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$fgetmUsbConnected(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 126
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TMB"

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "ASR"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMetroPCS()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 128
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherReceiver;->this$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;->-$$Nest$mremoveDialog(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController;I)V

    :cond_4
    :goto_0
    return-void
.end method
