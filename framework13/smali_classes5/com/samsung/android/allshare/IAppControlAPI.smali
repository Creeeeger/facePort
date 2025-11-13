.class Lcom/samsung/android/allshare/IAppControlAPI;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;
    }
.end annotation


# static fields
.field private static final blacklist DTVSERVER_PORT:I = 0xd6d8

.field private static final blacklist TAG:Ljava/lang/String; = "IAppControlAPI"


# instance fields
.field private blacklist bIsRunningConnection:Z

.field private blacklist mDeviceId:Ljava/lang/String;

.field private blacklist mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

.field public blacklist mExcutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mServerIp:Ljava/lang/String;

.field private blacklist mSetIpaddress:I

.field blacklist mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

.field blacklist mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/IAppControlAPI;)Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/samsung/android/allshare/IAppControlAPI;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputbIsRunningConnection(Lcom/samsung/android/allshare/IAppControlAPI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->bIsRunningConnection:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateControlReceiver(Lcom/samsung/android/allshare/IAppControlAPI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/IAppControlAPI;->createControlReceiver()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mServerIp:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mSetIpaddress:I

    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->bIsRunningConnection:Z

    .line 63
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mLock:Ljava/lang/Object;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mExcutor:Ljava/util/concurrent/ExecutorService;

    .line 76
    iput-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 95
    return-void
.end method

.method private blacklist createControlReceiver()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->initControlReceiver(Lcom/samsung/android/allshare/TVMessageSender;)V

    .line 225
    :cond_0
    return-void
.end method

.method private blacklist initControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "Deviceid"    # Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mDeviceId:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/samsung/android/allshare/TVMessageSender;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/TVMessageSender;-><init>(Lcom/samsung/android/allshare/IAppControlAPI;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/allshare/TVMessageSender;->start()V

    .line 122
    return-void
.end method

.method private blacklist initControlReceiver(Lcom/samsung/android/allshare/TVMessageSender;)V
    .locals 2
    .param p1, "tl"    # Lcom/samsung/android/allshare/TVMessageSender;

    .line 130
    new-instance v0, Lcom/samsung/android/allshare/TVMessageListener;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/TVMessageListener;-><init>(Lcom/samsung/android/allshare/TVMessageSender;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    .line 131
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/TVMessageListener;->setOnEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/TVMessageListener;->start()V

    .line 133
    return-void
.end method

.method private blacklist sendMsgToDevice(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/allshare/TVMessageSender;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/samsung/android/allshare/TVMessageSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    :cond_0
    return-void
.end method

.method private blacklist setIpaddress(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ipaddress"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 104
    iput-object p1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mServerIp:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mSetIpaddress:I

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist addControlEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/TVMessageListener;->setOnEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 257
    const/4 v0, 0x1

    return v0

    .line 259
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeControl()V
    .locals 3

    .line 281
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    iput v1, v0, Landroid/os/Message;->what:I

    .line 286
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 287
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    .line 289
    iput v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mSetIpaddress:I

    .line 290
    return-void
.end method

.method public blacklist removeControlEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sendAuthentication()V
    .locals 2

    .line 342
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 343
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x34

    iput v1, v0, Landroid/os/Message;->what:I

    .line 344
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 345
    return-void
.end method

.method public blacklist sendIntCommand(II)V
    .locals 1
    .param p1, "command_type"    # I
    .param p2, "keybutton_cmd"    # I

    .line 397
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 398
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 399
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 401
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 402
    return-void
.end method

.method public blacklist sendKeyEvent(I)V
    .locals 2
    .param p1, "keycode"    # I

    .line 352
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 354
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 356
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 357
    return-void
.end method

.method public blacklist sendKeyboardEnd()V
    .locals 2

    .line 445
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 448
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 449
    return-void
.end method

.method public blacklist sendKeyboardEvent(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 364
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 365
    .local v0, "m_msg":Landroid/os/Message;
    move-object v0, p1

    .line 366
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 367
    return-void
.end method

.method public blacklist sendKeyboardStringCommand(Ljava/lang/String;I)V
    .locals 2
    .param p1, "keycode"    # Ljava/lang/String;
    .param p2, "encoding"    # I

    .line 375
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 377
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 378
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 381
    return-void
.end method

.method public blacklist sendMouseCreate()V
    .locals 2

    .line 452
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 453
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 455
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 456
    return-void
.end method

.method public blacklist sendMouseDestroy()V
    .locals 2

    .line 459
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 460
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 462
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 463
    return-void
.end method

.method public blacklist sendMouseProcess(IIIIII)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "button"    # I

    .line 466
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 468
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    new-instance v1, Lcom/samsung/android/allshare/EventMouse;

    invoke-direct {v1}, Lcom/samsung/android/allshare/EventMouse;-><init>()V

    .line 471
    .local v1, "ieventMouse":Lcom/samsung/android/allshare/EventMouse;
    iput p1, v1, Lcom/samsung/android/allshare/EventMouse;->mType:I

    .line 472
    iput p2, v1, Lcom/samsung/android/allshare/EventMouse;->mX:I

    .line 473
    iput p3, v1, Lcom/samsung/android/allshare/EventMouse;->mY:I

    .line 474
    iput p4, v1, Lcom/samsung/android/allshare/EventMouse;->mDX:I

    .line 475
    iput p5, v1, Lcom/samsung/android/allshare/EventMouse;->mDY:I

    .line 476
    iput p6, v1, Lcom/samsung/android/allshare/EventMouse;->mButton:I

    .line 477
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 479
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 480
    return-void
.end method

.method public blacklist sendMultiTouchEvent(IDIII)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "zoomRate"    # D
    .param p4, "angle"    # I
    .param p5, "cx"    # I
    .param p6, "cy"    # I

    .line 426
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 428
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 430
    new-instance v1, Lcom/samsung/android/allshare/EventTouch;

    invoke-direct {v1}, Lcom/samsung/android/allshare/EventTouch;-><init>()V

    .line 431
    .local v1, "ieventTouch":Lcom/samsung/android/allshare/EventTouch;
    iput p1, v1, Lcom/samsung/android/allshare/EventTouch;->mType:I

    .line 432
    double-to-int v2, p2

    iput v2, v1, Lcom/samsung/android/allshare/EventTouch;->mDistance:I

    .line 433
    iput p4, v1, Lcom/samsung/android/allshare/EventTouch;->mDegree:I

    .line 434
    iput p5, v1, Lcom/samsung/android/allshare/EventTouch;->mX:I

    .line 435
    iput p6, v1, Lcom/samsung/android/allshare/EventTouch;->mY:I

    .line 437
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 441
    return-void
.end method

.method public blacklist sendRemoteControlKey(Ljava/lang/String;I)V
    .locals 2
    .param p1, "keycode"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 384
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 385
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 386
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 387
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 389
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 390
    return-void
.end method

.method public blacklist sendSocketIsNotConnectedEvent()V
    .locals 2

    .line 79
    new-instance v0, Lcom/samsung/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventSync;-><init>()V

    .line 80
    .local v0, "event":Lcom/samsung/android/allshare/EventSync;
    const/16 v1, 0x270f

    iput v1, v0, Lcom/samsung/android/allshare/EventSync;->mWhat:I

    .line 82
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1, v0}, Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;->controlEvent(Lcom/samsung/android/allshare/EventSync;)V

    .line 85
    :cond_0
    return-void
.end method

.method public blacklist sendTouchGestureEvent(IIIII)V
    .locals 2
    .param p1, "nType"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 405
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 407
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 409
    new-instance v1, Lcom/samsung/android/allshare/EventTouch;

    invoke-direct {v1}, Lcom/samsung/android/allshare/EventTouch;-><init>()V

    .line 410
    .local v1, "ieventTouch":Lcom/samsung/android/allshare/EventTouch;
    iput p1, v1, Lcom/samsung/android/allshare/EventTouch;->mType:I

    .line 411
    iput p2, v1, Lcom/samsung/android/allshare/EventTouch;->mX:I

    .line 412
    iput p3, v1, Lcom/samsung/android/allshare/EventTouch;->mY:I

    .line 413
    iput p4, v1, Lcom/samsung/android/allshare/EventTouch;->mDX:I

    .line 414
    iput p5, v1, Lcom/samsung/android/allshare/EventTouch;->mDY:I

    .line 415
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 418
    return-void
.end method

.method public blacklist setOnEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 88
    iput-object p1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 89
    return-void
.end method

.method public blacklist setTouchGestureTouchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 330
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 331
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 332
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 333
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 334
    return-void
.end method

.method public blacklist startControl(Lcom/samsung/android/allshare/NetworkSocketInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "netinfo"    # Lcom/samsung/android/allshare/NetworkSocketInfo;
    .param p2, "devicdid"    # Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mPort:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/allshare/IAppControlAPI;->setIpaddress(Ljava/lang/String;I)V

    .line 154
    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/IAppControlAPI;->initControl(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/IAppControlAPI;->initControlReceiver(Lcom/samsung/android/allshare/TVMessageSender;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/allshare/IAppControlAPI$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/allshare/IAppControlAPI$1;-><init>(Lcom/samsung/android/allshare/IAppControlAPI;Lcom/samsung/android/allshare/NetworkSocketInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 169
    :cond_1
    return-void
.end method

.method public blacklist startControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "ipaddress"    # Ljava/lang/String;
    .param p3, "deviceid"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->bIsRunningConnection:Z

    .line 181
    new-instance v1, Lcom/samsung/android/allshare/NetworkSocketInfo;

    invoke-direct {v1}, Lcom/samsung/android/allshare/NetworkSocketInfo;-><init>()V

    .line 184
    .local v1, "inet":Lcom/samsung/android/allshare/NetworkSocketInfo;
    const v2, 0xd6d8

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/allshare/IAppControlAPI;->setIpaddress(Ljava/lang/String;I)V

    .line 185
    iput-object p1, v1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mMacAddr:Ljava/lang/String;

    .line 187
    iput-object p2, v1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    .line 188
    iput v2, v1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mPort:I

    .line 189
    iput v0, v1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mProtocol:I

    .line 191
    invoke-direct {p0, p3}, Lcom/samsung/android/allshare/IAppControlAPI;->initControl(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/samsung/android/allshare/IAppControlAPI$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/allshare/IAppControlAPI$2;-><init>(Lcom/samsung/android/allshare/IAppControlAPI;Lcom/samsung/android/allshare/NetworkSocketInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 211
    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startControlClient(Lcom/samsung/android/allshare/NetworkSocketInfo;)I
    .locals 3
    .param p1, "netinfo"    # Lcom/samsung/android/allshare/NetworkSocketInfo;

    .line 298
    iget-object v0, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    iget v1, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mPort:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/allshare/IAppControlAPI;->setIpaddress(Ljava/lang/String;I)V

    .line 304
    iget v0, p1, Lcom/samsung/android/allshare/NetworkSocketInfo;->mProtocol:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mDeviceId:Ljava/lang/String;

    const-string v2, "D0000000001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/allshare/IAppControlAPI$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/allshare/IAppControlAPI$3;-><init>(Lcom/samsung/android/allshare/IAppControlAPI;Lcom/samsung/android/allshare/NetworkSocketInfo;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 319
    return v1

    .line 323
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopControl()Z
    .locals 3

    .line 231
    iget-boolean v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->bIsRunningConnection:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/allshare/IAppControlAPI;->removeControl()V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/samsung/android/allshare/TVMessageSender;

    .line 239
    iput-object v2, p0, Lcom/samsung/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/samsung/android/allshare/TVMessageListener;

    .line 240
    monitor-exit v0

    .line 242
    return v1

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
