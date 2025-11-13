.class public abstract Landroid/security/maintenance/IKeystoreMaintenance$Stub;
.super Landroid/os/Binder;
.source "IKeystoreMaintenance.java"

# interfaces
.implements Landroid/security/maintenance/IKeystoreMaintenance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/maintenance/IKeystoreMaintenance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearNamespace:I = 0x4

.field static final blacklist TRANSACTION_deleteAllKeys:I = 0x9

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0x6

.field static final blacklist TRANSACTION_getRotValue:I = 0xa

.field static final blacklist TRANSACTION_getState:I = 0x5

.field static final blacklist TRANSACTION_migrateKeyNamespace:I = 0x8

.field static final blacklist TRANSACTION_onDeviceOffBody:I = 0x7

.field static final blacklist TRANSACTION_onUserAdded:I = 0x1

.field static final blacklist TRANSACTION_onUserPasswordChanged:I = 0x3

.field static final blacklist TRANSACTION_onUserRemoved:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 151
    sget-object v0, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 159
    if-nez p0, :cond_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    sget-object v0, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 163
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/maintenance/IKeystoreMaintenance;

    if-eqz v1, :cond_1

    .line 164
    move-object v1, v0

    check-cast v1, Landroid/security/maintenance/IKeystoreMaintenance;

    return-object v1

    .line 166
    :cond_1
    new-instance v1, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 170
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    sget-object v0, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 175
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 176
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 186
    packed-switch p1, :pswitch_data_1

    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 182
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return v1

    .line 269
    :pswitch_1
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->getRotValue()[B

    move-result-object v2

    .line 270
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 272
    goto/16 :goto_0

    .line 263
    .end local v2    # "_result":[B
    :pswitch_2
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->deleteAllKeys()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_0

    .line 253
    :pswitch_3
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 255
    .local v2, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v3, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyDescriptor;

    .line 256
    .local v3, "_arg1":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2, v3}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto :goto_0

    .line 246
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":Landroid/system/keystore2/KeyDescriptor;
    :pswitch_4
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onDeviceOffBody()V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    goto :goto_0

    .line 240
    :pswitch_5
    invoke-virtual {p0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->earlyBootEnded()V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto :goto_0

    .line 231
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->getState(I)I

    move-result v3

    .line 234
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    goto :goto_0

    .line 220
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 223
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3, v4}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->clearNamespace(IJ)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    goto :goto_0

    .line 209
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 212
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserPasswordChanged(I[B)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_0

    .line 200
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserRemoved(I)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_0

    .line 191
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->onUserAdded(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    nop

    .line 279
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
