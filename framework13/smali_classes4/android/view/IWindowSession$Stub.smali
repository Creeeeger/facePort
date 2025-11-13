.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final greylist-max-o TRANSACTION_addToDisplay:I = 0x1

.field static final blacklist TRANSACTION_addToDisplayAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_addToDisplayWithoutInputChannel:I = 0x3

.field static final greylist-max-o TRANSACTION_cancelDragAndDrop:I = 0x13

.field static final blacklist TRANSACTION_clearTouchableRegion:I = 0x2d

.field static final blacklist TRANSACTION_clearTspDeadzone:I = 0x2f

.field static final blacklist TRANSACTION_disableTransientBars:I = 0x31

.field static final greylist-max-o TRANSACTION_dragRecipientEntered:I = 0x14

.field static final greylist-max-o TRANSACTION_dragRecipientExited:I = 0x15

.field static final blacklist TRANSACTION_dropForAccessibility:I = 0x11

.field static final blacklist TRANSACTION_enableTransientBars:I = 0x32

.field static final greylist-max-o TRANSACTION_finishDrawing:I = 0xb

.field static final blacklist TRANSACTION_finishMovingTask:I = 0x21

.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x2b

.field static final greylist-max-o TRANSACTION_getInTouchMode:I = 0xd

.field static final greylist-max-o TRANSACTION_getWindowId:I = 0x1e

.field static final blacklist TRANSACTION_grantEmbeddedWindowFocus:I = 0x2a

.field static final blacklist TRANSACTION_grantInputChannel:I = 0x27

.field static final blacklist TRANSACTION_grantInputChannelWithSurfaceInset:I = 0x28

.field static final greylist-max-o TRANSACTION_onRectangleOnScreenRequested:I = 0x1d

.field static final greylist-max-o TRANSACTION_outOfMemory:I = 0x9

.field static final greylist-max-o TRANSACTION_performDrag:I = 0xf

.field static final blacklist TRANSACTION_performDragWithArea:I = 0x10

.field static final greylist-max-o TRANSACTION_performHapticFeedback:I = 0xe

.field static final greylist-max-o TRANSACTION_pokeDrawLock:I = 0x1f

.field static final greylist-max-o TRANSACTION_prepareToReplaceWindows:I = 0x8

.field static final greylist-max-o TRANSACTION_relayout:I = 0x5

.field static final greylist-max-o TRANSACTION_remove:I = 0x4

.field static final greylist-max-o TRANSACTION_reportDropResult:I = 0x12

.field static final blacklist TRANSACTION_reportKeepClearAreasChanged:I = 0x26

.field static final blacklist TRANSACTION_reportSystemGestureExclusionChanged:I = 0x25

.field static final greylist-max-o TRANSACTION_sendWallpaperCommand:I = 0x1b

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInsets:I = 0xa

.field static final blacklist TRANSACTION_setOnBackInvokedCallbackInfo:I = 0x2c

.field static final blacklist TRANSACTION_setShouldZoomOutWallpaper:I = 0x18

.field static final blacklist TRANSACTION_setTspDeadzone:I = 0x2e

.field static final blacklist TRANSACTION_setTspNoteMode:I = 0x30

.field static final greylist-max-o TRANSACTION_setWallpaperDisplayOffset:I = 0x1a

.field static final greylist-max-o TRANSACTION_setWallpaperPosition:I = 0x16

.field static final blacklist TRANSACTION_setWallpaperZoomOut:I = 0x17

.field static final greylist-max-o TRANSACTION_startMovingTask:I = 0x20

.field static final blacklist TRANSACTION_updateInputChannel:I = 0x29

.field static final blacklist TRANSACTION_updateLayout:I = 0x7

.field static final greylist-max-o TRANSACTION_updatePointerIcon:I = 0x22

.field static final blacklist TRANSACTION_updateRequestedVisibilities:I = 0x24

.field static final greylist-max-o TRANSACTION_updateTapExcludeRegion:I = 0x23

.field static final blacklist TRANSACTION_updateVisibility:I = 0x6

.field static final greylist-max-o TRANSACTION_wallpaperCommandComplete:I = 0x1c

.field static final greylist-max-o TRANSACTION_wallpaperOffsetsComplete:I = 0x19


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 399
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 400
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 408
    if-nez p0, :cond_0

    .line 409
    const/4 v0, 0x0

    return-object v0

    .line 411
    :cond_0
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 412
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    .line 413
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    .line 415
    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 424
    packed-switch p0, :pswitch_data_0

    .line 628
    const/4 v0, 0x0

    return-object v0

    .line 624
    :pswitch_0
    const-string v0, "enableTransientBars"

    return-object v0

    .line 620
    :pswitch_1
    const-string v0, "disableTransientBars"

    return-object v0

    .line 616
    :pswitch_2
    const-string/jumbo v0, "setTspNoteMode"

    return-object v0

    .line 612
    :pswitch_3
    const-string v0, "clearTspDeadzone"

    return-object v0

    .line 608
    :pswitch_4
    const-string/jumbo v0, "setTspDeadzone"

    return-object v0

    .line 604
    :pswitch_5
    const-string v0, "clearTouchableRegion"

    return-object v0

    .line 600
    :pswitch_6
    const-string/jumbo v0, "setOnBackInvokedCallbackInfo"

    return-object v0

    .line 596
    :pswitch_7
    const-string v0, "generateDisplayHash"

    return-object v0

    .line 592
    :pswitch_8
    const-string v0, "grantEmbeddedWindowFocus"

    return-object v0

    .line 588
    :pswitch_9
    const-string/jumbo v0, "updateInputChannel"

    return-object v0

    .line 584
    :pswitch_a
    const-string v0, "grantInputChannelWithSurfaceInset"

    return-object v0

    .line 580
    :pswitch_b
    const-string v0, "grantInputChannel"

    return-object v0

    .line 576
    :pswitch_c
    const-string/jumbo v0, "reportKeepClearAreasChanged"

    return-object v0

    .line 572
    :pswitch_d
    const-string/jumbo v0, "reportSystemGestureExclusionChanged"

    return-object v0

    .line 568
    :pswitch_e
    const-string/jumbo v0, "updateRequestedVisibilities"

    return-object v0

    .line 564
    :pswitch_f
    const-string/jumbo v0, "updateTapExcludeRegion"

    return-object v0

    .line 560
    :pswitch_10
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    .line 556
    :pswitch_11
    const-string v0, "finishMovingTask"

    return-object v0

    .line 552
    :pswitch_12
    const-string/jumbo v0, "startMovingTask"

    return-object v0

    .line 548
    :pswitch_13
    const-string/jumbo v0, "pokeDrawLock"

    return-object v0

    .line 544
    :pswitch_14
    const-string v0, "getWindowId"

    return-object v0

    .line 540
    :pswitch_15
    const-string/jumbo v0, "onRectangleOnScreenRequested"

    return-object v0

    .line 536
    :pswitch_16
    const-string/jumbo v0, "wallpaperCommandComplete"

    return-object v0

    .line 532
    :pswitch_17
    const-string/jumbo v0, "sendWallpaperCommand"

    return-object v0

    .line 528
    :pswitch_18
    const-string/jumbo v0, "setWallpaperDisplayOffset"

    return-object v0

    .line 524
    :pswitch_19
    const-string/jumbo v0, "wallpaperOffsetsComplete"

    return-object v0

    .line 520
    :pswitch_1a
    const-string/jumbo v0, "setShouldZoomOutWallpaper"

    return-object v0

    .line 516
    :pswitch_1b
    const-string/jumbo v0, "setWallpaperZoomOut"

    return-object v0

    .line 512
    :pswitch_1c
    const-string/jumbo v0, "setWallpaperPosition"

    return-object v0

    .line 508
    :pswitch_1d
    const-string v0, "dragRecipientExited"

    return-object v0

    .line 504
    :pswitch_1e
    const-string v0, "dragRecipientEntered"

    return-object v0

    .line 500
    :pswitch_1f
    const-string v0, "cancelDragAndDrop"

    return-object v0

    .line 496
    :pswitch_20
    const-string/jumbo v0, "reportDropResult"

    return-object v0

    .line 492
    :pswitch_21
    const-string v0, "dropForAccessibility"

    return-object v0

    .line 488
    :pswitch_22
    const-string/jumbo v0, "performDragWithArea"

    return-object v0

    .line 484
    :pswitch_23
    const-string/jumbo v0, "performDrag"

    return-object v0

    .line 480
    :pswitch_24
    const-string/jumbo v0, "performHapticFeedback"

    return-object v0

    .line 476
    :pswitch_25
    const-string v0, "getInTouchMode"

    return-object v0

    .line 472
    :pswitch_26
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 468
    :pswitch_27
    const-string v0, "finishDrawing"

    return-object v0

    .line 464
    :pswitch_28
    const-string/jumbo v0, "setInsets"

    return-object v0

    .line 460
    :pswitch_29
    const-string/jumbo v0, "outOfMemory"

    return-object v0

    .line 456
    :pswitch_2a
    const-string/jumbo v0, "prepareToReplaceWindows"

    return-object v0

    .line 452
    :pswitch_2b
    const-string/jumbo v0, "updateLayout"

    return-object v0

    .line 448
    :pswitch_2c
    const-string/jumbo v0, "updateVisibility"

    return-object v0

    .line 444
    :pswitch_2d
    const-string/jumbo v0, "relayout"

    return-object v0

    .line 440
    :pswitch_2e
    const-string/jumbo v0, "remove"

    return-object v0

    .line 436
    :pswitch_2f
    const-string v0, "addToDisplayWithoutInputChannel"

    return-object v0

    .line 432
    :pswitch_30
    const-string v0, "addToDisplayAsUser"

    return-object v0

    .line 428
    :pswitch_31
    const-string v0, "addToDisplay"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 419
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2559
    const/16 v0, 0x31

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 635
    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.view.IWindowSession"

    .line 640
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 641
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 651
    packed-switch v14, :pswitch_data_1

    .line 1381
    move-object v14, v12

    move-object v10, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 647
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 648
    return v10

    .line 1373
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1374
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1375
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->enableTransientBars(Landroid/view/IWindow;)V

    .line 1376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1364
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1365
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->disableTransientBars(Landroid/view/IWindow;)V

    .line 1367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1354
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1356
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1357
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1358
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setTspNoteMode(Landroid/view/IWindow;Z)V

    .line 1359
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1345
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1346
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->clearTspDeadzone(Landroid/view/IWindow;)V

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1334
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1336
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1337
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1338
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V

    .line 1339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1325
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1326
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1327
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->clearTouchableRegion(Landroid/view/IWindow;)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1329
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1315
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1317
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallbackInfo;

    .line 1318
    .local v1, "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1319
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 1320
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1301
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1303
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1305
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1307
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1308
    .local v3, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1309
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 1310
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1288
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1290
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1292
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1293
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V

    .line 1295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1270
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1272
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1274
    .local v8, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/SurfaceControl;

    .line 1276
    .local v9, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1278
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1280
    .local v17, "_arg4":I
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Region;

    .line 1281
    .local v18, "_arg5":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V

    .line 1283
    move v1, v10

    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1240
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/view/SurfaceControl;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/graphics/Region;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1242
    .local v16, "_arg0":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/SurfaceControl;

    .line 1244
    .local v17, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v18

    .line 1246
    .local v18, "_arg2":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 1248
    .local v19, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1250
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1252
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1254
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1256
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    .line 1258
    .local v24, "_arg8":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1260
    .local v25, "_arg9":Ljava/lang/String;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v9, v0

    .line 1261
    .local v9, "_arg10":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1262
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v26, v9

    .end local v9    # "_arg10":Landroid/view/InputChannel;
    .local v26, "_arg10":Landroid/view/InputChannel;
    move-object/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->grantInputChannelWithSurfaceInset(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    move-object/from16 v0, v26

    .end local v26    # "_arg10":Landroid/view/InputChannel;
    .local v0, "_arg10":Landroid/view/InputChannel;
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1265
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1212
    .end local v0    # "_arg10":Landroid/view/InputChannel;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/view/SurfaceControl;
    .end local v18    # "_arg2":Landroid/view/IWindow;
    .end local v19    # "_arg3":Landroid/os/IBinder;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/os/IBinder;
    .end local v25    # "_arg9":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1214
    .local v11, "_arg0":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/SurfaceControl;

    .line 1216
    .local v16, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v17

    .line 1218
    .local v17, "_arg2":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 1220
    .local v18, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1222
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1224
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1226
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    .line 1228
    .local v22, "_arg7":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1230
    .local v23, "_arg8":Ljava/lang/String;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v10, v0

    .line 1231
    .local v10, "_arg9":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    move-object/from16 v0, p0

    move v1, v11

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v24, v10

    .end local v10    # "_arg9":Landroid/view/InputChannel;
    .local v24, "_arg9":Landroid/view/InputChannel;
    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    move-object/from16 v0, v24

    .end local v24    # "_arg9":Landroid/view/InputChannel;
    .local v0, "_arg9":Landroid/view/InputChannel;
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1235
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1200
    .end local v0    # "_arg9":Landroid/view/InputChannel;
    .end local v16    # "_arg1":Landroid/view/SurfaceControl;
    .end local v17    # "_arg2":Landroid/view/IWindow;
    .end local v18    # "_arg3":Landroid/os/IBinder;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Landroid/os/IBinder;
    .end local v23    # "_arg8":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_d
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1202
    .local v0, "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1204
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1205
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V

    .line 1207
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1190
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1192
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1193
    .restart local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1194
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    .line 1195
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1180
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1182
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsVisibilities;

    .line 1183
    .local v1, "_arg1":Landroid/view/InsetsVisibilities;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->updateRequestedVisibilities(Landroid/view/IWindow;Landroid/view/InsetsVisibilities;)V

    .line 1185
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1170
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/InsetsVisibilities;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1172
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 1173
    .local v1, "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1174
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 1175
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1162
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1163
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1164
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    .line 1165
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1154
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1155
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    .line 1157
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1140
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1142
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1144
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1145
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3

    .line 1147
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1149
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1131
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1132
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1121
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_15
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1122
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    .line 1124
    .local v1, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1126
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1111
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/view/IWindowId;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1113
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1114
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1116
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1101
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1103
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1104
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1106
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1079
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1081
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1083
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1085
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1087
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1089
    .local v16, "_arg4":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 1091
    .local v17, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1092
    .local v18, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1093
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move v4, v11

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1094
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1096
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1067
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Landroid/os/Bundle;
    .end local v18    # "_arg6":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_19
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1069
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1071
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1072
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 1074
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1059
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1060
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 1062
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1049
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1051
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1052
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 1054
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1039
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1041
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1042
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 1044
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1023
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":F
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1025
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 1027
    .local v7, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 1029
    .local v8, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 1031
    .local v9, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 1032
    .local v10, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 1034
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1015
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":F
    .end local v8    # "_arg2":F
    .end local v9    # "_arg3":F
    .end local v10    # "_arg4":F
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1016
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1017
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 1018
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1007
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1008
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 1010
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 997
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 999
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1000
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1001
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    .line 1002
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 987
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 989
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 990
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 992
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 973
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 975
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 977
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 978
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->dropForAccessibility(Landroid/view/IWindow;II)Z

    move-result v3

    .line 980
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 982
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 943
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 945
    .local v16, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 947
    .local v17, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/SurfaceControl;

    .line 949
    .local v18, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 951
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 953
    .local v20, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 955
    .local v21, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 957
    .local v22, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v23

    .line 959
    .local v23, "_arg7":F
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/ClipData;

    .line 961
    .local v24, "_arg8":Landroid/content/ClipData;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/graphics/RectF;

    .line 963
    .local v25, "_arg9":Landroid/graphics/RectF;
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/graphics/Point;

    .line 964
    .local v26, "_arg10":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->performDragWithArea(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;

    move-result-object v0

    .line 966
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 968
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 917
    .end local v0    # "_result":Landroid/os/IBinder;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/view/SurfaceControl;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":F
    .end local v21    # "_arg5":F
    .end local v22    # "_arg6":F
    .end local v23    # "_arg7":F
    .end local v24    # "_arg8":Landroid/content/ClipData;
    .end local v25    # "_arg9":Landroid/graphics/RectF;
    .end local v26    # "_arg10":Landroid/graphics/Point;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v10

    .line 919
    .local v10, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 921
    .local v11, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/SurfaceControl;

    .line 923
    .local v16, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 925
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 927
    .local v18, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 929
    .local v19, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 931
    .local v20, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 933
    .local v21, "_arg7":F
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/content/ClipData;

    .line 934
    .local v22, "_arg8":Landroid/content/ClipData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v11

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    .line 936
    .restart local v0    # "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 938
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 905
    .end local v0    # "_result":Landroid/os/IBinder;
    .end local v10    # "_arg0":Landroid/view/IWindow;
    .end local v16    # "_arg2":Landroid/view/SurfaceControl;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":F
    .end local v19    # "_arg5":F
    .end local v20    # "_arg6":F
    .end local v21    # "_arg7":F
    .end local v22    # "_arg8":Landroid/content/ClipData;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_25
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 907
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 908
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 909
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(IZ)Z

    move-result v2

    .line 910
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 912
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 897
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v0

    .line 898
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 900
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 890
    .end local v0    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 891
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 893
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 878
    .end local v0    # "_arg0":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 880
    .local v0, "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 882
    .local v1, "_arg1":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 883
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 885
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 862
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 864
    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 866
    .local v7, "_arg1":I
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/Rect;

    .line 868
    .local v8, "_arg2":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Rect;

    .line 870
    .local v9, "_arg3":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/Region;

    .line 871
    .local v10, "_arg4":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 873
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 852
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/graphics/Rect;
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    .end local v10    # "_arg4":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 853
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 854
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    .line 855
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 857
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 842
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 844
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 845
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 846
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    .line 847
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 824
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    .line 826
    .local v7, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 828
    .local v8, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 830
    .local v9, "_arg2":I
    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/window/ClientWindowFrames;

    .line 832
    .local v10, "_arg3":Landroid/window/ClientWindowFrames;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 834
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 835
    .local v16, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V

    .line 837
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 793
    .end local v7    # "_arg0":Landroid/view/IWindow;
    .end local v8    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/window/ClientWindowFrames;
    .end local v16    # "_arg5":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2d
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    .line 795
    .local v8, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 797
    .local v9, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 799
    .local v10, "_arg2":I
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v11, v0

    .line 801
    .local v11, "_arg3":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v7, v0

    .line 803
    .local v7, "_arg4":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v6, v0

    .line 805
    .local v6, "_arg5":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 806
    .local v5, "_arg6_length":I
    if-gez v5, :cond_1

    .line 807
    const/4 v0, 0x0

    move-object v4, v0

    .local v0, "_arg6":[Landroid/view/InsetsSourceControl;
    goto :goto_0

    .line 809
    .end local v0    # "_arg6":[Landroid/view/InsetsSourceControl;
    :cond_1
    new-array v0, v5, [Landroid/view/InsetsSourceControl;

    move-object v4, v0

    .line 811
    .local v4, "_arg6":[Landroid/view/InsetsSourceControl;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object/from16 v16, v4

    .end local v4    # "_arg6":[Landroid/view/InsetsSourceControl;
    .local v16, "_arg6":[Landroid/view/InsetsSourceControl;
    move-object v4, v11

    move/from16 v17, v5

    .end local v5    # "_arg6_length":I
    .local v17, "_arg6_length":I
    move-object v5, v7

    move-object/from16 v18, v6

    .end local v6    # "_arg5":Landroid/view/InsetsState;
    .local v18, "_arg5":Landroid/view/InsetsState;
    move-object/from16 v28, v7

    .end local v7    # "_arg4":Landroid/view/SurfaceControl;
    .local v28, "_arg4":Landroid/view/SurfaceControl;
    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 813
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-virtual {v12, v11, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 816
    move-object/from16 v1, v28

    .end local v28    # "_arg4":Landroid/view/SurfaceControl;
    .local v1, "_arg4":Landroid/view/SurfaceControl;
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 817
    move-object/from16 v2, v18

    .end local v18    # "_arg5":Landroid/view/InsetsState;
    .local v2, "_arg5":Landroid/view/InsetsState;
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 818
    move-object/from16 v3, v16

    .end local v16    # "_arg6":[Landroid/view/InsetsSourceControl;
    .local v3, "_arg6":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 819
    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 750
    .end local v0    # "_result":I
    .end local v1    # "_arg4":Landroid/view/SurfaceControl;
    .end local v2    # "_arg5":Landroid/view/InsetsState;
    .end local v3    # "_arg6":[Landroid/view/InsetsSourceControl;
    .end local v8    # "_arg0":Landroid/view/IWindow;
    .end local v9    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "_arg2":I
    .end local v17    # "_arg6_length":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2e
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 752
    .local v16, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 754
    .local v17, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 756
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 758
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 760
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 762
    .local v21, "_arg5":I
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object v11, v0

    .line 764
    .local v11, "_arg6":Landroid/window/ClientWindowFrames;
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v10, v0

    .line 766
    .local v10, "_arg7":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v9, v0

    .line 768
    .local v9, "_arg8":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v8, v0

    .line 770
    .local v8, "_arg9":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 771
    .local v7, "_arg10_length":I
    if-gez v7, :cond_2

    .line 772
    const/4 v0, 0x0

    move-object v6, v0

    .local v0, "_arg10":[Landroid/view/InsetsSourceControl;
    goto :goto_1

    .line 774
    .end local v0    # "_arg10":[Landroid/view/InsetsSourceControl;
    :cond_2
    new-array v0, v7, [Landroid/view/InsetsSourceControl;

    move-object v6, v0

    .line 777
    .local v6, "_arg10":[Landroid/view/InsetsSourceControl;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    .line 778
    .local v5, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v22, v5

    .end local v5    # "_arg11":Landroid/os/Bundle;
    .local v22, "_arg11":Landroid/os/Bundle;
    move/from16 v5, v20

    move-object/from16 v23, v6

    .end local v6    # "_arg10":[Landroid/view/InsetsSourceControl;
    .local v23, "_arg10":[Landroid/view/InsetsSourceControl;
    move/from16 v6, v21

    move/from16 v24, v7

    .end local v7    # "_arg10_length":I
    .local v24, "_arg10_length":I
    move-object v7, v11

    move-object/from16 v25, v8

    .end local v8    # "_arg9":Landroid/view/InsetsState;
    .local v25, "_arg9":Landroid/view/InsetsState;
    move-object v8, v10

    move-object/from16 v26, v9

    .end local v9    # "_arg8":Landroid/view/SurfaceControl;
    .local v26, "_arg8":Landroid/view/SurfaceControl;
    move-object/from16 v29, v10

    .end local v10    # "_arg7":Landroid/util/MergedConfiguration;
    .local v29, "_arg7":Landroid/util/MergedConfiguration;
    move-object/from16 v10, v25

    move-object v15, v11

    .end local v11    # "_arg6":Landroid/window/ClientWindowFrames;
    .local v15, "_arg6":Landroid/window/ClientWindowFrames;
    move-object/from16 v11, v23

    move-object v14, v12

    move-object/from16 v12, v22

    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v0

    .line 780
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    const/4 v1, 0x1

    invoke-virtual {v14, v15, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 783
    move-object/from16 v2, v29

    .end local v29    # "_arg7":Landroid/util/MergedConfiguration;
    .local v2, "_arg7":Landroid/util/MergedConfiguration;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 784
    move-object/from16 v3, v26

    .end local v26    # "_arg8":Landroid/view/SurfaceControl;
    .local v3, "_arg8":Landroid/view/SurfaceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 785
    move-object/from16 v4, v25

    .end local v25    # "_arg9":Landroid/view/InsetsState;
    .local v4, "_arg9":Landroid/view/InsetsState;
    invoke-virtual {v14, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 786
    move-object/from16 v5, v23

    .end local v23    # "_arg10":[Landroid/view/InsetsSourceControl;
    .local v5, "_arg10":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v5, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 787
    move-object/from16 v6, v22

    .end local v22    # "_arg11":Landroid/os/Bundle;
    .local v6, "_arg11":Landroid/os/Bundle;
    invoke-virtual {v14, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 788
    move-object/from16 v10, p2

    const/4 v1, 0x1

    goto/16 :goto_4

    .line 741
    .end local v0    # "_result":I
    .end local v2    # "_arg7":Landroid/util/MergedConfiguration;
    .end local v3    # "_arg8":Landroid/view/SurfaceControl;
    .end local v4    # "_arg9":Landroid/view/InsetsState;
    .end local v5    # "_arg10":[Landroid/view/InsetsSourceControl;
    .end local v6    # "_arg11":Landroid/os/Bundle;
    .end local v15    # "_arg6":Landroid/window/ClientWindowFrames;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v24    # "_arg10_length":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 742
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    move-object/from16 v10, p2

    const/4 v1, 0x1

    goto/16 :goto_4

    .line 722
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 724
    .local v6, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v10, p2

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 726
    .local v7, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 728
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 730
    .local v9, "_arg3":I
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v11, v0

    .line 731
    .local v11, "_arg4":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 732
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;)I

    move-result v0

    .line 733
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v1, 0x1

    invoke-virtual {v14, v11, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 736
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 688
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_31
    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v11

    .line 690
    .local v11, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 692
    .local v12, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 694
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 696
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 698
    .local v17, "_arg4":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InsetsVisibilities;

    .line 700
    .local v18, "_arg5":Landroid/view/InsetsVisibilities;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v9, v0

    .line 702
    .local v9, "_arg6":Landroid/view/InputChannel;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v8, v0

    .line 704
    .local v8, "_arg7":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 705
    .local v7, "_arg8_length":I
    if-gez v7, :cond_3

    .line 706
    const/4 v0, 0x0

    move-object v6, v0

    .local v0, "_arg8":[Landroid/view/InsetsSourceControl;
    goto :goto_2

    .line 708
    .end local v0    # "_arg8":[Landroid/view/InsetsSourceControl;
    :cond_3
    new-array v0, v7, [Landroid/view/InsetsSourceControl;

    move-object v6, v0

    .line 710
    .local v6, "_arg8":[Landroid/view/InsetsSourceControl;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "_arg8":[Landroid/view/InsetsSourceControl;
    .local v19, "_arg8":[Landroid/view/InsetsSourceControl;
    move-object/from16 v6, v18

    move/from16 v20, v7

    .end local v7    # "_arg8_length":I
    .local v20, "_arg8_length":I
    move-object v7, v9

    move-object/from16 v21, v8

    .end local v8    # "_arg7":Landroid/view/InsetsState;
    .local v21, "_arg7":Landroid/view/InsetsState;
    move-object/from16 v22, v11

    move-object v11, v9

    .end local v9    # "_arg6":Landroid/view/InputChannel;
    .local v11, "_arg6":Landroid/view/InputChannel;
    .local v22, "_arg0":Landroid/view/IWindow;
    move-object/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 712
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v1, 0x1

    invoke-virtual {v14, v11, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 715
    move-object/from16 v2, v21

    .end local v21    # "_arg7":Landroid/view/InsetsState;
    .local v2, "_arg7":Landroid/view/InsetsState;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 716
    move-object/from16 v3, v19

    .end local v19    # "_arg8":[Landroid/view/InsetsSourceControl;
    .local v3, "_arg8":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 717
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 656
    .end local v0    # "_result":I
    .end local v2    # "_arg7":Landroid/view/InsetsState;
    .end local v3    # "_arg8":[Landroid/view/InsetsSourceControl;
    .end local v12    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/view/InsetsVisibilities;
    .end local v20    # "_arg8_length":I
    .end local v22    # "_arg0":Landroid/view/IWindow;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_32
    move-object/from16 v27, v11

    move-object v14, v12

    move-object v10, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    .line 658
    .local v9, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 660
    .local v11, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 662
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 664
    .local v15, "_arg3":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/InsetsVisibilities;

    .line 666
    .local v16, "_arg4":Landroid/view/InsetsVisibilities;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v8, v0

    .line 668
    .local v8, "_arg5":Landroid/view/InputChannel;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v7, v0

    .line 670
    .local v7, "_arg6":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 671
    .local v6, "_arg7_length":I
    if-gez v6, :cond_4

    .line 672
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg7":[Landroid/view/InsetsSourceControl;
    goto :goto_3

    .line 674
    .end local v0    # "_arg7":[Landroid/view/InsetsSourceControl;
    :cond_4
    new-array v0, v6, [Landroid/view/InsetsSourceControl;

    move-object v5, v0

    .line 676
    .local v5, "_arg7":[Landroid/view/InsetsSourceControl;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v11

    move v3, v12

    move v4, v15

    move-object/from16 v17, v5

    .end local v5    # "_arg7":[Landroid/view/InsetsSourceControl;
    .local v17, "_arg7":[Landroid/view/InsetsSourceControl;
    move-object/from16 v5, v16

    move/from16 v18, v6

    .end local v6    # "_arg7_length":I
    .local v18, "_arg7_length":I
    move-object v6, v8

    move-object/from16 v19, v7

    .end local v7    # "_arg6":Landroid/view/InsetsState;
    .local v19, "_arg6":Landroid/view/InsetsState;
    move-object/from16 v20, v9

    move-object v9, v8

    .end local v8    # "_arg5":Landroid/view/InputChannel;
    .local v9, "_arg5":Landroid/view/InputChannel;
    .local v20, "_arg0":Landroid/view/IWindow;
    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 678
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v1, 0x1

    invoke-virtual {v14, v9, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 681
    move-object/from16 v2, v19

    .end local v19    # "_arg6":Landroid/view/InsetsState;
    .local v2, "_arg6":Landroid/view/InsetsState;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 682
    move-object/from16 v3, v17

    .end local v17    # "_arg7":[Landroid/view/InsetsSourceControl;
    .local v3, "_arg7":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 683
    nop

    .line 1384
    .end local v0    # "_result":I
    .end local v2    # "_arg6":Landroid/view/InsetsState;
    .end local v3    # "_arg7":[Landroid/view/InsetsSourceControl;
    .end local v9    # "_arg5":Landroid/view/InputChannel;
    .end local v11    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/view/InsetsVisibilities;
    .end local v18    # "_arg7_length":I
    .end local v20    # "_arg0":Landroid/view/IWindow;
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
