.class public abstract Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.super Landroid/os/Binder;
.source "IPersistentDataBlockService.java"

# interfaces
.implements Landroid/service/persistentdata/IPersistentDataBlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/persistentdata/IPersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.persistentdata.IPersistentDataBlockService"

.field static final greylist-max-o TRANSACTION_getDataBlockSize:I = 0x4

.field static final greylist-max-o TRANSACTION_getFlashLockState:I = 0x8

.field static final greylist-max-o TRANSACTION_getMaximumDataBlockSize:I = 0x5

.field static final greylist-max-o TRANSACTION_getOemUnlockEnabled:I = 0x7

.field static final blacklist TRANSACTION_getPersistentDataPackageName:I = 0xa

.field static final greylist-max-o TRANSACTION_hasFrpCredentialHandle:I = 0x9

.field static final blacklist TRANSACTION_isEnabled:I = 0xb

.field static final greylist-max-o TRANSACTION_read:I = 0x2

.field static final greylist-max-o TRANSACTION_setOemUnlockEnabled:I = 0x6

.field static final greylist-max-o TRANSACTION_wipe:I = 0x3

.field static final greylist-max-o TRANSACTION_write:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/persistentdata/IPersistentDataBlockService;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/service/persistentdata/IPersistentDataBlockService;

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_0
    const-string/jumbo v0, "isEnabled"

    return-object v0

    .line 135
    :pswitch_1
    const-string/jumbo v0, "getPersistentDataPackageName"

    return-object v0

    .line 131
    :pswitch_2
    const-string/jumbo v0, "hasFrpCredentialHandle"

    return-object v0

    .line 127
    :pswitch_3
    const-string v0, "getFlashLockState"

    return-object v0

    .line 123
    :pswitch_4
    const-string/jumbo v0, "getOemUnlockEnabled"

    return-object v0

    .line 119
    :pswitch_5
    const-string/jumbo v0, "setOemUnlockEnabled"

    return-object v0

    .line 115
    :pswitch_6
    const-string/jumbo v0, "getMaximumDataBlockSize"

    return-object v0

    .line 111
    :pswitch_7
    const-string v0, "getDataBlockSize"

    return-object v0

    .line 107
    :pswitch_8
    const-string/jumbo v0, "wipe"

    return-object v0

    .line 103
    :pswitch_9
    const-string/jumbo v0, "read"

    return-object v0

    .line 99
    :pswitch_a
    const-string/jumbo v0, "write"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 470
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    .line 155
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 166
    packed-switch p1, :pswitch_data_1

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 162
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return v1

    .line 244
    :pswitch_1
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->isEnabled()Z

    move-result v2

    .line 245
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 247
    goto/16 :goto_0

    .line 237
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getPersistentDataPackageName()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    goto :goto_0

    .line 230
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->hasFrpCredentialHandle()Z

    move-result v2

    .line 231
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    goto :goto_0

    .line 223
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getFlashLockState()I

    move-result v2

    .line 224
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    goto :goto_0

    .line 216
    .end local v2    # "_result":I
    :pswitch_5
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getOemUnlockEnabled()Z

    move-result v2

    .line 217
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 219
    goto :goto_0

    .line 208
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 209
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->setOemUnlockEnabled(Z)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    goto :goto_0

    .line 200
    .end local v2    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getMaximumDataBlockSize()J

    move-result-wide v2

    .line 201
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    goto :goto_0

    .line 193
    .end local v2    # "_result":J
    :pswitch_8
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getDataBlockSize()I

    move-result v2

    .line 194
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    goto :goto_0

    .line 187
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->wipe()V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_0

    .line 180
    :pswitch_a
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->read()[B

    move-result-object v2

    .line 181
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 183
    goto :goto_0

    .line 171
    .end local v2    # "_result":[B
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 172
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->write([B)I

    move-result v3

    .line 174
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    nop

    .line 254
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
