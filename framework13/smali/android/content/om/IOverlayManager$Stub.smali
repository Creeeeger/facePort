.class public abstract Landroid/content/om/IOverlayManager$Stub;
.super Landroid/os/Binder;
.source "IOverlayManager.java"

# interfaces
.implements Landroid/content/om/IOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/IOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/IOverlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.om.IOverlayManager"

.field static final blacklist TRANSACTION_applySamsungConfigChangeOverlays:I = 0x10

.field static final blacklist TRANSACTION_applySamsungThemeOverlays:I = 0xe

.field static final blacklist TRANSACTION_applyWallpaperColor:I = 0x13

.field static final blacklist TRANSACTION_applyWallpaperColors:I = 0x12

.field static final blacklist TRANSACTION_commit:I = 0xd

.field static final blacklist TRANSACTION_deleteSamsungThemeOverlays:I = 0xf

.field static final greylist-max-o TRANSACTION_getAllOverlays:I = 0x1

.field static final blacklist TRANSACTION_getDefaultOverlayPackages:I = 0xb

.field static final blacklist TRANSACTION_getLastPalette:I = 0x16

.field static final greylist-max-o TRANSACTION_getOverlayInfo:I = 0x3

.field static final blacklist TRANSACTION_getOverlayInfoByIdentifier:I = 0x4

.field static final greylist-max-o TRANSACTION_getOverlayInfosForTarget:I = 0x2

.field static final blacklist TRANSACTION_getWallpaperColors:I = 0x14

.field static final blacklist TRANSACTION_invalidateCachesForOverlay:I = 0xc

.field static final blacklist TRANSACTION_readLastPalette:I = 0x15

.field static final greylist-max-o TRANSACTION_setEnabled:I = 0x5

.field static final greylist-max-o TRANSACTION_setEnabledExclusive:I = 0x6

.field static final greylist-max-o TRANSACTION_setEnabledExclusiveInCategory:I = 0x7

.field static final greylist-max-o TRANSACTION_setHighestPriority:I = 0x9

.field static final greylist-max-o TRANSACTION_setLowestPriority:I = 0xa

.field static final greylist-max-o TRANSACTION_setPriority:I = 0x8

.field static final blacklist TRANSACTION_updatePackageCache:I = 0x11


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 259
    const-string v0, "android.content.om.IOverlayManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/om/IOverlayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 267
    if-nez p0, :cond_0

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_0
    const-string v0, "android.content.om.IOverlayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 271
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/om/IOverlayManager;

    if-eqz v1, :cond_1

    .line 272
    move-object v1, v0

    check-cast v1, Landroid/content/om/IOverlayManager;

    return-object v1

    .line 274
    :cond_1
    new-instance v1, Landroid/content/om/IOverlayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/om/IOverlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 283
    packed-switch p0, :pswitch_data_0

    .line 375
    const/4 v0, 0x0

    return-object v0

    .line 371
    :pswitch_0
    const-string v0, "getLastPalette"

    return-object v0

    .line 367
    :pswitch_1
    const-string/jumbo v0, "readLastPalette"

    return-object v0

    .line 363
    :pswitch_2
    const-string v0, "getWallpaperColors"

    return-object v0

    .line 359
    :pswitch_3
    const-string v0, "applyWallpaperColor"

    return-object v0

    .line 355
    :pswitch_4
    const-string v0, "applyWallpaperColors"

    return-object v0

    .line 351
    :pswitch_5
    const-string/jumbo v0, "updatePackageCache"

    return-object v0

    .line 347
    :pswitch_6
    const-string v0, "applySamsungConfigChangeOverlays"

    return-object v0

    .line 343
    :pswitch_7
    const-string v0, "deleteSamsungThemeOverlays"

    return-object v0

    .line 339
    :pswitch_8
    const-string v0, "applySamsungThemeOverlays"

    return-object v0

    .line 335
    :pswitch_9
    const-string v0, "commit"

    return-object v0

    .line 331
    :pswitch_a
    const-string v0, "invalidateCachesForOverlay"

    return-object v0

    .line 327
    :pswitch_b
    const-string v0, "getDefaultOverlayPackages"

    return-object v0

    .line 323
    :pswitch_c
    const-string/jumbo v0, "setLowestPriority"

    return-object v0

    .line 319
    :pswitch_d
    const-string/jumbo v0, "setHighestPriority"

    return-object v0

    .line 315
    :pswitch_e
    const-string/jumbo v0, "setPriority"

    return-object v0

    .line 311
    :pswitch_f
    const-string/jumbo v0, "setEnabledExclusiveInCategory"

    return-object v0

    .line 307
    :pswitch_10
    const-string/jumbo v0, "setEnabledExclusive"

    return-object v0

    .line 303
    :pswitch_11
    const-string/jumbo v0, "setEnabled"

    return-object v0

    .line 299
    :pswitch_12
    const-string v0, "getOverlayInfoByIdentifier"

    return-object v0

    .line 295
    :pswitch_13
    const-string v0, "getOverlayInfo"

    return-object v0

    .line 291
    :pswitch_14
    const-string v0, "getOverlayInfosForTarget"

    return-object v0

    .line 287
    :pswitch_15
    const-string v0, "getAllOverlays"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/List;

    .line 412
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 414
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 278
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1281
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 382
    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 386
    const-string v0, "android.content.om.IOverlayManager"

    .line 387
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 388
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 398
    packed-switch p1, :pswitch_data_1

    .line 671
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 394
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    return v1

    .line 658
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v2, "_arg0":Ljava/util/List;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v3, "_arg1":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->getLastPalette(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    .line 663
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 665
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 666
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 667
    goto/16 :goto_0

    .line 650
    .end local v2    # "_arg0":Ljava/util/List;
    .end local v3    # "_arg1":Ljava/util/List;
    .end local v4    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->readLastPalette()Ljava/util/List;

    move-result-object v2

    .line 651
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 653
    goto/16 :goto_0

    .line 643
    .end local v2    # "_result":Ljava/util/List;
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->getWallpaperColors()Ljava/util/List;

    move-result-object v2

    .line 644
    .restart local v2    # "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 646
    goto/16 :goto_0

    .line 630
    .end local v2    # "_result":Ljava/util/List;
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 631
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 633
    .local v3, "_arg0":Ljava/util/List;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 635
    .local v4, "_arg1":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 636
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v3, v4, v5}, Landroid/content/om/IOverlayManager$Stub;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;Z)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    goto/16 :goto_0

    .line 616
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/List;
    .end local v4    # "_arg1":Ljava/util/List;
    .end local v5    # "_arg2":Z
    :pswitch_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 617
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 619
    .restart local v3    # "_arg0":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 621
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 622
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v3, v4, v5}, Landroid/content/om/IOverlayManager$Stub;->applyWallpaperColors(Ljava/util/List;II)V

    .line 624
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    goto/16 :goto_0

    .line 605
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/List;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 608
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->updatePackageCache(Ljava/lang/String;I)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    goto/16 :goto_0

    .line 589
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 591
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 593
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 595
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/om/ISamsungOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/ISamsungOverlayCallback;

    move-result-object v5

    .line 596
    .local v5, "_arg3":Landroid/content/om/ISamsungOverlayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/om/IOverlayManager$Stub;->applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z

    move-result v6

    .line 598
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 600
    goto/16 :goto_0

    .line 578
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/om/ISamsungOverlayCallback;
    .end local v6    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 580
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 581
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->deleteSamsungThemeOverlays(Ljava/util/List;I)V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_0

    .line 562
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 564
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 566
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 568
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/om/ISamsungOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/ISamsungOverlayCallback;

    move-result-object v5

    .line 569
    .restart local v5    # "_arg3":Landroid/content/om/ISamsungOverlayCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/content/om/IOverlayManager$Stub;->applySamsungThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z

    move-result v6

    .line 571
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 573
    goto/16 :goto_0

    .line 553
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/content/om/ISamsungOverlayCallback;
    .end local v6    # "_result":Z
    :pswitch_a
    sget-object v2, Landroid/content/om/OverlayManagerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayManagerTransaction;

    .line 554
    .local v2, "_arg0":Landroid/content/om/OverlayManagerTransaction;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v2}, Landroid/content/om/IOverlayManager$Stub;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    goto/16 :goto_0

    .line 542
    .end local v2    # "_arg0":Landroid/content/om/OverlayManagerTransaction;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 545
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->invalidateCachesForOverlay(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    goto/16 :goto_0

    .line 534
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_c
    invoke-virtual {p0}, Landroid/content/om/IOverlayManager$Stub;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 537
    goto/16 :goto_0

    .line 523
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 526
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v4

    .line 528
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 530
    goto/16 :goto_0

    .line 511
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 513
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 514
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v4

    .line 516
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    goto/16 :goto_0

    .line 497
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 502
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/om/IOverlayManager$Stub;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 504
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 506
    goto/16 :goto_0

    .line 485
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 487
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 488
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v4

    .line 490
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    goto/16 :goto_0

    .line 471
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 475
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 476
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/om/IOverlayManager$Stub;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v5

    .line 478
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 480
    goto/16 :goto_0

    .line 457
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 461
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 462
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/om/IOverlayManager$Stub;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v5

    .line 464
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 466
    goto :goto_0

    .line 445
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_13
    sget-object v2, Landroid/content/om/OverlayIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    .line 447
    .local v2, "_arg0":Landroid/content/om/OverlayIdentifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 448
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 450
    .local v4, "_result":Landroid/content/om/OverlayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 452
    goto :goto_0

    .line 433
    .end local v2    # "_arg0":Landroid/content/om/OverlayIdentifier;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/om/OverlayInfo;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 436
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 438
    .restart local v4    # "_result":Landroid/content/om/OverlayInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 440
    goto :goto_0

    .line 421
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/om/OverlayInfo;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 424
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v2, v3}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 426
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 428
    goto :goto_0

    .line 403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 404
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v2}, Landroid/content/om/IOverlayManager$Stub;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v3

    .line 406
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-nez v3, :cond_1

    .line 408
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 410
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    new-instance v4, Landroid/content/om/IOverlayManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v4, p3}, Landroid/content/om/IOverlayManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 416
    nop

    .line 674
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
