.class public abstract Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;
.super Landroid/os/Binder;
.source "IDesktopModeUiService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopModeUiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopModeUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_dismissDialog:I = 0x3

.field static final blacklist TRANSACTION_dismissOverlay:I = 0x6

.field static final blacklist TRANSACTION_finishActivity:I = 0xc

.field static final blacklist TRANSACTION_getCurrentDialogType:I = 0x4

.field static final blacklist TRANSACTION_getCurrentOverlayType:I = 0x7

.field static final blacklist TRANSACTION_hasOverlay:I = 0x8

.field static final blacklist TRANSACTION_hasUiElement:I = 0x1

.field static final blacklist TRANSACTION_isActivityShowing:I = 0xd

.field static final blacklist TRANSACTION_removeNavBarIcon:I = 0xf

.field static final blacklist TRANSACTION_removeNotification:I = 0xa

.field static final blacklist TRANSACTION_showDialog:I = 0x2

.field static final blacklist TRANSACTION_showNavBarIcon:I = 0xe

.field static final blacklist TRANSACTION_showNotification:I = 0x9

.field static final blacklist TRANSACTION_showOverlay:I = 0x5

.field static final blacklist TRANSACTION_startActivity:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v1, :cond_1

    .line 85
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object v1

    .line 87
    :cond_1
    new-instance v1, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 96
    packed-switch p0, :pswitch_data_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 156
    :pswitch_0
    const-string/jumbo v0, "removeNavBarIcon"

    return-object v0

    .line 152
    :pswitch_1
    const-string/jumbo v0, "showNavBarIcon"

    return-object v0

    .line 148
    :pswitch_2
    const-string v0, "isActivityShowing"

    return-object v0

    .line 144
    :pswitch_3
    const-string v0, "finishActivity"

    return-object v0

    .line 140
    :pswitch_4
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 136
    :pswitch_5
    const-string/jumbo v0, "removeNotification"

    return-object v0

    .line 132
    :pswitch_6
    const-string/jumbo v0, "showNotification"

    return-object v0

    .line 128
    :pswitch_7
    const-string v0, "hasOverlay"

    return-object v0

    .line 124
    :pswitch_8
    const-string v0, "getCurrentOverlayType"

    return-object v0

    .line 120
    :pswitch_9
    const-string v0, "dismissOverlay"

    return-object v0

    .line 116
    :pswitch_a
    const-string/jumbo v0, "showOverlay"

    return-object v0

    .line 112
    :pswitch_b
    const-string v0, "getCurrentDialogType"

    return-object v0

    .line 108
    :pswitch_c
    const-string v0, "dismissDialog"

    return-object v0

    .line 104
    :pswitch_d
    const-string/jumbo v0, "showDialog"

    return-object v0

    .line 100
    :pswitch_e
    const-string v0, "hasUiElement"

    return-object v0

    nop

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 625
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 167
    invoke-static {p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 171
    const-string v0, "com.samsung.android.desktopmode.IDesktopModeUiService"

    .line 172
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 173
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 183
    packed-switch p1, :pswitch_data_1

    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return v1

    .line 331
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->removeNavBarIcon(I)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->showNavBarIcon(I)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    goto/16 :goto_0

    .line 312
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 313
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->isActivityShowing(I)Z

    move-result v3

    .line 315
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 317
    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->finishActivity(I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_0

    .line 290
    .end local v2    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;

    move-result-object v4

    .line 295
    .local v4, "_arg2":Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->startActivity(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_0

    .line 281
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->removeNotification(I)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_0

    .line 272
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->showNotification(I)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    goto/16 :goto_0

    .line 260
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 263
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->hasOverlay(II)Z

    move-result v4

    .line 265
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 267
    goto/16 :goto_0

    .line 250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->getCurrentOverlayType(I)I

    move-result v3

    .line 253
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    goto :goto_0

    .line 239
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 242
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->dismissOverlay(II)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto :goto_0

    .line 226
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;

    move-result-object v4

    .line 231
    .local v4, "_arg2":Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->showOverlay(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto :goto_0

    .line 218
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->getCurrentDialogType()I

    move-result v2

    .line 219
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    goto :goto_0

    .line 208
    .end local v2    # "_result":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->dismissDialog(II)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_0

    .line 195
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 199
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;

    move-result-object v4

    .line 200
    .restart local v4    # "_arg2":Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->showDialog(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_0

    .line 187
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;
    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService$Stub;->hasUiElement()Z

    move-result v2

    .line 188
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    nop

    .line 342
    .end local v2    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
