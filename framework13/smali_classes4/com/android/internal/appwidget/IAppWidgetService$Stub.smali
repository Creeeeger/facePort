.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final greylist-max-o TRANSACTION_allocateAppWidgetId:I = 0x3

.field static final greylist-max-r TRANSACTION_bindAppWidgetId:I = 0x17

.field static final greylist-max-o TRANSACTION_bindRemoteViewsService:I = 0x18

.field static final blacklist TRANSACTION_changeHostIds:I = 0xb

.field static final greylist-max-o TRANSACTION_createAppWidgetConfigIntentSender:I = 0x9

.field static final greylist-max-o TRANSACTION_deleteAllHosts:I = 0x6

.field static final greylist-max-o TRANSACTION_deleteAppWidgetId:I = 0x4

.field static final greylist-max-o TRANSACTION_deleteHost:I = 0x5

.field static final blacklist TRANSACTION_getAllProvidersForProfile:I = 0x1f

.field static final blacklist TRANSACTION_getAllWidgets:I = 0x1e

.field static final greylist-max-o TRANSACTION_getAppWidgetIds:I = 0x19

.field static final greylist-max-o TRANSACTION_getAppWidgetIdsForHost:I = 0x8

.field static final greylist-max-o TRANSACTION_getAppWidgetInfo:I = 0x14

.field static final greylist-max-o TRANSACTION_getAppWidgetOptions:I = 0xe

.field static final greylist-max-o TRANSACTION_getAppWidgetViews:I = 0x7

.field static final greylist-max-o TRANSACTION_getInstalledProvidersForProfile:I = 0x13

.field static final greylist-max-o TRANSACTION_hasBindAppWidgetPermission:I = 0x15

.field static final greylist-max-o TRANSACTION_isBoundWidgetPackage:I = 0x1a

.field static final greylist-max-o TRANSACTION_isRequestPinAppWidgetSupported:I = 0x1c

.field static final blacklist TRANSACTION_noteAppWidgetTapped:I = 0x1d

.field static final greylist-max-o TRANSACTION_notifyAppWidgetViewDataChanged:I = 0x12

.field static final greylist-max-o TRANSACTION_partiallyUpdateAppWidgetIds:I = 0xf

.field static final greylist-max-o TRANSACTION_requestPinAppWidget:I = 0x1b

.field static final blacklist TRANSACTION_semCreateAppWidgetConfigIntentSender:I = 0xa

.field static final greylist-max-o TRANSACTION_setBindAppWidgetPermission:I = 0x16

.field static final greylist-max-o TRANSACTION_startListening:I = 0x1

.field static final greylist-max-o TRANSACTION_stopListening:I = 0x2

.field static final greylist-max-o TRANSACTION_updateAppWidgetIds:I = 0xc

.field static final greylist-max-o TRANSACTION_updateAppWidgetOptions:I = 0xd

.field static final greylist-max-o TRANSACTION_updateAppWidgetProvider:I = 0x10

.field static final greylist-max-o TRANSACTION_updateAppWidgetProviderInfo:I = 0x11


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 144
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 152
    if-nez p0, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 156
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v1, :cond_1

    .line 157
    move-object v1, v0

    check-cast v1, Lcom/android/internal/appwidget/IAppWidgetService;

    return-object v1

    .line 159
    :cond_1
    new-instance v1, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 168
    packed-switch p0, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    return-object v0

    .line 292
    :pswitch_0
    const-string v0, "getAllProvidersForProfile"

    return-object v0

    .line 288
    :pswitch_1
    const-string v0, "getAllWidgets"

    return-object v0

    .line 284
    :pswitch_2
    const-string/jumbo v0, "noteAppWidgetTapped"

    return-object v0

    .line 280
    :pswitch_3
    const-string v0, "isRequestPinAppWidgetSupported"

    return-object v0

    .line 276
    :pswitch_4
    const-string/jumbo v0, "requestPinAppWidget"

    return-object v0

    .line 272
    :pswitch_5
    const-string v0, "isBoundWidgetPackage"

    return-object v0

    .line 268
    :pswitch_6
    const-string v0, "getAppWidgetIds"

    return-object v0

    .line 264
    :pswitch_7
    const-string v0, "bindRemoteViewsService"

    return-object v0

    .line 260
    :pswitch_8
    const-string v0, "bindAppWidgetId"

    return-object v0

    .line 256
    :pswitch_9
    const-string/jumbo v0, "setBindAppWidgetPermission"

    return-object v0

    .line 252
    :pswitch_a
    const-string v0, "hasBindAppWidgetPermission"

    return-object v0

    .line 248
    :pswitch_b
    const-string v0, "getAppWidgetInfo"

    return-object v0

    .line 244
    :pswitch_c
    const-string v0, "getInstalledProvidersForProfile"

    return-object v0

    .line 240
    :pswitch_d
    const-string/jumbo v0, "notifyAppWidgetViewDataChanged"

    return-object v0

    .line 236
    :pswitch_e
    const-string/jumbo v0, "updateAppWidgetProviderInfo"

    return-object v0

    .line 232
    :pswitch_f
    const-string/jumbo v0, "updateAppWidgetProvider"

    return-object v0

    .line 228
    :pswitch_10
    const-string/jumbo v0, "partiallyUpdateAppWidgetIds"

    return-object v0

    .line 224
    :pswitch_11
    const-string v0, "getAppWidgetOptions"

    return-object v0

    .line 220
    :pswitch_12
    const-string/jumbo v0, "updateAppWidgetOptions"

    return-object v0

    .line 216
    :pswitch_13
    const-string/jumbo v0, "updateAppWidgetIds"

    return-object v0

    .line 212
    :pswitch_14
    const-string v0, "changeHostIds"

    return-object v0

    .line 208
    :pswitch_15
    const-string/jumbo v0, "semCreateAppWidgetConfigIntentSender"

    return-object v0

    .line 204
    :pswitch_16
    const-string v0, "createAppWidgetConfigIntentSender"

    return-object v0

    .line 200
    :pswitch_17
    const-string v0, "getAppWidgetIdsForHost"

    return-object v0

    .line 196
    :pswitch_18
    const-string v0, "getAppWidgetViews"

    return-object v0

    .line 192
    :pswitch_19
    const-string v0, "deleteAllHosts"

    return-object v0

    .line 188
    :pswitch_1a
    const-string v0, "deleteHost"

    return-object v0

    .line 184
    :pswitch_1b
    const-string v0, "deleteAppWidgetId"

    return-object v0

    .line 180
    :pswitch_1c
    const-string v0, "allocateAppWidgetId"

    return-object v0

    .line 176
    :pswitch_1d
    const-string/jumbo v0, "stopListening"

    return-object v0

    .line 172
    :pswitch_1e
    const-string/jumbo v0, "startListening"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 163
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1345
    const/16 v0, 0x1e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 303
    invoke-static {p1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.internal.appwidget.IAppWidgetService"

    .line 308
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 309
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 319
    packed-switch v9, :pswitch_data_1

    .line 713
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 315
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    return v13

    .line 700
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 702
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 704
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 705
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 706
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAllProvidersForProfile(IIZ)Ljava/util/List;

    move-result-object v3

    .line 707
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 709
    goto/16 :goto_0

    .line 688
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 691
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    .line 693
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 695
    goto/16 :goto_0

    .line 678
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 681
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->noteAppWidgetTapped(Ljava/lang/String;I)V

    .line 683
    goto/16 :goto_0

    .line 670
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isRequestPinAppWidgetSupported()Z

    move-result v0

    .line 671
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 673
    goto/16 :goto_0

    .line 655
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 659
    .local v1, "_arg1":Landroid/content/ComponentName;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 661
    .local v2, "_arg2":Landroid/os/Bundle;
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 662
    .local v3, "_arg3":Landroid/content/IntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v4

    .line 664
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 666
    goto/16 :goto_0

    .line 643
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_arg3":Landroid/content/IntentSender;
    .end local v4    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 645
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 646
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 648
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 650
    goto/16 :goto_0

    .line 633
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_7
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 634
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {v8, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 636
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 638
    goto/16 :goto_0

    .line 611
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":[I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 613
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 615
    .local v15, "_arg1":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 617
    .local v16, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v17

    .line 619
    .local v17, "_arg3":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 621
    .local v18, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v19

    .line 623
    .local v19, "_arg5":Landroid/app/IServiceConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 624
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z

    move-result v0

    .line 626
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 628
    goto/16 :goto_0

    .line 593
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Landroid/content/Intent;
    .end local v17    # "_arg3":Landroid/app/IApplicationThread;
    .end local v18    # "_arg4":Landroid/os/IBinder;
    .end local v19    # "_arg5":Landroid/app/IServiceConnection;
    .end local v20    # "_arg6":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 595
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 597
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 599
    .local v14, "_arg2":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/ComponentName;

    .line 601
    .local v15, "_arg3":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 602
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .line 604
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 606
    goto/16 :goto_0

    .line 580
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/content/ComponentName;
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 585
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto/16 :goto_0

    .line 568
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 571
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v2

    .line 573
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 575
    goto/16 :goto_0

    .line 556
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 559
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 561
    .local v2, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 563
    goto/16 :goto_0

    .line 542
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 544
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 546
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 549
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 551
    goto/16 :goto_0

    .line 529
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 533
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 534
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    goto/16 :goto_0

    .line 518
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":I
    :pswitch_f
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 520
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto/16 :goto_0

    .line 507
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_10
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 509
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 510
    .local v1, "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_0

    .line 494
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Landroid/widget/RemoteViews;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 498
    .local v1, "_arg1":[I
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 499
    .local v2, "_arg2":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_0

    .line 482
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Landroid/widget/RemoteViews;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 485
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 487
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 489
    goto/16 :goto_0

    .line 469
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 473
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 474
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_0

    .line 456
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 460
    .local v1, "_arg1":[I
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 461
    .local v2, "_arg2":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    goto/16 :goto_0

    .line 443
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Landroid/widget/RemoteViews;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 447
    .restart local v1    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 448
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->changeHostIds(Ljava/lang/String;[II)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_0

    .line 429
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 433
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 434
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->semCreateAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v3

    .line 436
    .local v3, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 438
    goto/16 :goto_0

    .line 415
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/IntentSender;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v3

    .line 422
    .restart local v3    # "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 424
    goto/16 :goto_0

    .line 403
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/IntentSender;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 406
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v2

    .line 408
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 410
    goto/16 :goto_0

    .line 391
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 396
    .local v2, "_result":Landroid/widget/RemoteViews;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 398
    goto/16 :goto_0

    .line 384
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/widget/RemoteViews;
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts()V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    goto :goto_0

    .line 374
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(Ljava/lang/String;I)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto :goto_0

    .line 363
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(Ljava/lang/String;I)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto :goto_0

    .line 351
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v2

    .line 356
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    goto :goto_0

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(Ljava/lang/String;I)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    goto :goto_0

    .line 324
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    move-result-object v0

    .line 326
    .local v0, "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 331
    .local v3, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 333
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 335
    nop

    .line 716
    .end local v0    # "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
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
