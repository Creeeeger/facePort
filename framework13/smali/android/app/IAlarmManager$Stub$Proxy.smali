.class Landroid/app/IAlarmManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 318
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 321
    iget-object v0, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist canScheduleExactAlarms(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 463
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 467
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    nop

    .line 470
    return v2

    .line 467
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    throw v2
.end method

.method public greylist-max-o currentNetworkTimeMillis()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 443
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 445
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 449
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    nop

    .line 452
    return-wide v2

    .line 449
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    throw v2
.end method

.method public blacklist getConfigVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 499
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 503
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 505
    nop

    .line 506
    return v2

    .line 503
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 505
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 325
    const-string v0, "android.app.IAlarmManager"

    return-object v0
.end method

.method public greylist-max-o getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 428
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 429
    sget-object v3, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 432
    .local v2, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    nop

    .line 435
    return-object v2

    .line 432
    .end local v2    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    throw v2
.end method

.method public blacklist getNextAlarmClocks(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 533
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 534
    sget-object v3, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 537
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 539
    nop

    .line 540
    return-object v2

    .line 537
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 539
    throw v2
.end method

.method public greylist-max-o getNextWakeFromIdleTime()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 410
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 414
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    nop

    .line 417
    return-wide v2

    .line 414
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw v2
.end method

.method public blacklist hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 475
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 478
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 482
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 486
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    nop

    .line 489
    return v2

    .line 486
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    throw v2
.end method

.method public greylist-max-o remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 391
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 392
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 393
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 394
    iget-object v3, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 395
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    nop

    .line 401
    return-void

    .line 398
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v2
.end method

.method public greylist-max-o set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 16
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "listener"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 333
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    move/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 336
    move-wide/from16 v5, p3

    :try_start_1
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 337
    move-wide/from16 v7, p5

    :try_start_2
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 338
    move-wide/from16 v9, p7

    :try_start_3
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 339
    move/from16 v11, p9

    :try_start_4
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 340
    const/4 v0, 0x0

    move-object/from16 v12, p10

    :try_start_5
    invoke-virtual {v1, v12, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 341
    move-object/from16 v13, p11

    :try_start_6
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 342
    move-object/from16 v14, p12

    :try_start_7
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 343
    move-object/from16 v15, p13

    :try_start_8
    invoke-virtual {v1, v15, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 344
    move-object/from16 v3, p14

    invoke-virtual {v1, v3, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 345
    move-object/from16 v3, p0

    iget-object v0, v3, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 346
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 349
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    goto :goto_2

    :catchall_6
    move-exception v0

    goto :goto_1

    :catchall_7
    move-exception v0

    goto :goto_0

    :catchall_8
    move-exception v0

    move-wide/from16 v5, p3

    :goto_0
    move-wide/from16 v7, p5

    :goto_1
    move-wide/from16 v9, p7

    :goto_2
    move/from16 v11, p9

    :goto_3
    move-object/from16 v12, p10

    :goto_4
    move-object/from16 v13, p11

    :goto_5
    move-object/from16 v14, p12

    :goto_6
    move-object/from16 v15, p13

    :goto_7
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    throw v0
.end method

.method public blacklist setAutoPowerUp(Ljava/lang/String;)V
    .locals 5
    .param p1, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 511
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 516
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    nop

    .line 522
    return-void

    .line 519
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    throw v2
.end method

.method public greylist-max-o setTime(J)Z
    .locals 5
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 361
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 362
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 366
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    nop

    .line 369
    return v2

    .line 366
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    throw v2
.end method

.method public greylist-max-o setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "zone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.app.IAlarmManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Landroid/app/IAlarmManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 379
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    nop

    .line 385
    return-void

    .line 382
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    throw v2
.end method
