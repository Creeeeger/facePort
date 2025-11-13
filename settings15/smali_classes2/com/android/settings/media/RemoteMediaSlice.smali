.class public Lcom/android/settings/media/RemoteMediaSlice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSlice()Landroidx/slice/Slice;
    .locals 25

    move-object/from16 v0, p0

    new-instance v1, Landroidx/slice/builders/ListBuilder;

    iget-object v2, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v2

    const-string v3, "RemoteMediaSlice"

    if-nez v2, :cond_0

    const-string v0, "Unable to get the slice worker."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, v2, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v2}, Lcom/android/settingslib/media/InfoMediaManager;->getRemoteSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "No active remote media device"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v4, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v5, 0x7f141e95

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v6, 0x7f080672

    invoke-static {v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    invoke-static {v8, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v10

    const-string v11, "Unable to add Slice. "

    if-gtz v10, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": max volume is "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v12

    iget-object v12, v12, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v12, v9}, Lcom/android/settingslib/media/LocalMediaManager;->shouldEnableVolumeSeekBar(Landroid/media/RoutingSessionInfo;)Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": This is a group session"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v11, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v13

    const v14, 0x7f141772

    invoke-virtual {v12, v14, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v13}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>()V

    iput-object v5, v13, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v4, v13, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Landroid/content/Intent;

    sget-object v15, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    move-object/from16 v17, v2

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v8, "media_id"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v6, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    iget-object v6, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const/high16 v8, 0x2000000

    invoke-static {v6, v14, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v13, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v6, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    iget-object v8, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    iget-object v14, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    move-object/from16 v24, v3

    const v3, 0x7f142cf1

    invoke-virtual {v14, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v18, 0x0

    const v19, 0x7f1417d4

    move-object/from16 v20, v8

    move-object/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v8, Lcom/android/settings/SubSettings;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const/high16 v6, 0x4000000

    const/4 v8, 0x0

    invoke-static {v3, v8, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v2, v5, v8, v4}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    iput-object v2, v13, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iput v10, v13, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v2

    const/4 v3, 0x1

    iput-boolean v3, v13, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    iput v2, v13, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    iget-object v2, v1, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v2, v13}, Landroidx/slice/builders/impl/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v2

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v2, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v2, v6}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    new-instance v6, Landroid/text/SpannableString;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v10, ""

    if-eqz v8, :cond_4

    move-object v11, v10

    :cond_4
    invoke-direct {v6, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget-object v11, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v13, 0x1010038

    invoke-static {v11, v13}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v11

    invoke-direct {v8, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/16 v13, 0x21

    const/4 v14, 0x0

    invoke-virtual {v6, v8, v14, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    if-eqz v2, :cond_5

    move-object v12, v6

    :cond_5
    iput-object v12, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v14, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v14, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    invoke-virtual {v8, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    iget-object v11, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const-string v10, "action_launch_dialog"

    :goto_1
    const-string v2, "customized_action"

    invoke-virtual {v6, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v6, "RoutingSessionInfo"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v6, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->hashCode()I

    move-result v10

    const/high16 v11, 0xc000000

    invoke-static {v6, v10, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v6, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    const v10, 0x7f080672

    invoke-static {v6, v10}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    iget-object v11, v0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const v12, 0x7f141772

    invoke-virtual {v11, v12, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v2, v6, v11, v9}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    iput-object v2, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v1, v8}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    move v8, v3

    move v6, v10

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417b9

    return p0
.end method

.method public final getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public final getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->REMOTE_MEDIA_SLICE_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method public final onNotifyChange(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.app.slice.extra.RANGE_VALUE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "media_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/media/RemoteMediaSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/media/LocalMediaManager;->adjustSessionVolume(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "customized_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_launch_dialog"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RoutingSessionInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/media/RoutingSessionInfo;

    iget-object v0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/settings/media/RemoteMediaSlice;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.panel.action.CLOSE_PANEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
