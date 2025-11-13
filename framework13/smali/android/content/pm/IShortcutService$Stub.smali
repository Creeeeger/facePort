.class public abstract Landroid/content/pm/IShortcutService$Stub;
.super Landroid/os/Binder;
.source "IShortcutService.java"

# interfaces
.implements Landroid/content/pm/IShortcutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IShortcutService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IShortcutService"

.field static final greylist-max-o TRANSACTION_addDynamicShortcuts:I = 0x2

.field static final greylist-max-o TRANSACTION_applyRestore:I = 0x12

.field static final blacklist TRANSACTION_applyRestoreSmartSwitch:I = 0x1a

.field static final greylist-max-o TRANSACTION_createShortcutResultIntent:I = 0x7

.field static final greylist-max-o TRANSACTION_disableShortcuts:I = 0x8

.field static final greylist-max-o TRANSACTION_enableShortcuts:I = 0x9

.field static final greylist-max-o TRANSACTION_getBackupPayload:I = 0x11

.field static final blacklist TRANSACTION_getBackupShortcut:I = 0x1e

.field static final blacklist TRANSACTION_getBitmapPathList:I = 0x1d

.field static final greylist-max-o TRANSACTION_getIconMaxDimensions:I = 0xd

.field static final greylist-max-o TRANSACTION_getMaxShortcutCountPerActivity:I = 0xa

.field static final greylist-max-o TRANSACTION_getRateLimitResetTime:I = 0xc

.field static final greylist-max-o TRANSACTION_getRemainingCallCount:I = 0xb

.field static final blacklist TRANSACTION_getShareTargets:I = 0x14

.field static final blacklist TRANSACTION_getShortcutBitmapsFileDescriptor:I = 0x1b

.field static final blacklist TRANSACTION_getShortcuts:I = 0x17

.field static final blacklist TRANSACTION_hasShareTargets:I = 0x15

.field static final greylist-max-o TRANSACTION_isRequestPinItemSupported:I = 0x13

.field static final greylist-max-o TRANSACTION_onApplicationActive:I = 0x10

.field static final blacklist TRANSACTION_pushDynamicShortcut:I = 0x18

.field static final greylist-max-o TRANSACTION_removeAllDynamicShortcuts:I = 0x4

.field static final greylist-max-o TRANSACTION_removeDynamicShortcuts:I = 0x3

.field static final blacklist TRANSACTION_removeLongLivedShortcuts:I = 0x16

.field static final greylist-max-o TRANSACTION_reportShortcutUsed:I = 0xe

.field static final greylist-max-o TRANSACTION_requestPinShortcut:I = 0x6

.field static final blacklist TRANSACTION_requestPinShortcutAsDisplay:I = 0x19

.field static final greylist-max-o TRANSACTION_resetThrottling:I = 0xf

.field static final blacklist TRANSACTION_restoreBitmapsFromBackupService:I = 0x1c

.field static final greylist-max-o TRANSACTION_setDynamicShortcuts:I = 0x1

.field static final greylist-max-o TRANSACTION_updateShortcuts:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 135
    const-string v0, "android.content.pm.IShortcutService"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IShortcutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 143
    if-nez p0, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    const-string v0, "android.content.pm.IShortcutService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 147
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IShortcutService;

    if-eqz v1, :cond_1

    .line 148
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IShortcutService;

    return-object v1

    .line 150
    :cond_1
    new-instance v1, Landroid/content/pm/IShortcutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IShortcutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 159
    packed-switch p0, :pswitch_data_0

    .line 283
    const/4 v0, 0x0

    return-object v0

    .line 279
    :pswitch_0
    const-string v0, "getBackupShortcut"

    return-object v0

    .line 275
    :pswitch_1
    const-string v0, "getBitmapPathList"

    return-object v0

    .line 271
    :pswitch_2
    const-string/jumbo v0, "restoreBitmapsFromBackupService"

    return-object v0

    .line 267
    :pswitch_3
    const-string v0, "getShortcutBitmapsFileDescriptor"

    return-object v0

    .line 263
    :pswitch_4
    const-string v0, "applyRestoreSmartSwitch"

    return-object v0

    .line 259
    :pswitch_5
    const-string/jumbo v0, "requestPinShortcutAsDisplay"

    return-object v0

    .line 255
    :pswitch_6
    const-string/jumbo v0, "pushDynamicShortcut"

    return-object v0

    .line 251
    :pswitch_7
    const-string v0, "getShortcuts"

    return-object v0

    .line 247
    :pswitch_8
    const-string/jumbo v0, "removeLongLivedShortcuts"

    return-object v0

    .line 243
    :pswitch_9
    const-string v0, "hasShareTargets"

    return-object v0

    .line 239
    :pswitch_a
    const-string v0, "getShareTargets"

    return-object v0

    .line 235
    :pswitch_b
    const-string v0, "isRequestPinItemSupported"

    return-object v0

    .line 231
    :pswitch_c
    const-string v0, "applyRestore"

    return-object v0

    .line 227
    :pswitch_d
    const-string v0, "getBackupPayload"

    return-object v0

    .line 223
    :pswitch_e
    const-string/jumbo v0, "onApplicationActive"

    return-object v0

    .line 219
    :pswitch_f
    const-string/jumbo v0, "resetThrottling"

    return-object v0

    .line 215
    :pswitch_10
    const-string/jumbo v0, "reportShortcutUsed"

    return-object v0

    .line 211
    :pswitch_11
    const-string v0, "getIconMaxDimensions"

    return-object v0

    .line 207
    :pswitch_12
    const-string v0, "getRateLimitResetTime"

    return-object v0

    .line 203
    :pswitch_13
    const-string v0, "getRemainingCallCount"

    return-object v0

    .line 199
    :pswitch_14
    const-string v0, "getMaxShortcutCountPerActivity"

    return-object v0

    .line 195
    :pswitch_15
    const-string v0, "enableShortcuts"

    return-object v0

    .line 191
    :pswitch_16
    const-string v0, "disableShortcuts"

    return-object v0

    .line 187
    :pswitch_17
    const-string v0, "createShortcutResultIntent"

    return-object v0

    .line 183
    :pswitch_18
    const-string/jumbo v0, "requestPinShortcut"

    return-object v0

    .line 179
    :pswitch_19
    const-string/jumbo v0, "updateShortcuts"

    return-object v0

    .line 175
    :pswitch_1a
    const-string/jumbo v0, "removeAllDynamicShortcuts"

    return-object v0

    .line 171
    :pswitch_1b
    const-string/jumbo v0, "removeDynamicShortcuts"

    return-object v0

    .line 167
    :pswitch_1c
    const-string v0, "addDynamicShortcuts"

    return-object v0

    .line 163
    :pswitch_1d
    const-string/jumbo v0, "setDynamicShortcuts"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 154
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1300
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 290
    invoke-static {p1}, Landroid/content/pm/IShortcutService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.content.pm.IShortcutService"

    .line 295
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 296
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 306
    packed-switch v8, :pswitch_data_1

    .line 688
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 302
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    return v12

    .line 679
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 680
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {v7, v0}, Landroid/content/pm/IShortcutService$Stub;->getBackupShortcut(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 682
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 684
    goto/16 :goto_0

    .line 669
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 670
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {v7, v0}, Landroid/content/pm/IShortcutService$Stub;->getBitmapPathList(I)[Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 674
    goto/16 :goto_0

    .line 656
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_3
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 658
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->restoreBitmapsFromBackupService(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    goto/16 :goto_0

    .line 648
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->getShortcutBitmapsFileDescriptor()Lcom/android/internal/os/IParcelFileDescriptorFactory;

    move-result-object v0

    .line 649
    .local v0, "_result":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 651
    goto/16 :goto_0

    .line 637
    .end local v0    # "_result":Lcom/android/internal/os/IParcelFileDescriptorFactory;
    :pswitch_5
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 639
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 640
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->applyRestoreSmartSwitch(Landroid/os/ParcelFileDescriptor;I)I

    move-result v2

    .line 642
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    goto/16 :goto_0

    .line 618
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 620
    .local v13, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ShortcutInfo;

    .line 622
    .local v14, "_arg1":Landroid/content/pm/ShortcutInfo;
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/IntentSender;

    .line 624
    .local v15, "_arg2":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 626
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 628
    .local v17, "_arg4":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/infra/AndroidFuture;

    .line 629
    .local v18, "_arg5":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IShortcutService$Stub;->requestPinShortcutAsDisplay(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;IILcom/android/internal/infra/AndroidFuture;)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    goto/16 :goto_0

    .line 605
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v15    # "_arg2":Landroid/content/IntentSender;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 609
    .local v1, "_arg1":Landroid/content/pm/ShortcutInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 610
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_0

    .line 591
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "_arg2":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 593
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 595
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 598
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 600
    goto/16 :goto_0

    .line 578
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 582
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 583
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto/16 :goto_0

    .line 564
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 566
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 569
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 571
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 573
    goto/16 :goto_0

    .line 550
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 554
    .local v1, "_arg1":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 555
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 557
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 559
    goto/16 :goto_0

    .line 538
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/IntentFilter;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 540
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 541
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->isRequestPinItemSupported(II)Z

    move-result v2

    .line 543
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 545
    goto/16 :goto_0

    .line 527
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 529
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 530
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->applyRestore([BI)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_0

    .line 517
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 518
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {v7, v0}, Landroid/content/pm/IShortcutService$Stub;->getBackupPayload(I)[B

    move-result-object v1

    .line 520
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 522
    goto/16 :goto_0

    .line 506
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 509
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->onApplicationActive(Ljava/lang/String;I)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    goto/16 :goto_0

    .line 499
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;->resetThrottling()V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    goto/16 :goto_0

    .line 487
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 492
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    goto/16 :goto_0

    .line 475
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getIconMaxDimensions(Ljava/lang/String;I)I

    move-result v2

    .line 480
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    goto/16 :goto_0

    .line 463
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getRateLimitResetTime(Ljava/lang/String;I)J

    move-result-wide v2

    .line 468
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 470
    goto/16 :goto_0

    .line 451
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 454
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getRemainingCallCount(Ljava/lang/String;I)I

    move-result v2

    .line 456
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    goto/16 :goto_0

    .line 439
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->getMaxShortcutCountPerActivity(Ljava/lang/String;I)I

    move-result v2

    .line 444
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    goto/16 :goto_0

    .line 426
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    goto/16 :goto_0

    .line 409
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 413
    .local v13, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/CharSequence;

    .line 415
    .local v14, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 417
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 418
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IShortcutService$Stub;->disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto/16 :goto_0

    .line 394
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "_arg2":Ljava/lang/CharSequence;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 398
    .local v1, "_arg1":Landroid/content/pm/ShortcutInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 400
    .restart local v2    # "_arg2":I
    sget-object v3, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AndroidFuture;

    .line 401
    .local v3, "_arg3":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/pm/IShortcutService$Stub;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;ILcom/android/internal/infra/AndroidFuture;)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    goto/16 :goto_0

    .line 377
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 379
    .restart local v6    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    .line 381
    .local v13, "_arg1":Landroid/content/pm/ShortcutInfo;
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/IntentSender;

    .line 383
    .local v14, "_arg2":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 385
    .restart local v15    # "_arg3":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    .line 386
    .local v16, "_arg4":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IShortcutService$Stub;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;ILcom/android/internal/infra/AndroidFuture;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_0

    .line 363
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/content/pm/ShortcutInfo;
    .end local v14    # "_arg2":Landroid/content/IntentSender;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 367
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 370
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 372
    goto :goto_0

    .line 352
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IShortcutService$Stub;->removeAllDynamicShortcuts(Ljava/lang/String;I)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto :goto_0

    .line 339
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 343
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    goto :goto_0

    .line 325
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 329
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 332
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    goto :goto_0

    .line 311
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 315
    .restart local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IShortcutService$Stub;->setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z

    move-result v3

    .line 318
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    nop

    .line 691
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
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
