.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceService"

.field static final greylist-max-o TRANSACTION_addListener:I = 0x2

.field static final greylist-max-o TRANSACTION_getContactCap:I = 0x6

.field static final greylist-max-o TRANSACTION_getContactListCap:I = 0x7

.field static final greylist-max-o TRANSACTION_getVersion:I = 0x1

.field static final greylist-max-o TRANSACTION_publishMyCap:I = 0x5

.field static final greylist-max-o TRANSACTION_reenableService:I = 0x4

.field static final greylist-max-o TRANSACTION_removeListener:I = 0x3

.field static final greylist-max-o TRANSACTION_setNewFeatureTag:I = 0x8


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 137
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 149
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    if-eqz v1, :cond_1

    .line 150
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/presence/IPresenceService;

    return-object v1

    .line 152
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 161
    packed-switch p0, :pswitch_data_0

    .line 197
    const/4 v0, 0x0

    return-object v0

    .line 193
    :pswitch_0
    const-string/jumbo v0, "setNewFeatureTag"

    return-object v0

    .line 189
    :pswitch_1
    const-string v0, "getContactListCap"

    return-object v0

    .line 185
    :pswitch_2
    const-string v0, "getContactCap"

    return-object v0

    .line 181
    :pswitch_3
    const-string/jumbo v0, "publishMyCap"

    return-object v0

    .line 177
    :pswitch_4
    const-string/jumbo v0, "reenableService"

    return-object v0

    .line 173
    :pswitch_5
    const-string/jumbo v0, "removeListener"

    return-object v0

    .line 169
    :pswitch_6
    const-string v0, "addListener"

    return-object v0

    .line 165
    :pswitch_7
    const-string v0, "getVersion"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 156
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 604
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 204
    invoke-static {p1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 208
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceService"

    .line 209
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 210
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 220
    packed-switch p1, :pswitch_data_1

    .line 331
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 216
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    return v1

    .line 316
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 318
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    .line 322
    .local v4, "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 323
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v6

    .line 325
    .local v6, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 327
    goto/16 :goto_0

    .line 302
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/android/ims/internal/uce/presence/PresServiceInfo;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 307
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 309
    .local v5, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    goto/16 :goto_0

    .line 288
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 293
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 295
    .restart local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 297
    goto/16 :goto_0

    .line 274
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/presence/PresCapInfo;

    .line 278
    .local v3, "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 279
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 281
    .restart local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 283
    goto :goto_0

    .line 262
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/presence/PresCapInfo;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v4

    .line 267
    .local v4, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    goto :goto_0

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    .line 253
    .local v3, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v4

    .line 255
    .restart local v4    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 257
    goto :goto_0

    .line 235
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v4    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v3

    .line 239
    .local v3, "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    sget-object v4, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/common/UceLong;

    .line 240
    .local v4, "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v5

    .line 242
    .restart local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 244
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 245
    goto :goto_0

    .line 225
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v4    # "_arg2":Lcom/android/ims/internal/uce/common/UceLong;
    .end local v5    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 226
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v3

    .line 228
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 230
    nop

    .line 334
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
