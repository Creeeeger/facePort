.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final greylist-max-o TRANSACTION_disableSelf:I = 0xf

.field static final blacklist TRANSACTION_dispatchGesture:I = 0x22

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x3

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByText:I = 0x4

.field static final greylist-max-o TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x5

.field static final greylist-max-o TRANSACTION_findFocus:I = 0x6

.field static final greylist-max-o TRANSACTION_focusSearch:I = 0x7

.field static final blacklist TRANSACTION_getCurrentMagnificationRegion:I = 0x16

.field static final greylist-max-o TRANSACTION_getMagnificationCenterX:I = 0x13

.field static final greylist-max-o TRANSACTION_getMagnificationCenterY:I = 0x14

.field static final blacklist TRANSACTION_getMagnificationConfig:I = 0x11

.field static final greylist-max-o TRANSACTION_getMagnificationRegion:I = 0x15

.field static final greylist-max-o TRANSACTION_getMagnificationScale:I = 0x12

.field static final blacklist TRANSACTION_getOverlayWindowToken:I = 0x24

.field static final greylist-max-o TRANSACTION_getServiceInfo:I = 0xc

.field static final blacklist TRANSACTION_getSoftKeyboardShowMode:I = 0x1c

.field static final blacklist TRANSACTION_getSystemActions:I = 0xe

.field static final greylist-max-o TRANSACTION_getWindow:I = 0x9

.field static final blacklist TRANSACTION_getWindowIdForLeashToken:I = 0x25

.field static final greylist-max-o TRANSACTION_getWindows:I = 0xa

.field static final blacklist TRANSACTION_getWindowsMainDisplay:I = 0xb

.field static final greylist-max-o TRANSACTION_isAccessibilityButtonAvailable:I = 0x20

.field static final greylist-max-o TRANSACTION_isFingerprintGestureDetectionAvailable:I = 0x23

.field static final blacklist TRANSACTION_logTrace:I = 0x2b

.field static final blacklist TRANSACTION_onDoubleTap:I = 0x30

.field static final blacklist TRANSACTION_onDoubleTapAndHold:I = 0x31

.field static final greylist-max-o TRANSACTION_performAccessibilityAction:I = 0x8

.field static final greylist-max-o TRANSACTION_performGlobalAction:I = 0xd

.field static final blacklist TRANSACTION_requestDelegating:I = 0x2f

.field static final blacklist TRANSACTION_requestDragging:I = 0x2e

.field static final blacklist TRANSACTION_requestTouchExploration:I = 0x2d

.field static final blacklist TRANSACTION_resetCurrentMagnification:I = 0x18

.field static final greylist-max-o TRANSACTION_resetMagnification:I = 0x17

.field static final greylist-max-o TRANSACTION_sendGesture:I = 0x21

.field static final blacklist TRANSACTION_setAnimationScale:I = 0x32

.field static final blacklist TRANSACTION_setAttributionTag:I = 0x2

.field static final blacklist TRANSACTION_setCacheEnabled:I = 0x2a

.field static final blacklist TRANSACTION_setFocusAppearance:I = 0x29

.field static final blacklist TRANSACTION_setGestureDetectionPassthroughRegion:I = 0x27

.field static final blacklist TRANSACTION_setInputMethodEnabled:I = 0x1f

.field static final greylist-max-o TRANSACTION_setMagnificationCallbackEnabled:I = 0x1a

.field static final blacklist TRANSACTION_setMagnificationConfig:I = 0x19

.field static final greylist-max-o TRANSACTION_setOnKeyEventResult:I = 0x10

.field static final blacklist TRANSACTION_setServiceDetectsGesturesEnabled:I = 0x2c

.field static final greylist-max-o TRANSACTION_setServiceInfo:I = 0x1

.field static final greylist-max-o TRANSACTION_setSoftKeyboardCallbackEnabled:I = 0x1d

.field static final greylist-max-o TRANSACTION_setSoftKeyboardShowMode:I = 0x1b

.field static final blacklist TRANSACTION_setTouchExplorationPassthroughRegion:I = 0x28

.field static final blacklist TRANSACTION_switchToInputMethod:I = 0x1e

.field static final blacklist TRANSACTION_takeScreenshot:I = 0x26


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 206
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 207
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 215
    if-nez p0, :cond_0

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    const-string v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 219
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v1, :cond_1

    .line 220
    move-object v1, v0

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    return-object v1

    .line 222
    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 231
    packed-switch p0, :pswitch_data_0

    .line 435
    const/4 v0, 0x0

    return-object v0

    .line 431
    :pswitch_0
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 427
    :pswitch_1
    const-string/jumbo v0, "onDoubleTapAndHold"

    return-object v0

    .line 423
    :pswitch_2
    const-string/jumbo v0, "onDoubleTap"

    return-object v0

    .line 419
    :pswitch_3
    const-string/jumbo v0, "requestDelegating"

    return-object v0

    .line 415
    :pswitch_4
    const-string/jumbo v0, "requestDragging"

    return-object v0

    .line 411
    :pswitch_5
    const-string/jumbo v0, "requestTouchExploration"

    return-object v0

    .line 407
    :pswitch_6
    const-string/jumbo v0, "setServiceDetectsGesturesEnabled"

    return-object v0

    .line 403
    :pswitch_7
    const-string v0, "logTrace"

    return-object v0

    .line 399
    :pswitch_8
    const-string/jumbo v0, "setCacheEnabled"

    return-object v0

    .line 395
    :pswitch_9
    const-string/jumbo v0, "setFocusAppearance"

    return-object v0

    .line 391
    :pswitch_a
    const-string/jumbo v0, "setTouchExplorationPassthroughRegion"

    return-object v0

    .line 387
    :pswitch_b
    const-string/jumbo v0, "setGestureDetectionPassthroughRegion"

    return-object v0

    .line 383
    :pswitch_c
    const-string/jumbo v0, "takeScreenshot"

    return-object v0

    .line 379
    :pswitch_d
    const-string v0, "getWindowIdForLeashToken"

    return-object v0

    .line 375
    :pswitch_e
    const-string v0, "getOverlayWindowToken"

    return-object v0

    .line 371
    :pswitch_f
    const-string v0, "isFingerprintGestureDetectionAvailable"

    return-object v0

    .line 367
    :pswitch_10
    const-string v0, "dispatchGesture"

    return-object v0

    .line 363
    :pswitch_11
    const-string/jumbo v0, "sendGesture"

    return-object v0

    .line 359
    :pswitch_12
    const-string v0, "isAccessibilityButtonAvailable"

    return-object v0

    .line 355
    :pswitch_13
    const-string/jumbo v0, "setInputMethodEnabled"

    return-object v0

    .line 351
    :pswitch_14
    const-string/jumbo v0, "switchToInputMethod"

    return-object v0

    .line 347
    :pswitch_15
    const-string/jumbo v0, "setSoftKeyboardCallbackEnabled"

    return-object v0

    .line 343
    :pswitch_16
    const-string v0, "getSoftKeyboardShowMode"

    return-object v0

    .line 339
    :pswitch_17
    const-string/jumbo v0, "setSoftKeyboardShowMode"

    return-object v0

    .line 335
    :pswitch_18
    const-string/jumbo v0, "setMagnificationCallbackEnabled"

    return-object v0

    .line 331
    :pswitch_19
    const-string/jumbo v0, "setMagnificationConfig"

    return-object v0

    .line 327
    :pswitch_1a
    const-string/jumbo v0, "resetCurrentMagnification"

    return-object v0

    .line 323
    :pswitch_1b
    const-string/jumbo v0, "resetMagnification"

    return-object v0

    .line 319
    :pswitch_1c
    const-string v0, "getCurrentMagnificationRegion"

    return-object v0

    .line 315
    :pswitch_1d
    const-string v0, "getMagnificationRegion"

    return-object v0

    .line 311
    :pswitch_1e
    const-string v0, "getMagnificationCenterY"

    return-object v0

    .line 307
    :pswitch_1f
    const-string v0, "getMagnificationCenterX"

    return-object v0

    .line 303
    :pswitch_20
    const-string v0, "getMagnificationScale"

    return-object v0

    .line 299
    :pswitch_21
    const-string v0, "getMagnificationConfig"

    return-object v0

    .line 295
    :pswitch_22
    const-string/jumbo v0, "setOnKeyEventResult"

    return-object v0

    .line 291
    :pswitch_23
    const-string v0, "disableSelf"

    return-object v0

    .line 287
    :pswitch_24
    const-string v0, "getSystemActions"

    return-object v0

    .line 283
    :pswitch_25
    const-string/jumbo v0, "performGlobalAction"

    return-object v0

    .line 279
    :pswitch_26
    const-string v0, "getServiceInfo"

    return-object v0

    .line 275
    :pswitch_27
    const-string v0, "getWindowsMainDisplay"

    return-object v0

    .line 271
    :pswitch_28
    const-string v0, "getWindows"

    return-object v0

    .line 267
    :pswitch_29
    const-string v0, "getWindow"

    return-object v0

    .line 263
    :pswitch_2a
    const-string/jumbo v0, "performAccessibilityAction"

    return-object v0

    .line 259
    :pswitch_2b
    const-string v0, "focusSearch"

    return-object v0

    .line 255
    :pswitch_2c
    const-string v0, "findFocus"

    return-object v0

    .line 251
    :pswitch_2d
    const-string v0, "findAccessibilityNodeInfosByViewId"

    return-object v0

    .line 247
    :pswitch_2e
    const-string v0, "findAccessibilityNodeInfosByText"

    return-object v0

    .line 243
    :pswitch_2f
    const-string v0, "findAccessibilityNodeInfoByAccessibilityId"

    return-object v0

    .line 239
    :pswitch_30
    const-string/jumbo v0, "setAttributionTag"

    return-object v0

    .line 235
    :pswitch_31
    const-string/jumbo v0, "setServiceInfo"

    return-object v0

    nop

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

    .line 226
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1984
    const/16 v0, 0x31

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 442
    invoke-static {p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.accessibilityservice.IAccessibilityServiceConnection"

    .line 447
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 448
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 458
    packed-switch v13, :pswitch_data_1

    .line 1028
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 454
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    return v10

    .line 1020
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1021
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAnimationScale(F)V

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1011
    .end local v0    # "_arg0":F
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1012
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTapAndHold(I)V

    .line 1014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1002
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1003
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->onDoubleTap(I)V

    .line 1005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 993
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 994
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDelegating(I)V

    .line 996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 982
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 984
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 985
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 986
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestDragging(II)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 973
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 974
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->requestTouchExploration(I)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 962
    .end local v0    # "_arg0":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 964
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 965
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 966
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceDetectsGesturesEnabled(IZ)V

    .line 967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 940
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 942
    .local v16, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 944
    .local v18, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 946
    .local v19, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 948
    .local v21, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 950
    .local v22, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 952
    .local v23, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 954
    .local v25, "_arg6":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 955
    .local v26, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-wide/from16 v8, v23

    move v13, v10

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V

    .line 957
    goto/16 :goto_0

    .line 931
    .end local v16    # "_arg0":J
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":J
    .end local v21    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg4":I
    .end local v23    # "_arg5":J
    .end local v25    # "_arg6":I
    .end local v26    # "_arg7":Landroid/os/Bundle;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 932
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setCacheEnabled(Z)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    goto/16 :goto_0

    .line 920
    .end local v0    # "_arg0":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 922
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 923
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setFocusAppearance(II)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_0

    .line 909
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 912
    .local v1, "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    .line 914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_0

    .line 898
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 900
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 901
    .restart local v1    # "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    .line 903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_0

    .line 887
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 889
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 890
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->takeScreenshot(ILandroid/os/RemoteCallback;)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    goto/16 :goto_0

    .line 877
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/RemoteCallback;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 878
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result v1

    .line 880
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    goto/16 :goto_0

    .line 867
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 868
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getOverlayWindowToken(I)Landroid/os/IBinder;

    move-result-object v1

    .line 870
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 872
    goto/16 :goto_0

    .line 859
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/IBinder;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isFingerprintGestureDetectionAvailable()Z

    move-result v0

    .line 860
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 862
    goto/16 :goto_0

    .line 847
    .end local v0    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 849
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 851
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 852
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 853
    invoke-virtual {v12, v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V

    .line 854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    goto/16 :goto_0

    .line 836
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 838
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 839
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    goto/16 :goto_0

    .line 828
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isAccessibilityButtonAvailable()Z

    move-result v0

    .line 829
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 831
    goto/16 :goto_0

    .line 817
    .end local v0    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 820
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setInputMethodEnabled(Ljava/lang/String;Z)I

    move-result v2

    .line 822
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    goto/16 :goto_0

    .line 807
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_15
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->switchToInputMethod(Ljava/lang/String;)Z

    move-result v1

    .line 810
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 812
    goto/16 :goto_0

    .line 798
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 799
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardCallbackEnabled(Z)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_0

    .line 790
    .end local v0    # "_arg0":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSoftKeyboardShowMode()I

    move-result v0

    .line 791
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    goto/16 :goto_0

    .line 781
    .end local v0    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 782
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardShowMode(I)Z

    move-result v1

    .line 784
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 786
    goto/16 :goto_0

    .line 770
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 772
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 773
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationCallbackEnabled(IZ)V

    .line 775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    goto/16 :goto_0

    .line 756
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 758
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/accessibilityservice/MagnificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/MagnificationConfig;

    .line 760
    .local v1, "_arg1":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 761
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {v12, v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v3

    .line 763
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 765
    goto/16 :goto_0

    .line 744
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/accessibilityservice/MagnificationConfig;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 746
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 747
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetCurrentMagnification(IZ)Z

    move-result v2

    .line 749
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    goto/16 :goto_0

    .line 732
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 734
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 735
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetMagnification(IZ)Z

    move-result v2

    .line 737
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 739
    goto/16 :goto_0

    .line 722
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 723
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getCurrentMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1

    .line 725
    .local v1, "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 727
    goto/16 :goto_0

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 713
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1

    .line 715
    .restart local v1    # "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 717
    goto/16 :goto_0

    .line 702
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Region;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 703
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterY(I)F

    move-result v1

    .line 705
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 707
    goto/16 :goto_0

    .line 692
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 693
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterX(I)F

    move-result v1

    .line 695
    .restart local v1    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 697
    goto/16 :goto_0

    .line 682
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 683
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationScale(I)F

    move-result v1

    .line 685
    .restart local v1    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 687
    goto/16 :goto_0

    .line 672
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 673
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    .line 675
    .local v1, "_result":Landroid/accessibilityservice/MagnificationConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 677
    goto/16 :goto_0

    .line 662
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/accessibilityservice/MagnificationConfig;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 664
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 665
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {v12, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    .line 667
    goto/16 :goto_0

    .line 655
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->disableSelf()V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_0

    .line 648
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getSystemActions()Ljava/util/List;

    move-result-object v0

    .line 649
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 651
    goto/16 :goto_0

    .line 639
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 640
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    move-result v1

    .line 642
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 644
    goto/16 :goto_0

    .line 631
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 632
    .local v0, "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 634
    goto/16 :goto_0

    .line 622
    .end local v0    # "_result":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 623
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindowsMainDisplay(I)Ljava/util/List;

    move-result-object v1

    .line 625
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 627
    goto/16 :goto_0

    .line 614
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v0

    .line 615
    .local v0, "_result":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 617
    goto/16 :goto_0

    .line 605
    .end local v0    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 608
    .local v1, "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 610
    goto/16 :goto_0

    .line 583
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 585
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 587
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 589
    .local v11, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 591
    .local v18, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 593
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v20

    .line 595
    .local v20, "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 596
    .local v21, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    move-object/from16 v0, p0

    move v1, v10

    move-wide/from16 v2, v16

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-wide/from16 v8, v21

    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v0

    .line 598
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 600
    goto/16 :goto_0

    .line 563
    .end local v0    # "_result":Z
    .end local v10    # "_arg0":I
    .end local v16    # "_arg1":J
    .end local v18    # "_arg3":Landroid/os/Bundle;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v21    # "_arg6":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2c
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 565
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 567
    .local v10, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 569
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 571
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 573
    .local v18, "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 574
    .local v19, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 578
    goto/16 :goto_0

    .line 543
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg5":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 545
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 547
    .restart local v10    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 549
    .restart local v16    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 551
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 553
    .restart local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 554
    .restart local v19    # "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 556
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 558
    goto/16 :goto_0

    .line 523
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg5":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 525
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 527
    .restart local v10    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 529
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 531
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 533
    .restart local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 534
    .restart local v19    # "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 536
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 538
    goto/16 :goto_0

    .line 503
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":J
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg5":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 505
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 507
    .restart local v10    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 509
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 511
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 513
    .restart local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 514
    .restart local v19    # "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    move-object/from16 v0, p0

    move v1, v9

    move-wide v2, v10

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    invoke-virtual/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0

    .line 516
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 518
    goto/16 :goto_0

    .line 481
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":J
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg5":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 483
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 485
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 487
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v18

    .line 489
    .local v18, "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 491
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 493
    .local v20, "_arg5":J
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    .line 494
    .local v22, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    move-object/from16 v0, p0

    move v1, v10

    move-wide/from16 v2, v16

    move v4, v11

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-wide/from16 v7, v20

    move-object/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .line 496
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 498
    goto :goto_0

    .line 472
    .end local v0    # "_result":[Ljava/lang/String;
    .end local v10    # "_arg0":I
    .end local v16    # "_arg1":J
    .end local v18    # "_arg3":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":J
    .end local v22    # "_arg6":Landroid/os/Bundle;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_31
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setAttributionTag(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    goto :goto_0

    .line 463
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_32
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 464
    .local v0, "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {v12, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    nop

    .line 1031
    .end local v0    # "_arg0":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_0
    return v13

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
