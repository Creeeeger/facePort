.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_dismissAndShowAgainInputMethodPicker:I = 0x22

.field static final blacklist TRANSACTION_getAwareLockedInputMethodList:I = 0x3

.field static final blacklist TRANSACTION_getCurTokenDisplayId:I = 0x24

.field static final blacklist TRANSACTION_getCurrentFocusDisplayID:I = 0x23

.field static final greylist-max-o TRANSACTION_getCurrentInputMethodSubtype:I = 0xe

.field static final blacklist TRANSACTION_getDexSettingsValue:I = 0x20

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodList:I = 0x4

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x5

.field static final greylist-max-o TRANSACTION_getInputMethodList:I = 0x2

.field static final greylist-max-o TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x10

.field static final greylist-max-o TRANSACTION_getLastInputMethodSubtype:I = 0x6

.field static final blacklist TRANSACTION_getWACOMPen:I = 0x1d

.field static final blacklist TRANSACTION_handleVoiceHWKey:I = 0x27

.field static final greylist-max-o TRANSACTION_hideSoftInput:I = 0x8

.field static final blacklist TRANSACTION_isAccessoryKeyboard:I = 0x1c

.field static final blacklist TRANSACTION_isCurrentInputMethodAsSamsungKeyboard:I = 0x1f

.field static final blacklist TRANSACTION_isImeTraceEnabled:I = 0x16

.field static final greylist-max-o TRANSACTION_isInputMethodPickerShownForTest:I = 0xd

.field static final blacklist TRANSACTION_isInputMethodShown:I = 0x1e

.field static final blacklist TRANSACTION_minimizeSoftInput:I = 0x1a

.field static final blacklist TRANSACTION_overrideDirectWritingFlag:I = 0x26

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x13

.field static final blacklist TRANSACTION_removeImeSurfaceFromWindowAsync:I = 0x14

.field static final blacklist TRANSACTION_reportPerceptibleAsync:I = 0x12

.field static final blacklist TRANSACTION_reportVirtualDisplayGeometryAsync:I = 0x11

.field static final greylist-max-o TRANSACTION_setAdditionalInputMethodSubtypes:I = 0xf

.field static final blacklist TRANSACTION_setDirectWritingFlag:I = 0x25

.field static final blacklist TRANSACTION_setInputMethodSwitchDisable:I = 0x21

.field static final greylist-max-o TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xc

.field static final greylist-max-o TRANSACTION_showInputMethodPickerFromClient:I = 0xa

.field static final blacklist TRANSACTION_showInputMethodPickerFromSystem:I = 0xb

.field static final greylist-max-o TRANSACTION_showSoftInput:I = 0x7

.field static final blacklist TRANSACTION_startImeTrace:I = 0x17

.field static final greylist-max-o TRANSACTION_startInputOrWindowGainedFocus:I = 0x9

.field static final blacklist TRANSACTION_startProtoDump:I = 0x15

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0x19

.field static final blacklist TRANSACTION_stopImeTrace:I = 0x18

.field static final blacklist TRANSACTION_undoMinimizeSoftInput:I = 0x1b


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 184
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 192
    if-nez p0, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 196
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    return-object v1

    .line 199
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 208
    packed-switch p0, :pswitch_data_0

    .line 368
    const/4 v0, 0x0

    return-object v0

    .line 364
    :pswitch_0
    const-string/jumbo v0, "handleVoiceHWKey"

    return-object v0

    .line 360
    :pswitch_1
    const-string/jumbo v0, "overrideDirectWritingFlag"

    return-object v0

    .line 356
    :pswitch_2
    const-string/jumbo v0, "setDirectWritingFlag"

    return-object v0

    .line 352
    :pswitch_3
    const-string v0, "getCurTokenDisplayId"

    return-object v0

    .line 348
    :pswitch_4
    const-string v0, "getCurrentFocusDisplayID"

    return-object v0

    .line 344
    :pswitch_5
    const-string v0, "dismissAndShowAgainInputMethodPicker"

    return-object v0

    .line 340
    :pswitch_6
    const-string/jumbo v0, "setInputMethodSwitchDisable"

    return-object v0

    .line 336
    :pswitch_7
    const-string v0, "getDexSettingsValue"

    return-object v0

    .line 332
    :pswitch_8
    const-string/jumbo v0, "isCurrentInputMethodAsSamsungKeyboard"

    return-object v0

    .line 328
    :pswitch_9
    const-string/jumbo v0, "isInputMethodShown"

    return-object v0

    .line 324
    :pswitch_a
    const-string/jumbo v0, "getWACOMPen"

    return-object v0

    .line 320
    :pswitch_b
    const-string/jumbo v0, "isAccessoryKeyboard"

    return-object v0

    .line 316
    :pswitch_c
    const-string/jumbo v0, "undoMinimizeSoftInput"

    return-object v0

    .line 312
    :pswitch_d
    const-string/jumbo v0, "minimizeSoftInput"

    return-object v0

    .line 308
    :pswitch_e
    const-string/jumbo v0, "startStylusHandwriting"

    return-object v0

    .line 304
    :pswitch_f
    const-string/jumbo v0, "stopImeTrace"

    return-object v0

    .line 300
    :pswitch_10
    const-string/jumbo v0, "startImeTrace"

    return-object v0

    .line 296
    :pswitch_11
    const-string/jumbo v0, "isImeTraceEnabled"

    return-object v0

    .line 292
    :pswitch_12
    const-string/jumbo v0, "startProtoDump"

    return-object v0

    .line 288
    :pswitch_13
    const-string/jumbo v0, "removeImeSurfaceFromWindowAsync"

    return-object v0

    .line 284
    :pswitch_14
    const-string/jumbo v0, "removeImeSurface"

    return-object v0

    .line 280
    :pswitch_15
    const-string/jumbo v0, "reportPerceptibleAsync"

    return-object v0

    .line 276
    :pswitch_16
    const-string/jumbo v0, "reportVirtualDisplayGeometryAsync"

    return-object v0

    .line 272
    :pswitch_17
    const-string/jumbo v0, "getInputMethodWindowVisibleHeight"

    return-object v0

    .line 268
    :pswitch_18
    const-string/jumbo v0, "setAdditionalInputMethodSubtypes"

    return-object v0

    .line 264
    :pswitch_19
    const-string v0, "getCurrentInputMethodSubtype"

    return-object v0

    .line 260
    :pswitch_1a
    const-string/jumbo v0, "isInputMethodPickerShownForTest"

    return-object v0

    .line 256
    :pswitch_1b
    const-string/jumbo v0, "showInputMethodAndSubtypeEnablerFromClient"

    return-object v0

    .line 252
    :pswitch_1c
    const-string/jumbo v0, "showInputMethodPickerFromSystem"

    return-object v0

    .line 248
    :pswitch_1d
    const-string/jumbo v0, "showInputMethodPickerFromClient"

    return-object v0

    .line 244
    :pswitch_1e
    const-string/jumbo v0, "startInputOrWindowGainedFocus"

    return-object v0

    .line 240
    :pswitch_1f
    const-string/jumbo v0, "hideSoftInput"

    return-object v0

    .line 236
    :pswitch_20
    const-string/jumbo v0, "showSoftInput"

    return-object v0

    .line 232
    :pswitch_21
    const-string/jumbo v0, "getLastInputMethodSubtype"

    return-object v0

    .line 228
    :pswitch_22
    const-string v0, "getEnabledInputMethodSubtypeList"

    return-object v0

    .line 224
    :pswitch_23
    const-string v0, "getEnabledInputMethodList"

    return-object v0

    .line 220
    :pswitch_24
    const-string v0, "getAwareLockedInputMethodList"

    return-object v0

    .line 216
    :pswitch_25
    const-string/jumbo v0, "getInputMethodList"

    return-object v0

    .line 212
    :pswitch_26
    const-string v0, "addClient"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 203
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1522
    const/16 v0, 0x26

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 375
    invoke-static {p1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 379
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "com.android.internal.view.IInputMethodManager"

    .line 380
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 381
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 391
    packed-switch v13, :pswitch_data_1

    .line 782
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 387
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    return v10

    .line 776
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->handleVoiceHWKey()V

    .line 777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 770
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->overrideDirectWritingFlag()V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 762
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 763
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->setDirectWritingFlag(Z)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 754
    .end local v0    # "_arg0":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurTokenDisplayId()I

    move-result v0

    .line 755
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 747
    .end local v0    # "_result":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentFocusDisplayID()I

    move-result v0

    .line 748
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 741
    .end local v0    # "_result":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->dismissAndShowAgainInputMethodPicker()V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 731
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 733
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 734
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodSwitchDisable(Lcom/android/internal/view/IInputMethodClient;Z)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 719
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 724
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 726
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 711
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v0

    .line 712
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 714
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 704
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodShown()Z

    move-result v0

    .line 705
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 707
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 697
    .end local v0    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getWACOMPen()Z

    move-result v0

    .line 698
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 700
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 690
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isAccessoryKeyboard()I

    move-result v0

    .line 691
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 684
    .end local v0    # "_result":I
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->undoMinimizeSoftInput()V

    .line 685
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 673
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 675
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 676
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->minimizeSoftInput(Lcom/android/internal/view/IInputMethodClient;I)Z

    move-result v2

    .line 678
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 680
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 664
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 665
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startStylusHandwriting(Lcom/android/internal/view/IInputMethodClient;)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 657
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace()V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 651
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace()V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 644
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isImeTraceEnabled()Z

    move-result v0

    .line 645
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 647
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 632
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 634
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 636
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->startProtoDump([BILjava/lang/String;)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 624
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 625
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 627
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 617
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface()V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 608
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 610
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 611
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 613
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 596
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 598
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 600
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 601
    .local v2, "_arg2":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportVirtualDisplayGeometryAsync(Lcom/android/internal/view/IInputMethodClient;I[F)V

    .line 603
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 586
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[F
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 587
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight(Lcom/android/internal/view/IInputMethodClient;)I

    move-result v1

    .line 589
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 575
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_result":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 578
    .local v1, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 567
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 568
    .local v0, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v15, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 570
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 560
    .end local v0    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest()Z

    move-result v0

    .line 561
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 563
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 550
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 552
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 537
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 539
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 541
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 542
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 526
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 528
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 496
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 498
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 500
    .local v17, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 502
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 504
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 506
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 508
    .local v21, "_arg5":I
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/inputmethod/EditorInfo;

    .line 510
    .local v22, "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v23

    .line 512
    .local v23, "_arg7":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v24

    .line 514
    .local v24, "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 516
    .local v25, "_arg9":I
    sget-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/window/ImeOnBackInvokedDispatcher;

    .line 517
    .local v26, "_arg10":Landroid/window/ImeOnBackInvokedDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move v13, v10

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    .line 519
    .local v0, "_result":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 521
    goto/16 :goto_0

    .line 478
    .end local v0    # "_result":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .end local v23    # "_arg7":Lcom/android/internal/view/IInputContext;
    .end local v24    # "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v6

    .line 480
    .local v6, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 482
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 484
    .local v8, "_arg2":I
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ResultReceiver;

    .line 486
    .local v9, "_arg3":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 487
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    .line 489
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 491
    goto/16 :goto_0

    .line 460
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/ResultReceiver;
    .end local v10    # "_arg4":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v6

    .line 462
    .restart local v6    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 464
    .restart local v7    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 466
    .restart local v8    # "_arg2":I
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ResultReceiver;

    .line 468
    .restart local v9    # "_arg3":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 469
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    .line 471
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 473
    goto/16 :goto_0

    .line 452
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/ResultReceiver;
    .end local v10    # "_arg4":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 453
    .local v0, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 455
    goto/16 :goto_0

    .line 441
    .end local v0    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 444
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 446
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 448
    goto :goto_0

    .line 431
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v1

    .line 434
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 436
    goto :goto_0

    .line 419
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 421
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getAwareLockedInputMethodList(II)Ljava/util/List;

    move-result-object v2

    .line 424
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 426
    goto :goto_0

    .line 409
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 410
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList(I)Ljava/util/List;

    move-result-object v1

    .line 412
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 414
    goto :goto_0

    .line 396
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 398
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v1

    .line 400
    .local v1, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    nop

    .line 785
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v2    # "_arg2":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
