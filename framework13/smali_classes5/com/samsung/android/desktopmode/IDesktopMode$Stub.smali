.class public abstract Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.super Landroid/os/Binder;
.source "IDesktopMode.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDesktopModeKillPolicy:I = 0xb

.field static final blacklist TRANSACTION_getDesktopModeState:I = 0x3

.field static final blacklist TRANSACTION_isAllowed:I = 0x9

.field static final blacklist TRANSACTION_isDesktopDockConnected:I = 0x1

.field static final blacklist TRANSACTION_isDesktopMode:I = 0x2

.field static final blacklist TRANSACTION_isDeviceConnected:I = 0x8

.field static final blacklist TRANSACTION_onSecuredAppLaunched:I = 0xe

.field static final blacklist TRANSACTION_registerBlocker:I = 0x5

.field static final blacklist TRANSACTION_registerDesktopLauncher:I = 0xc

.field static final blacklist TRANSACTION_registerDesktopModeListener:I = 0x4

.field static final blacklist TRANSACTION_scheduleUpdateDesktopMode:I = 0xa

.field static final blacklist TRANSACTION_sendMessage:I = 0xd

.field static final blacklist TRANSACTION_unregisterBlocker:I = 0x7

.field static final blacklist TRANSACTION_unregisterDesktopModeListener:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopMode;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopmode/IDesktopMode;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/desktopmode/IDesktopMode;

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 160
    :pswitch_0
    const-string v0, "onSecuredAppLaunched"

    return-object v0

    .line 156
    :pswitch_1
    const-string/jumbo v0, "sendMessage"

    return-object v0

    .line 152
    :pswitch_2
    const-string/jumbo v0, "registerDesktopLauncher"

    return-object v0

    .line 148
    :pswitch_3
    const-string v0, "getDesktopModeKillPolicy"

    return-object v0

    .line 144
    :pswitch_4
    const-string/jumbo v0, "scheduleUpdateDesktopMode"

    return-object v0

    .line 140
    :pswitch_5
    const-string v0, "isAllowed"

    return-object v0

    .line 136
    :pswitch_6
    const-string v0, "isDeviceConnected"

    return-object v0

    .line 132
    :pswitch_7
    const-string/jumbo v0, "unregisterBlocker"

    return-object v0

    .line 128
    :pswitch_8
    const-string/jumbo v0, "unregisterDesktopModeListener"

    return-object v0

    .line 124
    :pswitch_9
    const-string/jumbo v0, "registerBlocker"

    return-object v0

    .line 120
    :pswitch_a
    const-string/jumbo v0, "registerDesktopModeListener"

    return-object v0

    .line 116
    :pswitch_b
    const-string v0, "getDesktopModeState"

    return-object v0

    .line 112
    :pswitch_c
    const-string v0, "isDesktopMode"

    return-object v0

    .line 108
    :pswitch_d
    const-string v0, "isDesktopDockConnected"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 99
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 599
    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 171
    invoke-static {p1}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 175
    const-string v0, "com.samsung.android.desktopmode.IDesktopMode"

    .line 176
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 177
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 187
    packed-switch p1, :pswitch_data_1

    .line 316
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 183
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return v1

    .line 306
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 308
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_0

    .line 296
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 297
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 299
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    goto/16 :goto_0

    .line 287
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

    move-result-object v2

    .line 288
    .local v2, "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    goto/16 :goto_0

    .line 279
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeLauncher;
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object v2

    .line 280
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 282
    goto/16 :goto_0

    .line 271
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 272
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->scheduleUpdateDesktopMode(Z)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    goto/16 :goto_0

    .line 263
    .end local v2    # "_arg0":Z
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isAllowed()Z

    move-result v2

    .line 264
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 266
    goto/16 :goto_0

    .line 256
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDeviceConnected()Z

    move-result v2

    .line 257
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 259
    goto/16 :goto_0

    .line 247
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    move-result-object v2

    .line 248
    .local v2, "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeBlocker;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    move-result v3

    .line 250
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 252
    goto :goto_0

    .line 237
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeBlocker;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/desktopmode/IDesktopModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeListener;

    move-result-object v2

    .line 238
    .local v2, "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    move-result v3

    .line 240
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 242
    goto :goto_0

    .line 225
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeListener;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    move-result-object v2

    .line 227
    .local v2, "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeBlocker;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    move-result v4

    .line 230
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 232
    goto :goto_0

    .line 213
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeBlocker;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/desktopmode/IDesktopModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeListener;

    move-result-object v2

    .line 215
    .local v2, "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 216
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    move-result v4

    .line 218
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 220
    goto :goto_0

    .line 205
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    .line 206
    .local v2, "_result":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    goto :goto_0

    .line 198
    .end local v2    # "_result":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopMode()Z

    move-result v2

    .line 199
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    goto :goto_0

    .line 191
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopDockConnected()Z

    move-result v2

    .line 192
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 194
    nop

    .line 319
    .end local v2    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
