.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final blacklist TRANSACTION_onActivityDismissingDockedTask:I = 0x6

.field static final blacklist TRANSACTION_onActivityDismissingSplitTask:I = 0x1c

.field static final greylist-max-o TRANSACTION_onActivityForcedResizable:I = 0x5

.field static final greylist-max-o TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x7

.field static final blacklist TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted:I = 0x8

.field static final greylist-max-o TRANSACTION_onActivityPinned:I = 0x2

.field static final greylist-max-o TRANSACTION_onActivityRequestedOrientationChanged:I = 0xd

.field static final blacklist TRANSACTION_onActivityRestartAttempt:I = 0x4

.field static final blacklist TRANSACTION_onActivityRotation:I = 0x17

.field static final greylist-max-o TRANSACTION_onActivityUnpinned:I = 0x3

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x11

.field static final blacklist TRANSACTION_onLockTaskModeChanged:I = 0x19

.field static final blacklist TRANSACTION_onOccludeChangeNotice:I = 0x1a

.field static final blacklist TRANSACTION_onRecentTaskListFrozenChanged:I = 0x14

.field static final blacklist TRANSACTION_onRecentTaskListUpdated:I = 0x13

.field static final greylist-max-o TRANSACTION_onTaskCreated:I = 0x9

.field static final greylist-max-o TRANSACTION_onTaskDescriptionChanged:I = 0xc

.field static final blacklist TRANSACTION_onTaskDisplayChanged:I = 0x12

.field static final blacklist TRANSACTION_onTaskFocusChanged:I = 0x15

.field static final blacklist TRANSACTION_onTaskMovedToBack:I = 0x18

.field static final greylist-max-o TRANSACTION_onTaskMovedToFront:I = 0xb

.field static final greylist-max-o TRANSACTION_onTaskProfileLocked:I = 0xf

.field static final greylist-max-o TRANSACTION_onTaskRemovalStarted:I = 0xe

.field static final greylist-max-o TRANSACTION_onTaskRemoved:I = 0xa

.field static final blacklist TRANSACTION_onTaskRequestedOrientationChanged:I = 0x16

.field static final greylist-max-o TRANSACTION_onTaskSnapshotChanged:I = 0x10

.field static final greylist-max-o TRANSACTION_onTaskStackChanged:I = 0x1

.field static final blacklist TRANSACTION_onTaskWindowingModeChanged:I = 0x1b


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 242
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 243
    const-string v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 251
    if-nez p0, :cond_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    const-string v0, "android.app.ITaskStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 255
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_1

    .line 256
    move-object v1, v0

    check-cast v1, Landroid/app/ITaskStackListener;

    return-object v1

    .line 258
    :cond_1
    new-instance v1, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 267
    packed-switch p0, :pswitch_data_0

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 379
    :pswitch_0
    const-string/jumbo v0, "onActivityDismissingSplitTask"

    return-object v0

    .line 375
    :pswitch_1
    const-string/jumbo v0, "onTaskWindowingModeChanged"

    return-object v0

    .line 371
    :pswitch_2
    const-string/jumbo v0, "onOccludeChangeNotice"

    return-object v0

    .line 367
    :pswitch_3
    const-string/jumbo v0, "onLockTaskModeChanged"

    return-object v0

    .line 363
    :pswitch_4
    const-string/jumbo v0, "onTaskMovedToBack"

    return-object v0

    .line 359
    :pswitch_5
    const-string/jumbo v0, "onActivityRotation"

    return-object v0

    .line 355
    :pswitch_6
    const-string/jumbo v0, "onTaskRequestedOrientationChanged"

    return-object v0

    .line 351
    :pswitch_7
    const-string/jumbo v0, "onTaskFocusChanged"

    return-object v0

    .line 347
    :pswitch_8
    const-string/jumbo v0, "onRecentTaskListFrozenChanged"

    return-object v0

    .line 343
    :pswitch_9
    const-string/jumbo v0, "onRecentTaskListUpdated"

    return-object v0

    .line 339
    :pswitch_a
    const-string/jumbo v0, "onTaskDisplayChanged"

    return-object v0

    .line 335
    :pswitch_b
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    .line 331
    :pswitch_c
    const-string/jumbo v0, "onTaskSnapshotChanged"

    return-object v0

    .line 327
    :pswitch_d
    const-string/jumbo v0, "onTaskProfileLocked"

    return-object v0

    .line 323
    :pswitch_e
    const-string/jumbo v0, "onTaskRemovalStarted"

    return-object v0

    .line 319
    :pswitch_f
    const-string/jumbo v0, "onActivityRequestedOrientationChanged"

    return-object v0

    .line 315
    :pswitch_10
    const-string/jumbo v0, "onTaskDescriptionChanged"

    return-object v0

    .line 311
    :pswitch_11
    const-string/jumbo v0, "onTaskMovedToFront"

    return-object v0

    .line 307
    :pswitch_12
    const-string/jumbo v0, "onTaskRemoved"

    return-object v0

    .line 303
    :pswitch_13
    const-string/jumbo v0, "onTaskCreated"

    return-object v0

    .line 299
    :pswitch_14
    const-string/jumbo v0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object v0

    .line 295
    :pswitch_15
    const-string/jumbo v0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object v0

    .line 291
    :pswitch_16
    const-string/jumbo v0, "onActivityDismissingDockedTask"

    return-object v0

    .line 287
    :pswitch_17
    const-string/jumbo v0, "onActivityForcedResizable"

    return-object v0

    .line 283
    :pswitch_18
    const-string/jumbo v0, "onActivityRestartAttempt"

    return-object v0

    .line 279
    :pswitch_19
    const-string/jumbo v0, "onActivityUnpinned"

    return-object v0

    .line 275
    :pswitch_1a
    const-string/jumbo v0, "onActivityPinned"

    return-object v0

    .line 271
    :pswitch_1b
    const-string/jumbo v0, "onTaskStackChanged"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 262
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1195
    const/16 v0, 0x1b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 390
    invoke-static {p1}, Landroid/app/ITaskStackListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 394
    const-string v0, "android.app.ITaskStackListener"

    .line 395
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 396
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 406
    packed-switch p1, :pswitch_data_1

    .line 656
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 402
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    return v1

    .line 649
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingSplitTask(Ljava/lang/String;)V

    .line 652
    goto/16 :goto_0

    .line 641
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskWindowingModeChanged(I)V

    .line 644
    goto/16 :goto_0

    .line 631
    .end local v2    # "_arg0":I
    :pswitch_3
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 633
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 634
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onOccludeChangeNotice(Landroid/content/ComponentName;Z)V

    .line 636
    goto/16 :goto_0

    .line 623
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onLockTaskModeChanged(I)V

    .line 626
    goto/16 :goto_0

    .line 615
    .end local v2    # "_arg0":I
    :pswitch_5
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 616
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 618
    goto/16 :goto_0

    .line 607
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 608
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onActivityRotation(I)V

    .line 610
    goto/16 :goto_0

    .line 597
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 599
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 600
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskRequestedOrientationChanged(II)V

    .line 602
    goto/16 :goto_0

    .line 587
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 589
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 590
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskFocusChanged(IZ)V

    .line 592
    goto/16 :goto_0

    .line 579
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 580
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListFrozenChanged(Z)V

    .line 582
    goto/16 :goto_0

    .line 573
    .end local v2    # "_arg0":Z
    :pswitch_a
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onRecentTaskListUpdated()V

    .line 574
    goto/16 :goto_0

    .line 564
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 567
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskDisplayChanged(II)V

    .line 569
    goto/16 :goto_0

    .line 556
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_c
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 557
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 559
    goto/16 :goto_0

    .line 546
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 548
    .local v2, "_arg0":I
    sget-object v3, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskSnapshot;

    .line 549
    .local v3, "_arg1":Landroid/window/TaskSnapshot;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 551
    goto/16 :goto_0

    .line 538
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/TaskSnapshot;
    :pswitch_e
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 539
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 541
    goto/16 :goto_0

    .line 530
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_f
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 531
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 533
    goto/16 :goto_0

    .line 520
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 522
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 523
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    .line 525
    goto/16 :goto_0

    .line 512
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_11
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 513
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 515
    goto/16 :goto_0

    .line 504
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_12
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 505
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 507
    goto/16 :goto_0

    .line 496
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    .line 499
    goto/16 :goto_0

    .line 486
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 488
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 489
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 491
    goto/16 :goto_0

    .line 476
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    :pswitch_15
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 478
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 479
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 481
    goto :goto_0

    .line 466
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":I
    :pswitch_16
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 468
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 469
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 471
    goto :goto_0

    .line 460
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":I
    :pswitch_17
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedTask()V

    .line 461
    goto :goto_0

    .line 449
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 453
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 454
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 456
    goto :goto_0

    .line 435
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_19
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 437
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 439
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 441
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 442
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 444
    goto :goto_0

    .line 429
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    :pswitch_1a
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    .line 430
    goto :goto_0

    .line 416
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 420
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 422
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 423
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;III)V

    .line 425
    goto :goto_0

    .line 410
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_1c
    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    .line 411
    nop

    .line 659
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
