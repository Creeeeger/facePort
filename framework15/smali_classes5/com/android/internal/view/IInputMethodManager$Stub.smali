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

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegation:I = 0x1f

.field static final blacklist TRANSACTION_acceptStylusHandwritingDelegationAsync:I = 0x20

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_addVirtualStylusIdForTestSession:I = 0x22

.field static final blacklist TRANSACTION_dismissAndShowAgainInputMethodPicker:I = 0x2d

.field static final blacklist TRANSACTION_getCurTokenDisplayId:I = 0x2f

.field static final blacklist TRANSACTION_getCurrentFocusDisplayID:I = 0x2e

.field static final blacklist TRANSACTION_getCurrentInputMethodInfoAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_getCurrentInputMethodSubtype:I = 0x11

.field static final blacklist TRANSACTION_getDexSettingsValue:I = 0x2b

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodList:I = 0x4

.field static final blacklist TRANSACTION_getEnabledInputMethodListLegacy:I = 0x6

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x7

.field static final blacklist TRANSACTION_getImeTrackerService:I = 0x24

.field static final greylist-max-o TRANSACTION_getInputMethodList:I = 0x3

.field static final blacklist TRANSACTION_getInputMethodListLegacy:I = 0x5

.field static final greylist-max-o TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x14

.field static final greylist-max-o TRANSACTION_getLastInputMethodSubtype:I = 0x8

.field static final blacklist TRANSACTION_getWACOMPen:I = 0x28

.field static final blacklist TRANSACTION_handleVoiceHWKey:I = 0x30

.field static final greylist-max-o TRANSACTION_hideSoftInput:I = 0xa

.field static final blacklist TRANSACTION_hideSoftInputFromServerForTest:I = 0xb

.field static final blacklist TRANSACTION_isAccessoryKeyboard:I = 0x27

.field static final blacklist TRANSACTION_isCurrentInputMethodAsSamsungKeyboard:I = 0x2a

.field static final blacklist TRANSACTION_isImeTraceEnabled:I = 0x19

.field static final greylist-max-o TRANSACTION_isInputMethodPickerShownForTest:I = 0x10

.field static final blacklist TRANSACTION_isInputMethodShown:I = 0x29

.field static final blacklist TRANSACTION_isStylusHandwritingAvailableAsUser:I = 0x21

.field static final blacklist TRANSACTION_minimizeSoftInput:I = 0x25

.field static final blacklist TRANSACTION_prepareStylusHandwritingDelegation:I = 0x1e

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x16

.field static final blacklist TRANSACTION_removeImeSurfaceFromWindowAsync:I = 0x17

.field static final blacklist TRANSACTION_reportPerceptibleAsync:I = 0x15

.field static final greylist-max-o TRANSACTION_setAdditionalInputMethodSubtypes:I = 0x12

.field static final blacklist TRANSACTION_setExplicitlyEnabledInputMethodSubtypes:I = 0x13

.field static final blacklist TRANSACTION_setInputMethodSwitchDisable:I = 0x2c

.field static final blacklist TRANSACTION_setStylusWindowIdleTimeoutForTest:I = 0x23

.field static final greylist-max-o TRANSACTION_showInputMethodPickerFromClient:I = 0xe

.field static final blacklist TRANSACTION_showInputMethodPickerFromSystem:I = 0xf

.field static final greylist-max-o TRANSACTION_showSoftInput:I = 0x9

.field static final blacklist TRANSACTION_startConnectionlessStylusHandwriting:I = 0x1d

.field static final blacklist TRANSACTION_startImeTrace:I = 0x1a

.field static final greylist-max-o TRANSACTION_startInputOrWindowGainedFocus:I = 0xc

.field static final blacklist TRANSACTION_startInputOrWindowGainedFocusAsync:I = 0xd

.field static final blacklist TRANSACTION_startProtoDump:I = 0x18

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0x1c

.field static final blacklist TRANSACTION_stopImeTrace:I = 0x1b

.field static final blacklist TRANSACTION_undoMinimizeSoftInput:I = 0x26


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "handleVoiceHWKey"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "getCurTokenDisplayId"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "getCurrentFocusDisplayID"

    return-object v0

    :pswitch_3
    const-string v0, "dismissAndShowAgainInputMethodPicker"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "setInputMethodSwitchDisable"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "getDexSettingsValue"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "isCurrentInputMethodAsSamsungKeyboard"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "isInputMethodShown"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "getWACOMPen"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "isAccessoryKeyboard"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "undoMinimizeSoftInput"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "minimizeSoftInput"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "getImeTrackerService"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "setStylusWindowIdleTimeoutForTest"

    return-object v0

    :pswitch_e
    const-string v0, "addVirtualStylusIdForTestSession"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "isStylusHandwritingAvailableAsUser"

    return-object v0

    :pswitch_10
    const-string v0, "acceptStylusHandwritingDelegationAsync"

    return-object v0

    :pswitch_11
    const-string v0, "acceptStylusHandwritingDelegation"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "prepareStylusHandwritingDelegation"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "startConnectionlessStylusHandwriting"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "startStylusHandwriting"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "stopImeTrace"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "startImeTrace"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "isImeTraceEnabled"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "startProtoDump"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "removeImeSurfaceFromWindowAsync"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "removeImeSurface"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "reportPerceptibleAsync"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "getInputMethodWindowVisibleHeight"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "setExplicitlyEnabledInputMethodSubtypes"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "setAdditionalInputMethodSubtypes"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "getCurrentInputMethodSubtype"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "isInputMethodPickerShownForTest"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "showInputMethodPickerFromSystem"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "showInputMethodPickerFromClient"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "startInputOrWindowGainedFocusAsync"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "startInputOrWindowGainedFocus"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "hideSoftInputFromServerForTest"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "hideSoftInput"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "showSoftInput"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "getLastInputMethodSubtype"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "getEnabledInputMethodSubtypeList"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "getEnabledInputMethodListLegacy"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "getInputMethodListLegacy"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "getEnabledInputMethodList"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "getInputMethodList"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "getCurrentInputMethodInfoAsUser"

    return-object v0

    :pswitch_2f
    const-string v0, "addClient"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
.method protected blacklist addVirtualStylusIdForTestSession_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hideSoftInputFromServerForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isInputMethodPickerShownForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "com.android.internal.view.IInputMethodManager"

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

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->handleVoiceHWKey()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurTokenDisplayId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentFocusDisplayID()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->dismissAndShowAgainInputMethodPicker()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodShown()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getWACOMPen()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isAccessoryKeyboard()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->undoMinimizeSoftInput()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->isStylusHandwritingAvailableAsUser(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IBooleanListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IBooleanListener;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodManager$Stub;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isImeTraceEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->startProtoDump([BILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/inputmethod/EditorInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    sget-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    move v15, v10

    move/from16 v10, v25

    move-object/from16 v30, v11

    move/from16 v11, v26

    move-object/from16 v12, v27

    move-object v15, v13

    move/from16 v13, v28

    move/from16 v14, v29

    invoke-virtual/range {v0 .. v14}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_24
    move-object/from16 v30, v11

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/inputmethod/EditorInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move-object/from16 v12, v25

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v9, p3

    const/4 v10, 0x1

    invoke-virtual {v9, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v1, p0

    move v2, v10

    goto/16 :goto_0

    :pswitch_25
    move-object/from16 v30, v11

    move-object v9, v12

    move-object v15, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p0

    move v2, v10

    goto/16 :goto_0

    :pswitch_26
    move-object/from16 v30, v11

    move-object v9, v12

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/ResultReceiver;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move-object v5, v14

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v1, p0

    move v2, v10

    goto/16 :goto_0

    :pswitch_27
    move-object/from16 v30, v11

    move-object v9, v12

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ResultReceiver;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move v4, v14

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v1, p0

    move v2, v10

    goto/16 :goto_0

    :pswitch_28
    move-object/from16 v30, v11

    move-object v9, v12

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    move v2, v10

    invoke-virtual {v1, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_29
    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v5, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_2a
    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_2b
    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodListLegacy(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_2c
    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2d
    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2e
    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2f
    move v2, v10

    move-object/from16 v30, v11

    move-object v9, v12

    move-object v1, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethodClient;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist removeImeSurface_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setStylusWindowIdleTimeoutForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.TEST_INPUT_METHOD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist showInputMethodPickerFromSystem_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist startImeTrace_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist stopImeTrace_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/view/IInputMethodManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONTROL_UI_TRACING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
