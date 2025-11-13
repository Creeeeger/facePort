.class public final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/16 v3, 0x9

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-eq v3, v7, :cond_0

    if-ne v3, v4, :cond_7

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v0, v6, :cond_7

    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanAttempt:I

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    iput v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne p1, v6, :cond_7

    iput v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object v1, v0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne p1, v6, :cond_7

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()V

    iput v7, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v1, v7, :cond_7

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne p1, v2, :cond_2

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    iput v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto/16 :goto_0

    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v5, :cond_4

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iput-boolean v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompleted:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    iget p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne p1, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    goto :goto_0

    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    const v0, 0x104038b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBluetoothManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iput-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    new-instance v2, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    new-instance v0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->isInTabletMode()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    new-instance p1, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
