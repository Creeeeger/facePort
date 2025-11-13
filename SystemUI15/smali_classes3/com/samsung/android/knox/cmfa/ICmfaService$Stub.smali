.class public abstract Lcom/samsung/android/knox/cmfa/ICmfaService$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/knox/cmfa/ICmfaService;


# static fields
.field public static final TRANSACTION_check:I = 0x7

.field public static final TRANSACTION_disable:I = 0x6

.field public static final TRANSACTION_enable:I = 0x5

.field public static final TRANSACTION_getFactorsToSetup:I = 0x3

.field public static final TRANSACTION_getValidActions:I = 0x4

.field public static final TRANSACTION_isEnabled:I = 0x1

.field public static final TRANSACTION_isStarted:I = 0x2

.field public static final TRANSACTION_notifyTestFactorScoreChange:I = 0xc

.field public static final TRANSACTION_registerListener:I = 0xa

.field public static final TRANSACTION_start:I = 0x8

.field public static final TRANSACTION_stop:I = 0x9

.field public static final TRANSACTION_unregisterListener:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.cmfa.ICmfaService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/ICmfaService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.cmfa.ICmfaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/cmfa/ICmfaService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/cmfa/ICmfaService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "notifyTestFactorScoreChange"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "unregisterListener"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "registerListener"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "stop"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "start"

    return-object p0

    :pswitch_5
    const-string p0, "check"

    return-object p0

    :pswitch_6
    const-string p0, "disable"

    return-object p0

    :pswitch_7
    const-string p0, "enable"

    return-object p0

    :pswitch_8
    const-string p0, "getValidActions"

    return-object p0

    :pswitch_9
    const-string p0, "getFactorsToSetup"

    return-object p0

    :pswitch_a
    const-string p0, "isStarted"

    return-object p0

    :pswitch_b
    const-string p0, "isEnabled"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/ICmfaService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.cmfa.ICmfaService"

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

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, v2, v3, p4}, Lcom/samsung/android/knox/cmfa/ICmfaService;->notifyTestFactorScoreChange(Ljava/lang/String;JZ)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IEventListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->unregisterListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IEventListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->registerListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->stop(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->start(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/cmfa/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/cmfa/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/cmfa/ICmfaService;->check(Lcom/samsung/android/knox/cmfa/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_6
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->disable()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/cmfa/ICmfaService;->enable(Ljava/lang/String;Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_8
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getValidActions()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_9
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->getFactorsToSetup()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_a
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isStarted()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_b
    invoke-interface {p0}, Lcom/samsung/android/knox/cmfa/ICmfaService;->isEnabled()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
