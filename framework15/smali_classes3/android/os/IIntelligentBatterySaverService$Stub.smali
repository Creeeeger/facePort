.class public abstract Landroid/os/IIntelligentBatterySaverService$Stub;
.super Landroid/os/Binder;
.source "IIntelligentBatterySaverService.java"

# interfaces
.implements Landroid/os/IIntelligentBatterySaverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIntelligentBatterySaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIntelligentBatterySaverService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addScreenQuickDimApp:I = 0x5

.field static final blacklist TRANSACTION_addSqdBlockList:I = 0x4

.field static final blacklist TRANSACTION_dexoptPackages:I = 0x12

.field static final blacklist TRANSACTION_getGain:I = 0xa

.field static final blacklist TRANSACTION_getOperationHistory:I = 0x10

.field static final blacklist TRANSACTION_getScreenQuickDimApps:I = 0x9

.field static final blacklist TRANSACTION_getSleepTime:I = 0x11

.field static final blacklist TRANSACTION_getSqdBlockList:I = 0x8

.field static final blacklist TRANSACTION_isEnableSerive:I = 0xf

.field static final blacklist TRANSACTION_isSqdSupport:I = 0x3

.field static final blacklist TRANSACTION_isSqdUiControlEnabled:I = 0x2

.field static final blacklist TRANSACTION_removeScreenQuickDimApp:I = 0x7

.field static final blacklist TRANSACTION_removeSqdBlockList:I = 0x6

.field static final blacklist TRANSACTION_setRubinEvent:I = 0xe

.field static final blacklist TRANSACTION_setSarrUiControlEnable:I = 0xb

.field static final blacklist TRANSACTION_setSleepModeEnabled:I = 0xc

.field static final blacklist TRANSACTION_setSleepTime:I = 0xd

.field static final blacklist TRANSACTION_setSqdUiControlEnabled:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IIntelligentBatterySaverService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIntelligentBatterySaverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IIntelligentBatterySaverService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IIntelligentBatterySaverService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IIntelligentBatterySaverService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IIntelligentBatterySaverService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IIntelligentBatterySaverService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIntelligentBatterySaverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "dexoptPackages"

    return-object v0

    :pswitch_1
    const-string v0, "getSleepTime"

    return-object v0

    :pswitch_2
    const-string v0, "getOperationHistory"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "isEnableSerive"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "setRubinEvent"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setSleepTime"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "setSleepModeEnabled"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "setSarrUiControlEnable"

    return-object v0

    :pswitch_8
    const-string v0, "getGain"

    return-object v0

    :pswitch_9
    const-string v0, "getScreenQuickDimApps"

    return-object v0

    :pswitch_a
    const-string v0, "getSqdBlockList"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "removeScreenQuickDimApp"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "removeSqdBlockList"

    return-object v0

    :pswitch_d
    const-string v0, "addScreenQuickDimApp"

    return-object v0

    :pswitch_e
    const-string v0, "addSqdBlockList"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "isSqdSupport"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "isSqdUiControlEnabled"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "setSqdUiControlEnabled"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/os/IIntelligentBatterySaverService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.os.IIntelligentBatterySaverService"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->dexoptPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getSleepTime()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getOperationHistory()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->isEnableSerive()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->setRubinEvent(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IIntelligentBatterySaverService$Stub;->setSleepTime(JJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->setSleepModeEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->setSarrUiControlEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getGain()[J

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getScreenQuickDimApps()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->getSqdBlockList()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/IIntelligentBatterySaverService$Stub;->removeScreenQuickDimApp(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/IIntelligentBatterySaverService$Stub;->removeSqdBlockList(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/IIntelligentBatterySaverService$Stub;->addScreenQuickDimApp(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/IIntelligentBatterySaverService$Stub;->addSqdBlockList(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->isSqdSupport()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0}, Landroid/os/IIntelligentBatterySaverService$Stub;->isSqdUiControlEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IIntelligentBatterySaverService$Stub;->setSqdUiControlEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
