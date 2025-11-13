.class public abstract Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;
.super Landroid/os/Binder;
.source "IMultiControlManager.java"

# interfaces
.implements Lcom/samsung/android/multicontrol/IMultiControlManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/IMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multicontrol/IMultiControlManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableTriggerDetection:I = 0xc

.field static final blacklist TRANSACTION_forceHideCursor:I = 0x6

.field static final blacklist TRANSACTION_getProtocolVersion:I = 0x2

.field static final blacklist TRANSACTION_isAllowed:I = 0x1

.field static final blacklist TRANSACTION_resetInputFilter:I = 0x5

.field static final blacklist TRANSACTION_setCursorPosition:I = 0xb

.field static final blacklist TRANSACTION_setInputFilter:I = 0x4

.field static final blacklist TRANSACTION_setInteractive:I = 0x7

.field static final blacklist TRANSACTION_setMultiControlOutOfFocus:I = 0x8

.field static final blacklist TRANSACTION_setProtocolVersion:I = 0x3

.field static final blacklist TRANSACTION_setTriggerThreshold:I = 0xd

.field static final blacklist TRANSACTION_startDeathChecker:I = 0x9

.field static final blacklist TRANSACTION_stopDeathChecker:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.multicontrol.IMultiControlManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multicontrol/IMultiControlManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.multicontrol.IMultiControlManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multicontrol/IMultiControlManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/multicontrol/IMultiControlManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "setTriggerThreshold"

    return-object v0

    :pswitch_1
    const-string v0, "enableTriggerDetection"

    return-object v0

    :pswitch_2
    const-string v0, "setCursorPosition"

    return-object v0

    :pswitch_3
    const-string v0, "stopDeathChecker"

    return-object v0

    :pswitch_4
    const-string v0, "startDeathChecker"

    return-object v0

    :pswitch_5
    const-string v0, "setMultiControlOutOfFocus"

    return-object v0

    :pswitch_6
    const-string v0, "setInteractive"

    return-object v0

    :pswitch_7
    const-string v0, "forceHideCursor"

    return-object v0

    :pswitch_8
    const-string v0, "resetInputFilter"

    return-object v0

    :pswitch_9
    const-string v0, "setInputFilter"

    return-object v0

    :pswitch_a
    const-string v0, "setProtocolVersion"

    return-object v0

    :pswitch_b
    const-string v0, "getProtocolVersion"

    return-object v0

    :pswitch_c
    const-string v0, "isAllowed"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.multicontrol.IMultiControlManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setTriggerThreshold(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->enableTriggerDetection(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setCursorPosition(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->stopDeathChecker()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setMultiControlOutOfFocus(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setInteractive(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->forceHideCursor(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->resetInputFilter()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IInputFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IInputFilter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multicontrol/IInputFilterInstallListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->setProtocolVersion(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->getProtocolVersion()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;->isAllowed()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
