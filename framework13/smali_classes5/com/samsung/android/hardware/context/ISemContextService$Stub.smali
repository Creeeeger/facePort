.class public abstract Lcom/samsung/android/hardware/context/ISemContextService$Stub;
.super Landroid/os/Binder;
.source "ISemContextService.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/ISemContextService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/ISemContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/ISemContextService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_changeParameters:I = 0x4

.field static final blacklist TRANSACTION_getAvailableServiceMap:I = 0x5

.field static final blacklist TRANSACTION_getCurrentServiceList:I = 0x9

.field static final blacklist TRANSACTION_initializeService:I = 0x3

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_requestHistoryData:I = 0x8

.field static final blacklist TRANSACTION_requestToUpdate:I = 0x7

.field static final blacklist TRANSACTION_setReferenceData:I = 0x6

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.samsung.android.hardware.context.ISemContextService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "com.samsung.android.hardware.context.ISemContextService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hardware/context/ISemContextService;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/hardware/context/ISemContextService;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Lcom/samsung/android/hardware/context/ISemContextService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    return-object v0

    .line 114
    :pswitch_0
    const-string v0, "getCurrentServiceList"

    return-object v0

    .line 110
    :pswitch_1
    const-string/jumbo v0, "requestHistoryData"

    return-object v0

    .line 106
    :pswitch_2
    const-string/jumbo v0, "requestToUpdate"

    return-object v0

    .line 102
    :pswitch_3
    const-string/jumbo v0, "setReferenceData"

    return-object v0

    .line 98
    :pswitch_4
    const-string v0, "getAvailableServiceMap"

    return-object v0

    .line 94
    :pswitch_5
    const-string v0, "changeParameters"

    return-object v0

    .line 90
    :pswitch_6
    const-string v0, "initializeService"

    return-object v0

    .line 86
    :pswitch_7
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 82
    :pswitch_8
    const-string/jumbo v0, "registerCallback"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 446
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 125
    invoke-static {p1}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    const-string v0, "com.samsung.android.hardware.context.ISemContextService"

    .line 130
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 141
    packed-switch p1, :pswitch_data_1

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 137
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v1

    .line 244
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->getCurrentServiceList()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    goto/16 :goto_0

    .line 232
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 234
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 236
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->requestHistoryData(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_0

    .line 219
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 221
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 224
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->requestToUpdate(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto/16 :goto_0

    .line 205
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 210
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->setReferenceData(II[B)Z

    move-result v5

    .line 212
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 214
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v2

    .line 198
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 200
    goto :goto_0

    .line 184
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 186
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .restart local v3    # "_arg1":I
    sget-object v4, Lcom/samsung/android/hardware/context/SemContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 189
    .local v4, "_arg2":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->changeParameters(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    move-result v5

    .line 191
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    goto :goto_0

    .line 173
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/hardware/context/SemContextAttribute;
    .end local v5    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->initializeService(Landroid/os/IBinder;I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 163
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    .line 166
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 148
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg1":I
    sget-object v4, Lcom/samsung/android/hardware/context/SemContextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 152
    .local v4, "_arg2":Lcom/samsung/android/hardware/context/SemContextAttribute;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->registerCallback(Landroid/os/IBinder;ILcom/samsung/android/hardware/context/SemContextAttribute;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    nop

    .line 254
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/hardware/context/SemContextAttribute;
    .end local v5    # "_arg3":Ljava/lang/String;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
