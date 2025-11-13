.class public abstract Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;
.super Landroid/os/Binder;
.source "ICocktailHost.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_changeVisibleEdgeService:I = 0xf

.field static final blacklist TRANSACTION_closeCocktail:I = 0x6

.field static final blacklist TRANSACTION_notePauseComponent:I = 0x11

.field static final blacklist TRANSACTION_noteResumeComponent:I = 0x10

.field static final blacklist TRANSACTION_notifyKeyguardState:I = 0xa

.field static final blacklist TRANSACTION_notifyWakeUpState:I = 0xb

.field static final blacklist TRANSACTION_partiallyUpdateCocktail:I = 0x2

.field static final blacklist TRANSACTION_partiallyUpdateHelpView:I = 0x3

.field static final blacklist TRANSACTION_removeCocktail:I = 0x4

.field static final blacklist TRANSACTION_sendExtraData:I = 0xd

.field static final blacklist TRANSACTION_setDisableTickerView:I = 0xe

.field static final blacklist TRANSACTION_setPullToRefresh:I = 0x8

.field static final blacklist TRANSACTION_showCocktail:I = 0x5

.field static final blacklist TRANSACTION_switchDefaultCocktail:I = 0xc

.field static final blacklist TRANSACTION_updateCocktail:I = 0x1

.field static final blacklist TRANSACTION_updateToolLauncher:I = 0x9

.field static final blacklist TRANSACTION_viewDataChanged:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    const-string v0, "com.samsung.android.cocktailbar.ICocktailHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailHost;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cocktailbar/ICocktailHost;

    return-object v1

    .line 88
    :cond_1
    new-instance v1, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 97
    packed-switch p0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 165
    :pswitch_0
    const-string v0, "notePauseComponent"

    return-object v0

    .line 161
    :pswitch_1
    const-string v0, "noteResumeComponent"

    return-object v0

    .line 157
    :pswitch_2
    const-string v0, "changeVisibleEdgeService"

    return-object v0

    .line 153
    :pswitch_3
    const-string/jumbo v0, "setDisableTickerView"

    return-object v0

    .line 149
    :pswitch_4
    const-string/jumbo v0, "sendExtraData"

    return-object v0

    .line 145
    :pswitch_5
    const-string/jumbo v0, "switchDefaultCocktail"

    return-object v0

    .line 141
    :pswitch_6
    const-string v0, "notifyWakeUpState"

    return-object v0

    .line 137
    :pswitch_7
    const-string v0, "notifyKeyguardState"

    return-object v0

    .line 133
    :pswitch_8
    const-string/jumbo v0, "updateToolLauncher"

    return-object v0

    .line 129
    :pswitch_9
    const-string/jumbo v0, "setPullToRefresh"

    return-object v0

    .line 125
    :pswitch_a
    const-string/jumbo v0, "viewDataChanged"

    return-object v0

    .line 121
    :pswitch_b
    const-string v0, "closeCocktail"

    return-object v0

    .line 117
    :pswitch_c
    const-string/jumbo v0, "showCocktail"

    return-object v0

    .line 113
    :pswitch_d
    const-string/jumbo v0, "removeCocktail"

    return-object v0

    .line 109
    :pswitch_e
    const-string/jumbo v0, "partiallyUpdateHelpView"

    return-object v0

    .line 105
    :pswitch_f
    const-string/jumbo v0, "partiallyUpdateCocktail"

    return-object v0

    .line 101
    :pswitch_10
    const-string/jumbo v0, "updateCocktail"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 708
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 176
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 180
    const-string v0, "com.samsung.android.cocktailbar.ICocktailHost"

    .line 181
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 182
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 192
    packed-switch p1, :pswitch_data_1

    .line 391
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 188
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v1

    .line 383
    :pswitch_1
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 384
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {p0, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->notePauseComponent(Landroid/content/ComponentName;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    goto/16 :goto_0

    .line 374
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 375
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->noteResumeComponent(Landroid/content/ComponentName;)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    goto/16 :goto_0

    .line 363
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 365
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 366
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->changeVisibleEdgeService(ZI)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_0

    .line 352
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 355
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->setDisableTickerView(II)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto/16 :goto_0

    .line 341
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 344
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->sendExtraData(ILandroid/os/Bundle;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto/16 :goto_0

    .line 332
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->switchDefaultCocktail(I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    goto/16 :goto_0

    .line 319
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 321
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 323
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 324
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->notifyWakeUpState(ZII)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_0

    .line 308
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 310
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 311
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->notifyKeyguardState(ZI)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto/16 :goto_0

    .line 299
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 300
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->updateToolLauncher(I)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_0

    .line 284
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 290
    .local v4, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 291
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->setPullToRefresh(IILandroid/app/PendingIntent;I)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto/16 :goto_0

    .line 271
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/app/PendingIntent;
    .end local v5    # "_arg3":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 273
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 276
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->viewDataChanged(III)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_0

    .line 258
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->closeCocktail(III)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto :goto_0

    .line 247
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 250
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->showCocktail(II)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto :goto_0

    .line 236
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 239
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->removeCocktail(II)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto :goto_0

    .line 223
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 227
    .local v3, "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->partiallyUpdateHelpView(ILandroid/widget/RemoteViews;I)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_0

    .line 210
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 212
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 214
    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 215
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/samsung/android/cocktailbar/Cocktail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 201
    .local v3, "_arg1":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 202
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    nop

    .line 394
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "_arg2":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
