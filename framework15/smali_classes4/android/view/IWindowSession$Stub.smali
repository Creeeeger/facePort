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

.field static final greylist-max-o TRANSACTION_cancelDragAndDrop:I = 0x14

.field static final blacklist TRANSACTION_cancelDraw:I = 0x31

.field static final blacklist TRANSACTION_clearTouchableRegion:I = 0x30

.field static final blacklist TRANSACTION_clearTspDeadzone:I = 0x34

.field static final greylist-max-o TRANSACTION_dragRecipientEntered:I = 0x15

.field static final greylist-max-o TRANSACTION_dragRecipientExited:I = 0x16

.field static final blacklist TRANSACTION_dropForAccessibility:I = 0x12

.field static final greylist-max-o TRANSACTION_finishDrawing:I = 0xa

.field static final blacklist TRANSACTION_finishMovingTask:I = 0x22

.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x2e

.field static final blacklist TRANSACTION_getDragDeviceId:I = 0x11

.field static final blacklist TRANSACTION_getDragPointerId:I = 0x10

.field static final blacklist TRANSACTION_getDragStateInputToken:I = 0xf

.field static final greylist-max-o TRANSACTION_getWindowId:I = 0x1f

.field static final blacklist TRANSACTION_grantEmbeddedWindowFocus:I = 0x2d

.field static final blacklist TRANSACTION_grantInputChannel:I = 0x28

.field static final blacklist TRANSACTION_grantInputChannelWithTaskToken:I = 0x29

.field static final blacklist TRANSACTION_moveFocusToAdjacentWindow:I = 0x32

.field static final greylist-max-o TRANSACTION_onRectangleOnScreenRequested:I = 0x1e

.field static final greylist-max-o TRANSACTION_outOfMemory:I = 0x8

.field static final blacklist TRANSACTION_performClipDataUpdate:I = 0x36

.field static final greylist-max-o TRANSACTION_performDrag:I = 0xd

.field static final blacklist TRANSACTION_performDragWithArea:I = 0xe

.field static final greylist-max-o TRANSACTION_performHapticFeedback:I = 0xb

.field static final blacklist TRANSACTION_performHapticFeedbackAsync:I = 0xc

.field static final greylist-max-o TRANSACTION_pokeDrawLock:I = 0x20

.field static final greylist-max-o TRANSACTION_relayout:I = 0x6

.field static final blacklist TRANSACTION_relayoutAsync:I = 0x7

.field static final blacklist TRANSACTION_relayoutLegacy:I = 0x5

.field static final greylist-max-o TRANSACTION_remove:I = 0x4

.field static final blacklist TRANSACTION_removeWithTaskToken:I = 0x2a

.field static final blacklist TRANSACTION_reportDecorViewGestureInterceptionChanged:I = 0x26

.field static final greylist-max-o TRANSACTION_reportDropResult:I = 0x13

.field static final blacklist TRANSACTION_reportKeepClearAreasChanged:I = 0x27

.field static final blacklist TRANSACTION_reportSystemGestureExclusionChanged:I = 0x25

.field static final greylist-max-o TRANSACTION_sendWallpaperCommand:I = 0x1c

.field static final greylist-max-o TRANSACTION_setInsets:I = 0x9

.field static final blacklist TRANSACTION_setKeyguardWallpaperTouchAllowed:I = 0x37

.field static final blacklist TRANSACTION_setOnBackInvokedCallbackInfo:I = 0x2f

.field static final blacklist TRANSACTION_setShouldZoomOutWallpaper:I = 0x19

.field static final blacklist TRANSACTION_setTspDeadzone:I = 0x33

.field static final blacklist TRANSACTION_setTspNoteMode:I = 0x35

.field static final greylist-max-o TRANSACTION_setWallpaperDisplayOffset:I = 0x1b

.field static final greylist-max-o TRANSACTION_setWallpaperPosition:I = 0x17

.field static final blacklist TRANSACTION_setWallpaperZoomOut:I = 0x18

.field static final greylist-max-o TRANSACTION_startMovingTask:I = 0x21

.field static final blacklist TRANSACTION_updateInputChannel:I = 0x2b

.field static final blacklist TRANSACTION_updateInputChannelWithPointerRegion:I = 0x2c

.field static final blacklist TRANSACTION_updateRequestedVisibleTypes:I = 0x24

.field static final greylist-max-o TRANSACTION_updateTapExcludeRegion:I = 0x23

.field static final greylist-max-o TRANSACTION_wallpaperCommandComplete:I = 0x1d

.field static final greylist-max-o TRANSACTION_wallpaperOffsetsComplete:I = 0x1a


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "setKeyguardWallpaperTouchAllowed"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "performClipDataUpdate"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "setTspNoteMode"

    return-object v0

    :pswitch_3
    const-string v0, "clearTspDeadzone"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "setTspDeadzone"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "moveFocusToAdjacentWindow"

    return-object v0

    :pswitch_6
    const-string v0, "cancelDraw"

    return-object v0

    :pswitch_7
    const-string v0, "clearTouchableRegion"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "setOnBackInvokedCallbackInfo"

    return-object v0

    :pswitch_9
    const-string v0, "generateDisplayHash"

    return-object v0

    :pswitch_a
    const-string v0, "grantEmbeddedWindowFocus"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "updateInputChannelWithPointerRegion"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "updateInputChannel"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "removeWithTaskToken"

    return-object v0

    :pswitch_e
    const-string v0, "grantInputChannelWithTaskToken"

    return-object v0

    :pswitch_f
    const-string v0, "grantInputChannel"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "reportKeepClearAreasChanged"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "reportDecorViewGestureInterceptionChanged"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "reportSystemGestureExclusionChanged"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "updateRequestedVisibleTypes"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "updateTapExcludeRegion"

    return-object v0

    :pswitch_15
    const-string v0, "finishMovingTask"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "startMovingTask"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "pokeDrawLock"

    return-object v0

    :pswitch_18
    const-string v0, "getWindowId"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "onRectangleOnScreenRequested"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "wallpaperCommandComplete"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "sendWallpaperCommand"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "setWallpaperDisplayOffset"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "wallpaperOffsetsComplete"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "setShouldZoomOutWallpaper"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "setWallpaperZoomOut"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "setWallpaperPosition"

    return-object v0

    :pswitch_21
    const-string v0, "dragRecipientExited"

    return-object v0

    :pswitch_22
    const-string v0, "dragRecipientEntered"

    return-object v0

    :pswitch_23
    const-string v0, "cancelDragAndDrop"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "reportDropResult"

    return-object v0

    :pswitch_25
    const-string v0, "dropForAccessibility"

    return-object v0

    :pswitch_26
    const-string v0, "getDragDeviceId"

    return-object v0

    :pswitch_27
    const-string v0, "getDragPointerId"

    return-object v0

    :pswitch_28
    const-string v0, "getDragStateInputToken"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "performDragWithArea"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "performDrag"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "performHapticFeedbackAsync"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "performHapticFeedback"

    return-object v0

    :pswitch_2d
    const-string v0, "finishDrawing"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "setInsets"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "outOfMemory"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "relayoutAsync"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "relayout"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "relayoutLegacy"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "remove"

    return-object v0

    :pswitch_34
    const-string v0, "addToDisplayWithoutInputChannel"

    return-object v0

    :pswitch_35
    const-string v0, "addToDisplayAsUser"

    return-object v0

    :pswitch_36
    const-string v0, "addToDisplay"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.view.IWindowSession"

    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v14, v0, :cond_1

    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    packed-switch v14, :pswitch_data_0

    move-object v15, v12

    move-object v14, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setKeyguardWallpaperTouchAllowed(Landroid/view/IWindow;Z)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_1
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->performClipDataUpdate(Landroid/content/ClipData;)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setTspNoteMode(Landroid/view/IWindow;Z)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->clearTspDeadzone(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->cancelDraw(Landroid/view/IWindow;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->clearTouchableRegion(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallbackInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/InputTransferToken;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/graphics/Region;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->updateInputChannelWithPointerRegion(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;Landroid/graphics/Region;)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/graphics/Region;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerToken;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->removeWithTaskToken(Landroid/os/IBinder;Landroid/window/WindowContainerToken;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    sget-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/window/InputTransferToken;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    sget-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/window/InputTransferToken;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v9, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/window/WindowContainerToken;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v29, v9

    move-object/from16 v9, v24

    move v15, v10

    move-object/from16 v10, v25

    move-object/from16 v30, v11

    move-object/from16 v11, v26

    move-object/from16 v12, v29

    move/from16 v13, v27

    move-object/from16 v14, v28

    invoke-virtual/range {v0 .. v14}, Landroid/view/IWindowSession$Stub;->grantInputChannelWithTaskToken(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v14, p3

    move-object/from16 v0, v29

    invoke-virtual {v14, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v15

    move-object v15, v14

    move-object/from16 v14, p2

    goto/16 :goto_3

    :pswitch_f
    move v15, v10

    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v12, p2

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    sget-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/window/InputTransferToken;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    sget-object v0, Landroid/window/InputTransferToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/window/InputTransferToken;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v11, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v26, v11

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, v26

    invoke-virtual {v14, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v15

    move-object v15, v14

    move-object/from16 v14, p2

    goto/16 :goto_3

    :pswitch_10
    move v15, v10

    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p2

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move v12, v15

    move-object/from16 v15, p0

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_11
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_13
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->updateRequestedVisibleTypes(Landroid/view/IWindow;I)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_14
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_15
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_16
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_17
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_18
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_19
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_1a
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_1b
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move v4, v11

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_1c
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_1d
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_1e
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_1f
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_20
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_21
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_22
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_23
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_24
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_25
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->dropForAccessibility(Landroid/view/IWindow;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_26
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getDragDeviceId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_27
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getDragPointerId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_28
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getDragStateInputToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object v15, v14

    move-object v14, v13

    move v13, v12

    goto/16 :goto_3

    :pswitch_29
    move-object/from16 v30, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v25

    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/content/ClipData;

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/graphics/Point;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object v15, v13

    move-object/from16 v13, v28

    invoke-virtual/range {v0 .. v13}, Landroid/view/IWindowSession$Stub;->performDragWithArea(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v13, 0x1

    move-object/from16 v35, v15

    move-object v15, v14

    move-object/from16 v14, v35

    goto/16 :goto_3

    :pswitch_2a
    move-object/from16 v30, v11

    move-object v14, v12

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/SurfaceControl;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v23

    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/ClipData;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v24

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v13, 0x1

    move-object/from16 v35, v15

    move-object v15, v14

    move-object/from16 v14, v35

    goto/16 :goto_3

    :pswitch_2b
    move-object/from16 v30, v11

    move-object v14, v12

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v15, p0

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->performHapticFeedbackAsync(IZZ)V

    move-object v15, v14

    move-object v14, v13

    const/4 v13, 0x1

    goto/16 :goto_3

    :pswitch_2c
    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(IZZ)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v15, v14

    move-object v14, v13

    const/4 v13, 0x1

    goto/16 :goto_3

    :pswitch_2d
    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    sget-object v1, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    move-object v15, v14

    move-object v14, v13

    const/4 v13, 0x1

    goto/16 :goto_3

    :pswitch_2e
    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    move-object v15, v14

    move-object v14, v13

    const/4 v13, 0x1

    goto/16 :goto_3

    :pswitch_2f
    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v15, v14

    move-object v14, v13

    const/4 v13, 0x1

    goto/16 :goto_3

    :pswitch_30
    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V

    move-object v15, v14

    move-object v14, v13

    const/4 v13, 0x1

    goto/16 :goto_3

    :pswitch_31
    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v10

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    new-instance v0, Landroid/view/WindowRelayoutResult;

    invoke-direct {v0}, Landroid/view/WindowRelayoutResult;-><init>()V

    move-object v9, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move v3, v12

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v21, v9

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v21

    const/4 v9, 0x1

    invoke-virtual {v14, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v15, v14

    move-object v14, v13

    move v13, v9

    goto/16 :goto_3

    :pswitch_32
    move v9, v10

    move-object/from16 v30, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object v12, v0

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v11, v0

    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v24, v6

    move/from16 v6, v21

    move-object/from16 v25, v7

    move/from16 v7, v22

    move-object/from16 v26, v8

    move/from16 v8, v23

    move v15, v9

    move-object v9, v12

    move-object/from16 v27, v10

    move-object v10, v11

    move-object/from16 v31, v11

    move-object/from16 v11, v27

    move-object/from16 v32, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v25

    move-object v15, v14

    move-object/from16 v14, v24

    invoke-virtual/range {v0 .. v14}, Landroid/view/IWindowSession$Stub;->relayoutLegacy(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v32

    const/4 v2, 0x1

    invoke-virtual {v15, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v3, v31

    invoke-virtual {v15, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v4, v27

    invoke-virtual {v15, v4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v5, v26

    invoke-virtual {v15, v5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v6, v25

    invoke-virtual {v15, v6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v7, v24

    invoke-virtual {v15, v7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v14, p2

    move v13, v2

    goto/16 :goto_3

    :pswitch_33
    move v2, v10

    move-object/from16 v30, v11

    move-object v15, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v12, p0

    move v13, v2

    invoke-virtual {v12, v0}, Landroid/view/IWindowSession$Stub;->remove(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v14, p2

    goto/16 :goto_3

    :pswitch_34
    move v13, v10

    move-object/from16 v30, v11

    move-object/from16 v35, v15

    move-object v15, v12

    move-object/from16 v12, v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p2

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_2

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_2
    new-array v0, v5, [F

    move-object v4, v0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object/from16 v16, v4

    move v4, v11

    move/from16 v17, v5

    move-object v5, v7

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object v8, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v8, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v1, v18

    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v2, v16

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_3

    :pswitch_35
    move-object/from16 v30, v11

    move-object v14, v13

    move v13, v10

    move-object/from16 v35, v15

    move-object v15, v12

    move-object/from16 v12, v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v11, v0

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-gez v7, :cond_3

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_1

    :cond_3
    new-array v0, v7, [F

    move-object v6, v0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v22, v6

    move/from16 v6, v21

    move/from16 v23, v7

    move-object v7, v11

    move-object/from16 v24, v8

    move-object v8, v10

    move-object/from16 v25, v9

    move-object/from16 v33, v10

    move-object/from16 v10, v24

    move-object v12, v11

    move-object/from16 v11, v22

    invoke-virtual/range {v0 .. v11}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v12, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v1, v33

    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v2, v25

    invoke-virtual {v15, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v3, v24

    invoke-virtual {v15, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v4, v22

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_3

    :pswitch_36
    move-object/from16 v30, v11

    move-object v15, v12

    move-object v14, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v11

    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v10, v0

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v9, v0

    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    move-object v8, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gez v6, :cond_4

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_2

    :cond_4
    new-array v0, v6, [F

    move-object v5, v0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v19, v5

    move/from16 v5, v18

    move/from16 v20, v6

    move-object v6, v10

    move-object/from16 v21, v7

    move-object v7, v9

    move-object/from16 v22, v8

    move-object/from16 v34, v9

    move-object/from16 v9, v21

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v11, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v1, v34

    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v2, v22

    invoke-virtual {v15, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v3, v21

    invoke-virtual {v15, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v4, v19

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeFloatArray([F)V

    nop

    :goto_3
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
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
        :pswitch_0
    .end packed-switch
.end method
