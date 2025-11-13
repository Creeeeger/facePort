.class public abstract Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;


# static fields
.field public static final TRANSACTION_check:I = 0x7

.field public static final TRANSACTION_configFeature:I = 0xc

.field public static final TRANSACTION_disable:I = 0x6

.field public static final TRANSACTION_disableFeature:I = 0xb

.field public static final TRANSACTION_enable:I = 0x5

.field public static final TRANSACTION_enableFeature:I = 0xa

.field public static final TRANSACTION_getConfiguration:I = 0xd

.field public static final TRANSACTION_getFactorsToSetup:I = 0x3

.field public static final TRANSACTION_getValidActions:I = 0x4

.field public static final TRANSACTION_isEnabled:I = 0x1

.field public static final TRANSACTION_isStarted:I = 0x2

.field public static final TRANSACTION_notifyTestFactorScoreChange:I = 0x10

.field public static final TRANSACTION_registerListener:I = 0xe

.field public static final TRANSACTION_start:I = 0x8

.field public static final TRANSACTION_stop:I = 0x9

.field public static final TRANSACTION_unregisterListener:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.zt.config.IKnoxZtCoreService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.zt.config.IKnoxZtCoreService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.zt.config.IKnoxZtCoreService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p0, p1, v2, v3, v0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->notifyTestFactorScoreChange(Ljava/lang/String;JZ)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/zt/config/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/IEventListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->unregisterListener(Lcom/samsung/android/knox/zt/config/IEventListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/zt/config/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/IEventListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->registerListener(Lcom/samsung/android/knox/zt/config/IEventListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->getConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->configFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->disableFeature(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->enableFeature(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/zt/config/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/IResultListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->stop(Lcom/samsung/android/knox/zt/config/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/zt/config/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/IResultListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->start(Lcom/samsung/android/knox/zt/config/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/zt/config/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/config/IResultListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->check(Lcom/samsung/android/knox/zt/config/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_a
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->disable()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->enable(Ljava/lang/String;Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_c
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->getValidActions()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService$_Parcel;->writeTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_0

    :pswitch_d
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->getFactorsToSetup()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v1}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService$_Parcel;->writeTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    goto :goto_0

    :pswitch_e
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->isStarted()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_f
    invoke-interface {p0}, Lcom/samsung/android/knox/zt/config/IKnoxZtCoreService;->isEnabled()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
