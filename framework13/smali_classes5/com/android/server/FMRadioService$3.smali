.class Lcom/android/server/FMRadioService$3;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;

    .line 478
    iput-object p1, p0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Headset action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    const/16 v5, 0x9

    const-string v6, "mReceiver: bike mode check : "

    const-string v7, "TestMode :- making setRadioSpeakerOn:"

    const-string v8, "isBikeMode"

    const/16 v9, 0x8

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v14, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 484
    const-string v2, "device"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 485
    .local v2, "usbDevice":Landroid/hardware/usb/UsbDevice;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Headset getProductId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 486
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Headset getVendorId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 488
    iget-object v14, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v14, v2}, Lcom/android/server/FMRadioService;->-$$Nest$mcheckUsbExternalChipset(Lcom/android/server/FMRadioService;Landroid/hardware/usb/UsbDevice;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 489
    const-string v3, "Earphone is not compatible"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 490
    return-void

    .line 494
    :cond_1
    const-string v14, "mReceiver: ACTION_USB_HEADSET"

    invoke-static {v14}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 496
    iget-object v14, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v14, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmIsHeadsetPlugged(Lcom/android/server/FMRadioService;Z)V

    .line 499
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsTestMode(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 500
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v4

    xor-int/2addr v4, v13

    invoke-virtual {v3, v4}, Lcom/android/server/FMRadioService;->setSpeakerOn(Z)V

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v4

    xor-int/2addr v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 502
    return-void

    .line 504
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsExternalChipset "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mIsHeadsetPlug "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 505
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 506
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/PlayerExternalChipsetBase;->init(Landroid/hardware/usb/UsbDevice;)V

    .line 507
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v3, v9, v11}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_1

    .line 509
    :cond_3
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 510
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmContext(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v13, :cond_4

    move v12, v13

    :cond_4
    invoke-static {v3, v12}, Lcom/android/server/FMRadioService;->-$$Nest$fputmBikeMode(Lcom/android/server/FMRadioService;Z)V

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmBikeMode(Lcom/android/server/FMRadioService;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 512
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmBikeMode(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 513
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v3, v5, v11}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 514
    :cond_5
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/server/PlayerExternalChipsetBase;->init(Landroid/hardware/usb/UsbDevice;)V

    .line 515
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v10, :cond_6

    .line 516
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v3}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_0

    .line 518
    :cond_6
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v3}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 520
    :goto_0
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3, v4, v13}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    .line 523
    :cond_7
    :goto_1
    return-void

    .line 524
    .end local v2    # "usbDevice":Landroid/hardware/usb/UsbDevice;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "   state: "

    const-string v14, "==> intent: "

    const-string/jumbo v15, "state"

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 526
    const-string v2, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v15, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    portName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "portName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "h2w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 534
    const-string v2, "Not 3.5pi type, and audio not support play FM Radio via usb type c"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 535
    return-void

    .line 539
    :cond_9
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_a

    move v2, v13

    goto :goto_2

    :cond_a
    move v2, v12

    .line 540
    .local v2, "isMicrophoneEvent":Z
    :goto_2
    if-eqz v2, :cond_c

    .line 541
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1, v15, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v13, :cond_b

    move v14, v13

    goto :goto_3

    :cond_b
    move v14, v12

    :goto_3
    invoke-static {v3, v14}, Lcom/android/server/FMRadioService;->-$$Nest$fputmIsMicrophoneConnected(Lcom/android/server/FMRadioService;Z)V

    goto :goto_5

    .line 543
    :cond_c
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1, v15, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v13, :cond_d

    move v14, v13

    goto :goto_4

    :cond_d
    move v14, v12

    :goto_4
    invoke-static {v3, v14}, Lcom/android/server/FMRadioService;->-$$Nest$fputmIsEarphoneConnected(Lcom/android/server/FMRadioService;Z)V

    .line 545
    :goto_5
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsMicrophoneConnected(Lcom/android/server/FMRadioService;)Z

    move-result v14

    if-nez v14, :cond_f

    iget-object v14, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v14}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsEarphoneConnected(Lcom/android/server/FMRadioService;)Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_6

    :cond_e
    move v14, v12

    goto :goto_7

    :cond_f
    :goto_6
    move v14, v13

    :goto_7
    invoke-static {v3, v14}, Lcom/android/server/FMRadioService;->-$$Nest$fputmIsHeadsetPlugged(Lcom/android/server/FMRadioService;Z)V

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mIsHeadsetPlugged :"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v14, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v14}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 549
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsTestMode(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 550
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v4

    xor-int/2addr v4, v13

    invoke-virtual {v3, v4}, Lcom/android/server/FMRadioService;->setSpeakerOn(Z)V

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v4

    xor-int/2addr v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 552
    return-void

    .line 556
    :cond_10
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 557
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmContext(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "tv_out"

    invoke-static {v3, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 559
    .local v3, "tvstatus":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TV out setting value :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 560
    if-ne v3, v13, :cond_11

    .line 561
    return-void

    .line 562
    :cond_11
    iget-object v7, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->-$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 563
    iget-object v7, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v7}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    .line 565
    :cond_12
    iget-object v7, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmContext(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v8, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v13, :cond_13

    move v8, v13

    goto :goto_8

    :cond_13
    move v8, v12

    :goto_8
    invoke-static {v7, v8}, Lcom/android/server/FMRadioService;->-$$Nest$fputmBikeMode(Lcom/android/server/FMRadioService;Z)V

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v7}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmBikeMode(Lcom/android/server/FMRadioService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 567
    iget-object v6, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v6}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmBikeMode(Lcom/android/server/FMRadioService;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 568
    iget-object v6, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v6, v5, v11}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 570
    :cond_14
    iget-object v5, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 571
    iget-object v5, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v5, v10, :cond_15

    .line 572
    iget-object v5, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v5}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_9

    .line 574
    :cond_15
    iget-object v5, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v5}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 576
    :goto_9
    iget-object v5, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5, v4, v13}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    goto :goto_a

    .line 578
    :cond_16
    iget-object v4, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v4}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v5}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAudioFocusListener(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 579
    invoke-static {v12}, Lcom/android/server/FMRadioService;->-$$Nest$sfputmIsTransientPaused(Z)V

    .line 582
    .end local v3    # "tvstatus":I
    :goto_a
    goto :goto_b

    .line 583
    :cond_17
    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v3, v9, v11}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 586
    .end local v2    # "isMicrophoneEvent":Z
    :goto_b
    goto/16 :goto_10

    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 588
    const-string v2, "mReceiver: ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 589
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmContext(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_19

    move v12, v13

    :cond_19
    invoke-static {v2, v12}, Lcom/android/server/FMRadioService;->-$$Nest$fputmAirPlaneEnabled(Lcom/android/server/FMRadioService;Z)V

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAirPlaneEnabled flag :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAirPlaneEnabled(Lcom/android/server/FMRadioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 594
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmAirPlaneEnabled(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 595
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_1b

    .line 596
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 597
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_c

    .line 598
    :cond_1a
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsSeeking(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 599
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 602
    :cond_1b
    :goto_c
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x3

    invoke-static {v2, v3, v13}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    goto/16 :goto_10

    .line 604
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 606
    const-string v2, "mReceiver: ACTION_HDMI_PLUGGED"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/android/server/FMRadioService;->-$$Nest$sfgetDEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 610
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v15, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 612
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsTestMode(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 613
    return-void

    .line 615
    :cond_1e
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1, v15, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/FMRadioService;->-$$Nest$fputmIsTvOutPlugged(Lcom/android/server/FMRadioService;Z)V

    .line 617
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsTvOutPlugged(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 618
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 619
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_1f

    .line 620
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_d

    .line 622
    :cond_1f
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 624
    :goto_d
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    const/16 v3, 0xa

    invoke-static {v2, v3, v13}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    goto :goto_10

    .line 627
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.media.save_fmrecording_only"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_f

    .line 634
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 635
    const-string v2, "mReceiver: KNOX_MODE_USER_SWITCH - fmradio off"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 636
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 637
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v10, :cond_22

    .line 638
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelScan()Z

    goto :goto_e

    .line 640
    :cond_22
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->cancelSeek()V

    .line 642
    :goto_e
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    const/4 v3, 0x4

    invoke-static {v2, v3, v13}, Lcom/android/server/FMRadioService;->-$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z

    goto :goto_10

    .line 629
    :cond_23
    :goto_f
    const-string v2, "mReceiver: ACTION_SAVE_FMRECORDING_ONLY "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 630
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->-$$Nest$fgetisRecording(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 631
    const-string v2, "mReceiver: Stop recording for Camera "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 632
    iget-object v2, v0, Lcom/android/server/FMRadioService$3;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->notifyRecFinish()V

    .line 645
    :cond_24
    :goto_10
    return-void
.end method
