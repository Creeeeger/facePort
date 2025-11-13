.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0xa

.field static final greylist-max-o TRANSACTION_dispatchAppVisibility:I = 0x7

.field static final greylist-max-o TRANSACTION_dispatchDragEvent:I = 0xd

.field static final blacklist TRANSACTION_dispatchFinishMovingTask:I = 0x13

.field static final greylist-max-o TRANSACTION_dispatchGetNewSurface:I = 0x8

.field static final blacklist TRANSACTION_dispatchLetterboxDirectionChanged:I = 0x14

.field static final blacklist TRANSACTION_dispatchSPenGestureEvent:I = 0x15

.field static final blacklist TRANSACTION_dispatchSmartClipRemoteRequest:I = 0x12

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0xc

.field static final greylist-max-o TRANSACTION_dispatchWallpaperOffsets:I = 0xb

.field static final greylist-max-o TRANSACTION_dispatchWindowShown:I = 0xf

.field static final greylist-max-o TRANSACTION_executeCommand:I = 0x1

.field static final blacklist TRANSACTION_freeformResizeGuideViewChanged:I = 0x17

.field static final blacklist TRANSACTION_hideInsets:I = 0x5

.field static final blacklist TRANSACTION_insetsControlChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_moved:I = 0x6

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0x10

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x11

.field static final greylist-max-o TRANSACTION_resized:I = 0x2

.field static final blacklist TRANSACTION_showInsets:I = 0x4

.field static final greylist-max-o TRANSACTION_updatePointerIcon:I = 0xe

.field static final greylist-max-o TRANSACTION_windowFocusChanged:I = 0x9

.field static final blacklist TRANSACTION_windowFocusInTaskChanged:I = 0x16


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 147
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 159
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    .line 160
    move-object v1, v0

    check-cast v1, Landroid/view/IWindow;

    return-object v1

    .line 162
    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 263
    :pswitch_0
    const-string v0, "freeformResizeGuideViewChanged"

    return-object v0

    .line 259
    :pswitch_1
    const-string/jumbo v0, "windowFocusInTaskChanged"

    return-object v0

    .line 255
    :pswitch_2
    const-string v0, "dispatchSPenGestureEvent"

    return-object v0

    .line 251
    :pswitch_3
    const-string v0, "dispatchLetterboxDirectionChanged"

    return-object v0

    .line 247
    :pswitch_4
    const-string v0, "dispatchFinishMovingTask"

    return-object v0

    .line 243
    :pswitch_5
    const-string v0, "dispatchSmartClipRemoteRequest"

    return-object v0

    .line 239
    :pswitch_6
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 235
    :pswitch_7
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 231
    :pswitch_8
    const-string v0, "dispatchWindowShown"

    return-object v0

    .line 227
    :pswitch_9
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    .line 223
    :pswitch_a
    const-string v0, "dispatchDragEvent"

    return-object v0

    .line 219
    :pswitch_b
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    .line 215
    :pswitch_c
    const-string v0, "dispatchWallpaperOffsets"

    return-object v0

    .line 211
    :pswitch_d
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 207
    :pswitch_e
    const-string/jumbo v0, "windowFocusChanged"

    return-object v0

    .line 203
    :pswitch_f
    const-string v0, "dispatchGetNewSurface"

    return-object v0

    .line 199
    :pswitch_10
    const-string v0, "dispatchAppVisibility"

    return-object v0

    .line 195
    :pswitch_11
    const-string/jumbo v0, "moved"

    return-object v0

    .line 191
    :pswitch_12
    const-string v0, "hideInsets"

    return-object v0

    .line 187
    :pswitch_13
    const-string/jumbo v0, "showInsets"

    return-object v0

    .line 183
    :pswitch_14
    const-string v0, "insetsControlChanged"

    return-object v0

    .line 179
    :pswitch_15
    const-string/jumbo v0, "resized"

    return-object v0

    .line 175
    :pswitch_16
    const-string v0, "executeCommand"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 166
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 921
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 274
    invoke-static {p1}, Landroid/view/IWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "android.view.IWindow"

    .line 279
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v11, v14, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 280
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 290
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_1

    .line 523
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 286
    :pswitch_0
    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    return v14

    .line 516
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 517
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->freeformResizeGuideViewChanged(Z)V

    .line 519
    goto/16 :goto_0

    .line 508
    .end local v0    # "_arg0":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 509
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->windowFocusInTaskChanged(Z)V

    .line 511
    goto/16 :goto_0

    .line 500
    .end local v0    # "_arg0":Z
    :pswitch_3
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InputEvent;

    .line 501
    .local v0, "_arg0":[Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchSPenGestureEvent([Landroid/view/InputEvent;)V

    .line 503
    goto/16 :goto_0

    .line 492
    .end local v0    # "_arg0":[Landroid/view/InputEvent;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 493
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchLetterboxDirectionChanged(I)V

    .line 495
    goto/16 :goto_0

    .line 486
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchFinishMovingTask()V

    .line 487
    goto/16 :goto_0

    .line 479
    :pswitch_6
    sget-object v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 480
    .local v0, "_arg0":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 481
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    .line 482
    goto/16 :goto_0

    .line 471
    .end local v0    # "_arg0":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v0

    .line 472
    .local v0, "_arg0":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V

    .line 474
    goto/16 :goto_0

    .line 461
    .end local v0    # "_arg0":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 463
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 466
    goto/16 :goto_0

    .line 455
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    .line 456
    goto/16 :goto_0

    .line 446
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 448
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 449
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    .line 451
    goto/16 :goto_0

    .line 438
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    :pswitch_b
    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DragEvent;

    .line 439
    .local v0, "_arg0":Landroid/view/DragEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 441
    goto/16 :goto_0

    .line 420
    .end local v0    # "_arg0":Landroid/view/DragEvent;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 422
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 424
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 426
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 428
    .local v16, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 430
    .local v17, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 431
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 433
    goto/16 :goto_0

    .line 402
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/os/Bundle;
    .end local v18    # "_arg5":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 404
    .local v7, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 406
    .local v8, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 408
    .local v9, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 410
    .local v16, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 412
    .local v17, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 413
    .restart local v18    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 415
    goto/16 :goto_0

    .line 394
    .end local v7    # "_arg0":F
    .end local v8    # "_arg1":F
    .end local v9    # "_arg2":F
    .end local v16    # "_arg3":F
    .end local v17    # "_arg4":F
    .end local v18    # "_arg5":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 397
    goto/16 :goto_0

    .line 384
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 386
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 387
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    .line 389
    goto/16 :goto_0

    .line 378
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    .line 379
    goto/16 :goto_0

    .line 371
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 372
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    .line 374
    goto/16 :goto_0

    .line 361
    .end local v0    # "_arg0":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->moved(II)V

    .line 366
    goto/16 :goto_0

    .line 351
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 353
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 354
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->hideInsets(IZ)V

    .line 356
    goto/16 :goto_0

    .line 341
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 344
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->showInsets(IZ)V

    .line 346
    goto/16 :goto_0

    .line 331
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_15
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    .line 333
    .local v0, "_arg0":Landroid/view/InsetsState;
    sget-object v1, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/InsetsSourceControl;

    .line 334
    .local v1, "_arg1":[Landroid/view/InsetsSourceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    .line 336
    goto :goto_0

    .line 307
    .end local v0    # "_arg0":Landroid/view/InsetsState;
    .end local v1    # "_arg1":[Landroid/view/InsetsSourceControl;
    :pswitch_16
    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/window/ClientWindowFrames;

    .line 309
    .local v16, "_arg0":Landroid/window/ClientWindowFrames;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 311
    .local v17, "_arg1":Z
    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/util/MergedConfiguration;

    .line 313
    .local v18, "_arg2":Landroid/util/MergedConfiguration;
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/InsetsState;

    .line 315
    .local v19, "_arg3":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 317
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 319
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 321
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 323
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 324
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindow$Stub;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V

    .line 326
    goto :goto_0

    .line 295
    .end local v16    # "_arg0":Landroid/window/ClientWindowFrames;
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Landroid/util/MergedConfiguration;
    .end local v19    # "_arg3":Landroid/view/InsetsState;
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 300
    .local v2, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v10, v0, v1, v2}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 302
    nop

    .line 526
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
