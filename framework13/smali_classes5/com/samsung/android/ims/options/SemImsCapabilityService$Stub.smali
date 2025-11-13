.class public abstract Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;
.super Landroid/os/Binder;
.source "SemImsCapabilityService.java"

# interfaces
.implements Lcom/samsung/android/ims/options/SemImsCapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemImsCapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCapabilities:I = 0x2

.field static final blacklist TRANSACTION_getCapabilitiesByContactId:I = 0x4

.field static final blacklist TRANSACTION_getCapabilitiesByNumber:I = 0x3

.field static final blacklist TRANSACTION_getOwnCapabilities:I = 0x1

.field static final blacklist TRANSACTION_registerListener:I = 0x5

.field static final blacklist TRANSACTION_unregisterListener:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemImsCapabilityService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "com.samsung.android.ims.options.SemImsCapabilityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v1, :cond_1

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/options/SemImsCapabilityService;

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_0
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 89
    :pswitch_1
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 85
    :pswitch_2
    const-string v0, "getCapabilitiesByContactId"

    return-object v0

    .line 81
    :pswitch_3
    const-string v0, "getCapabilitiesByNumber"

    return-object v0

    .line 77
    :pswitch_4
    const-string v0, "getCapabilities"

    return-object v0

    .line 73
    :pswitch_5
    const-string v0, "getOwnCapabilities"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 345
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const-string v0, "com.samsung.android.ims.options.SemImsCapabilityService"

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 120
    packed-switch p1, :pswitch_data_1

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 191
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->unregisterListener(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto/16 :goto_0

    .line 179
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;

    move-result-object v2

    .line 181
    .local v2, "_arg0":Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    goto :goto_0

    .line 165
    .end local v2    # "_arg0":Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 170
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v5

    .line 172
    .local v5, "_result":[Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 174
    goto :goto_0

    .line 149
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":[Lcom/samsung/android/ims/options/SemCapabilities;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 153
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 155
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 156
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v6

    .line 158
    .local v6, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 140
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v5

    .line 142
    .local v5, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v3

    .line 128
    .local v3, "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    nop

    .line 204
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/samsung/android/ims/options/SemCapabilities;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
