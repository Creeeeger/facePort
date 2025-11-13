.class public abstract Landroid/content/IRCPInterface$Stub;
.super Landroid/os/Binder;
.source "IRCPInterface.java"

# interfaces
.implements Landroid/content/IRCPInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IRCPInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IRCPInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancel:I = 0xe

.field static final blacklist TRANSACTION_cancelCopyChunks:I = 0xd

.field static final blacklist TRANSACTION_copyChunks:I = 0xc

.field static final blacklist TRANSACTION_copyFile:I = 0x6

.field static final blacklist TRANSACTION_copyFiles:I = 0x1

.field static final blacklist TRANSACTION_copyFiles2:I = 0x10

.field static final blacklist TRANSACTION_getErrorMessage:I = 0x8

.field static final blacklist TRANSACTION_getFileInfo:I = 0xb

.field static final blacklist TRANSACTION_getFiles:I = 0xa

.field static final blacklist TRANSACTION_isFileExist:I = 0x9

.field static final blacklist TRANSACTION_moveFile:I = 0x7

.field static final blacklist TRANSACTION_moveFiles:I = 0x2

.field static final blacklist TRANSACTION_moveFiles2:I = 0x11

.field static final blacklist TRANSACTION_moveFilesForApp:I = 0x4

.field static final blacklist TRANSACTION_moveFilesForAppEx:I = 0xf

.field static final blacklist TRANSACTION_moveUnlimitedFiles:I = 0x3

.field static final blacklist TRANSACTION_moveUnlimitedFiles2:I = 0x12

.field static final blacklist TRANSACTION_moveUnlimitedFilesForApp:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    const-string v0, "android.content.IRCPInterface"

    invoke-virtual {p0, p0, v0}, Landroid/content/IRCPInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/IRCPInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    const-string v0, "android.content.IRCPInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 104
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/IRCPInterface;

    if-eqz v1, :cond_1

    .line 105
    move-object v1, v0

    check-cast v1, Landroid/content/IRCPInterface;

    return-object v1

    .line 107
    :cond_1
    new-instance v1, Landroid/content/IRCPInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IRCPInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 116
    packed-switch p0, :pswitch_data_0

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 188
    :pswitch_0
    const-string/jumbo v0, "moveUnlimitedFiles2"

    return-object v0

    .line 184
    :pswitch_1
    const-string/jumbo v0, "moveFiles2"

    return-object v0

    .line 180
    :pswitch_2
    const-string v0, "copyFiles2"

    return-object v0

    .line 176
    :pswitch_3
    const-string/jumbo v0, "moveFilesForAppEx"

    return-object v0

    .line 172
    :pswitch_4
    const-string v0, "cancel"

    return-object v0

    .line 168
    :pswitch_5
    const-string v0, "cancelCopyChunks"

    return-object v0

    .line 164
    :pswitch_6
    const-string v0, "copyChunks"

    return-object v0

    .line 160
    :pswitch_7
    const-string v0, "getFileInfo"

    return-object v0

    .line 156
    :pswitch_8
    const-string v0, "getFiles"

    return-object v0

    .line 152
    :pswitch_9
    const-string v0, "isFileExist"

    return-object v0

    .line 148
    :pswitch_a
    const-string v0, "getErrorMessage"

    return-object v0

    .line 144
    :pswitch_b
    const-string/jumbo v0, "moveFile"

    return-object v0

    .line 140
    :pswitch_c
    const-string v0, "copyFile"

    return-object v0

    .line 136
    :pswitch_d
    const-string/jumbo v0, "moveUnlimitedFilesForApp"

    return-object v0

    .line 132
    :pswitch_e
    const-string/jumbo v0, "moveFilesForApp"

    return-object v0

    .line 128
    :pswitch_f
    const-string/jumbo v0, "moveUnlimitedFiles"

    return-object v0

    .line 124
    :pswitch_10
    const-string/jumbo v0, "moveFiles"

    return-object v0

    .line 120
    :pswitch_11
    const-string v0, "copyFiles"

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

    .line 111
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 904
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 199
    invoke-static {p1}, Landroid/content/IRCPInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.content.IRCPInterface"

    .line 204
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_0

    const v0, 0xffffff

    if-gt v12, v0, :cond_0

    .line 205
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    :cond_0
    packed-switch v12, :pswitch_data_0

    .line 215
    packed-switch v12, :pswitch_data_1

    .line 495
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 211
    :pswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    return v10

    .line 478
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 480
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 482
    .local v7, "_arg1":I
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/Uri;

    .line 484
    .local v8, "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemIRCPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v9

    .line 486
    .local v9, "_arg3":Lcom/samsung/android/knox/SemIRCPCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 487
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/IRCPInterface$Stub;->moveUnlimitedFiles2(IILandroid/net/Uri;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J

    move-result-wide v0

    .line 489
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 491
    move v12, v10

    goto/16 :goto_0

    .line 458
    .end local v0    # "_result":J
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/net/Uri;
    .end local v9    # "_arg3":Lcom/samsung/android/knox/SemIRCPCallback;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 460
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 462
    .local v8, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 464
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 466
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemIRCPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v17

    .line 468
    .local v17, "_arg4":Lcom/samsung/android/knox/SemIRCPCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 469
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/IRCPInterface$Stub;->moveFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J

    move-result-wide v0

    .line 471
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 473
    move v12, v10

    goto/16 :goto_0

    .line 438
    .end local v0    # "_result":J
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Lcom/samsung/android/knox/SemIRCPCallback;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 440
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 442
    .restart local v8    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 444
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 446
    .restart local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemIRCPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v17

    .line 448
    .restart local v17    # "_arg4":Lcom/samsung/android/knox/SemIRCPCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 449
    .restart local v18    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/IRCPInterface$Stub;->copyFiles2(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;Ljava/lang/String;)J

    move-result-wide v0

    .line 451
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 453
    move v12, v10

    goto/16 :goto_0

    .line 422
    .end local v0    # "_result":J
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Lcom/samsung/android/knox/SemIRCPCallback;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 424
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 426
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 428
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 429
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/content/IRCPInterface$Stub;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v4

    .line 431
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 433
    move v12, v10

    goto/16 :goto_0

    .line 413
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg3":I
    .end local v4    # "_result":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 414
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {v11, v0, v1}, Landroid/content/IRCPInterface$Stub;->cancel(J)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    move v12, v10

    goto/16 :goto_0

    .line 404
    .end local v0    # "_arg0":J
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 405
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v11, v0, v1}, Landroid/content/IRCPInterface$Stub;->cancelCopyChunks(J)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    move v12, v10

    goto/16 :goto_0

    .line 380
    .end local v0    # "_arg0":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 382
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 384
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 386
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 388
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 390
    .local v20, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 392
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 394
    .local v23, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 395
    .local v25, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-wide/from16 v5, v20

    move/from16 v7, v22

    move-wide/from16 v8, v23

    move v12, v10

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/content/IRCPInterface$Stub;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    .line 397
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    goto/16 :goto_0

    .line 368
    .end local v0    # "_result":I
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":J
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":J
    .end local v25    # "_arg7":Z
    :pswitch_8
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {v11, v0, v1}, Landroid/content/IRCPInterface$Stub;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 373
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {v14, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 375
    goto/16 :goto_0

    .line 356
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_9
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 359
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {v11, v0, v1}, Landroid/content/IRCPInterface$Stub;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 361
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 363
    goto/16 :goto_0

    .line 344
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {v11, v0, v1}, Landroid/content/IRCPInterface$Stub;->isFileExist(Ljava/lang/String;I)Z

    move-result v2

    .line 349
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 351
    goto/16 :goto_0

    .line 334
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_b
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {v11, v0}, Landroid/content/IRCPInterface$Stub;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    goto/16 :goto_0

    .line 318
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_c
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/content/IRCPInterface$Stub;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 327
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    goto/16 :goto_0

    .line 302
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_d
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/content/IRCPInterface$Stub;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 311
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_e
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 290
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 293
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/content/IRCPInterface$Stub;->moveUnlimitedFilesForApp(ILandroid/net/Uri;II)J

    move-result-wide v4

    .line 295
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    goto/16 :goto_0

    .line 272
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":J
    :pswitch_f
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 276
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 277
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v11, v0, v1, v2}, Landroid/content/IRCPInterface$Stub;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v3

    .line 279
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v14, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":J
    :pswitch_10
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 260
    .local v1, "_arg1":I
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 262
    .local v2, "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemIRCPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v3

    .line 263
    .local v3, "_arg3":Lcom/samsung/android/knox/SemIRCPCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/content/IRCPInterface$Stub;->moveUnlimitedFiles(IILandroid/net/Uri;Lcom/samsung/android/knox/SemIRCPCallback;)J

    move-result-wide v4

    .line 265
    .restart local v4    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    goto :goto_0

    .line 238
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/net/Uri;
    .end local v3    # "_arg3":Lcom/samsung/android/knox/SemIRCPCallback;
    .end local v4    # "_result":J
    :pswitch_11
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 240
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 242
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 244
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 246
    .local v9, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemIRCPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v10

    .line 247
    .local v10, "_arg4":Lcom/samsung/android/knox/SemIRCPCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/IRCPInterface$Stub;->moveFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J

    move-result-wide v0

    .line 249
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    goto :goto_0

    .line 220
    .end local v0    # "_result":J
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "_arg4":Lcom/samsung/android/knox/SemIRCPCallback;
    :pswitch_12
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 222
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 224
    .restart local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 226
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 228
    .restart local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemIRCPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/SemIRCPCallback;

    move-result-object v10

    .line 229
    .restart local v10    # "_arg4":Lcom/samsung/android/knox/SemIRCPCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/IRCPInterface$Stub;->copyFiles(ILjava/util/List;ILjava/util/List;Lcom/samsung/android/knox/SemIRCPCallback;)J

    move-result-wide v0

    .line 231
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    nop

    .line 498
    .end local v0    # "_result":J
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "_arg4":Lcom/samsung/android/knox/SemIRCPCallback;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
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
