.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isNewlyActiveEntry:Z

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->$oldKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->$isNewlyActiveEntry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 50

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v6, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->$key:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v8, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->$oldKey:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;->$isNewlyActiveEntry:Z

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.mediaSession"

    const-class v2, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/media/session/MediaSession$Token;

    if-nez v13, :cond_0

    goto/16 :goto_28

    :cond_0
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    invoke-virtual {v0, v13}, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v0, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.appInfo"

    const-class v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    const-string v11, "MediaDataProcessor"

    const/4 v12, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Could not get app info for "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    move-object v5, v0

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.substName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :goto_2
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v1, :cond_4

    const-string v0, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    if-eqz v1, :cond_6

    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_7
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_9
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v3, 0x7f13044e

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v3, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :try_start_1
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->statusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v0, v3, v12}, Landroid/app/StatusBarManager;->logBlankMediaTitle(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Error reporting blank media title for package "

    invoke-static {v3, v0, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    if-eqz v1, :cond_d

    sget-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessorKt;->ART_URIS:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_6
    const/4 v12, 0x3

    if-ge v3, v12, :cond_d

    aget-object v12, v0, v3

    invoke-virtual {v1, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v0, "loaded art from "

    invoke-static {v0, v12, v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_f

    if-eqz v1, :cond_e

    const-string v0, "android.media.metadata.ART"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :cond_f
    :goto_8
    if-nez v4, :cond_11

    if-eqz v1, :cond_10

    const-string v0, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    :cond_11
    :goto_9
    if-nez v4, :cond_12

    invoke-virtual {v14}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_a
    move-object v12, v0

    goto :goto_b

    :cond_12
    invoke-static {v4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_a

    :goto_b
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v17

    invoke-static {v1}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    const-wide/16 v3, 0x0

    move-object/from16 v19, v5

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    const-string v5, "android.media.IS_EXPLICIT"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    const-wide/16 v23, 0x1

    cmp-long v0, v21, v23

    if-nez v0, :cond_13

    const/16 v24, 0x1

    goto :goto_c

    :cond_13
    const/16 v24, 0x0

    :goto_c
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v1, :cond_14

    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    :goto_d
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_16
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.mediaRemoteDevice"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "android.mediaRemoteIcon"

    move-object/from16 v35, v4

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.mediaRemoteIntent"

    move-object/from16 v36, v5

    const-class v5, Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Landroid/app/PendingIntent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is RCN for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eqz v2, :cond_19

    if-le v3, v4, :cond_19

    if-eqz v29, :cond_17

    invoke-virtual/range {v29 .. v29}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v26, 0x1

    goto :goto_e

    :cond_17
    const/16 v26, 0x0

    :goto_e
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v3, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    const/16 v33, 0x50

    const/16 v34, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, v0

    move-object/from16 v28, v2

    invoke-direct/range {v25 .. v34}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/SecMediaDeviceDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_f

    :cond_18
    move-object/from16 v18, v2

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    const/4 v4, -0x1

    :cond_19
    :goto_f
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v23

    const/16 v25, 0x0

    if-eqz v23, :cond_24

    iget-object v4, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Landroid/app/StatusBarManager;->useMediaSessionActionsForApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    move-object/from16 v27, v5

    const/16 v28, 0x0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v4, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v0, v28

    goto :goto_10

    :cond_1a
    const/4 v0, 0x1

    :goto_10
    if-nez v0, :cond_1b

    move-object/from16 v31, v1

    move-object/from16 v34, v13

    move-object/from16 v26, v14

    move-object/from16 v21, v18

    move-object/from16 v37, v19

    move-object/from16 v39, v27

    move-object/from16 v38, v35

    move-object/from16 v20, v36

    const/16 v18, 0x0

    const/16 v22, -0x1

    :goto_11
    const-wide/16 v32, 0x0

    move-object v14, v2

    move-object/from16 v19, v12

    goto/16 :goto_18

    :cond_1b
    invoke-virtual/range {v23 .. v23}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    sget-object v4, Lcom/android/systemui/statusbar/NotificationMediaManager;->CONNECTING_MEDIA_STATES:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v4, 0x10808f0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v5, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v4, 0x7f130447

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    iget-object v4, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    const v5, 0x7f080999

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    const v4, 0x10808f0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    const/16 v31, 0x0

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    move-object/from16 v41, v0

    move-object/from16 v31, v1

    move-object/from16 v34, v13

    move-object/from16 v26, v14

    move-object/from16 v21, v18

    move-object/from16 v37, v19

    move-object/from16 v39, v27

    move-object/from16 v38, v35

    move-object/from16 v20, v36

    const/16 v18, 0x0

    const/16 v22, -0x1

    const-wide/16 v32, 0x0

    move-object v14, v2

    move-object v13, v3

    move-object/from16 v19, v12

    const/4 v12, 0x1

    goto/16 :goto_13

    :cond_1c
    invoke-virtual/range {v23 .. v23}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {v23 .. v23}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    const-wide/16 v29, 0x2

    move-object v0, v15

    move-object/from16 v31, v1

    move-object v1, v10

    move-object/from16 v34, v13

    move-object/from16 v26, v14

    move-object/from16 v21, v18

    const/16 v18, 0x0

    const/16 v22, -0x1

    const-wide/16 v32, 0x0

    move-object v14, v2

    move-object v13, v3

    move-wide v2, v4

    move-object/from16 v37, v19

    move-object/from16 v39, v27

    move-object/from16 v38, v35

    move-object/from16 v20, v36

    move-object/from16 v19, v12

    const/4 v12, 0x1

    move-wide/from16 v4, v29

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->getStandardAction(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v0

    :goto_12
    move-object/from16 v41, v0

    goto :goto_13

    :cond_1d
    move-object/from16 v31, v1

    move-object/from16 v34, v13

    move-object/from16 v26, v14

    move-object/from16 v21, v18

    move-object/from16 v37, v19

    move-object/from16 v39, v27

    move-object/from16 v38, v35

    move-object/from16 v20, v36

    const/16 v18, 0x0

    const/16 v22, -0x1

    const-wide/16 v32, 0x0

    move-object v14, v2

    move-object v13, v3

    move-object/from16 v19, v12

    const/4 v12, 0x1

    invoke-virtual/range {v23 .. v23}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    move-object v0, v15

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->getStandardAction(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v0

    goto :goto_12

    :goto_13
    invoke-virtual/range {v23 .. v23}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    move-object v0, v15

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->getStandardAction(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v27

    invoke-virtual/range {v23 .. v23}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    const-wide/16 v4, 0x20

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->getStandardAction(Landroid/media/session/MediaController;JJ)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromState$customActions$1;

    invoke-direct {v2, v15, v13, v10}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromState$customActions$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;Landroid/media/session/MediaController;)V

    new-instance v3, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v3, v1, v2}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lkotlin/sequences/TransformingSequence$iterator$1;

    invoke-direct {v1, v3}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    invoke-virtual {v10}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1e

    const-string v3, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v12, :cond_1e

    move/from16 v47, v12

    goto :goto_14

    :cond_1e
    move/from16 v47, v28

    :goto_14
    invoke-virtual {v10}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1f

    const-string v3, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v12, :cond_1f

    move/from16 v46, v12

    goto :goto_15

    :cond_1f
    move/from16 v46, v28

    :goto_15
    if-eqz v27, :cond_20

    move-object/from16 v43, v27

    goto :goto_16

    :cond_20
    if-nez v47, :cond_21

    invoke-static {v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v2

    move-object/from16 v43, v2

    goto :goto_16

    :cond_21
    move-object/from16 v43, v25

    :goto_16
    if-eqz v0, :cond_22

    move-object/from16 v42, v0

    goto :goto_17

    :cond_22
    if-nez v46, :cond_23

    invoke-static {v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v25

    :cond_23
    move-object/from16 v42, v25

    :goto_17
    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaButton;

    invoke-static {v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v44

    invoke-static {v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->createActionsFromState$nextCustomAction(Lkotlin/sequences/TransformingSequence$iterator$1;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v45

    move-object/from16 v40, v0

    invoke-direct/range {v40 .. v47}, Lcom/android/systemui/media/controls/shared/model/MediaButton;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZ)V

    move-object v12, v0

    goto :goto_19

    :cond_24
    move-object/from16 v31, v1

    move/from16 v22, v4

    move-object/from16 v39, v5

    move-object/from16 v34, v13

    move-object/from16 v26, v14

    move-object/from16 v21, v18

    move-object/from16 v37, v19

    move-object/from16 v38, v35

    move-object/from16 v20, v36

    const/16 v18, 0x0

    goto/16 :goto_11

    :goto_18
    move-object/from16 v12, v25

    :goto_19
    if-nez v12, :cond_2c

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.compactActions"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object v1

    goto :goto_1a

    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sget v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->MAX_COMPACT_ACTIONS:I

    if-le v4, v5, :cond_26

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v0, "Too many compact actions for "

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",limiting to first "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_1b

    :cond_26
    const/4 v4, 0x0

    :goto_1b
    if-eqz v3, :cond_2b

    array-length v0, v3

    move v5, v4

    :goto_1c
    if-ge v5, v0, :cond_2b

    aget-object v13, v3, v5

    sget v4, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->MAX_NOTIFICATION_ACTIONS:I

    if-ne v5, v4, :cond_27

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Too many notification actions for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", limiting to first "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :cond_27
    invoke-virtual {v13}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-nez v4, :cond_28

    iget-object v4, v13, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    new-instance v13, Ljava/lang/StringBuilder;

    move/from16 v25, v0

    const-string v0, "No icon for action "

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_28
    move/from16 v25, v0

    iget-object v0, v13, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_29

    new-instance v4, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;

    invoke-direct {v4, v13, v15}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$createActionsFromNotification$runnable$1;-><init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;)V

    move-object/from16 v42, v4

    goto :goto_1d

    :cond_29
    move-object/from16 v42, v18

    :goto_1d
    invoke-virtual {v13}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2a

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-static {v0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_1e

    :cond_2a
    invoke-virtual {v13}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_1e
    iget v4, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->themeText:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v4, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v4, v13, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x10

    const/16 v47, 0x0

    move-object/from16 v40, v0

    move-object/from16 v43, v4

    invoke-direct/range {v40 .. v47}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v25

    const/4 v4, 0x0

    goto/16 :goto_1c

    :cond_2b
    :goto_20
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v11, v39

    iput-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_21

    :cond_2c
    move-object/from16 v11, v39

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v12, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom0:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_2d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v2, v12, Lcom/android/systemui/media/controls/shared/model/MediaButton;->prevOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    iget-object v2, v12, Lcom/android/systemui/media/controls/shared/model/MediaButton;->playOrPause:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_2f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v2, v12, Lcom/android/systemui/media/controls/shared/model/MediaButton;->nextOrCustom:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v2, v12, Lcom/android/systemui/media/controls/shared/model/MediaButton;->custom1:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v2, :cond_31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_21
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v13, 0x2

    goto :goto_22

    :cond_32
    invoke-virtual {v10}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    const/4 v13, 0x0

    goto :goto_22

    :cond_33
    const/4 v1, 0x1

    :cond_34
    move v13, v1

    :goto_22
    invoke-virtual {v10}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v18, v0

    :cond_35
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v0, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v1, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    if-eqz v0, :cond_37

    iget-object v2, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    if-nez v2, :cond_36

    goto :goto_24

    :cond_36
    :goto_23
    move-object v10, v2

    move-object/from16 v2, v37

    goto :goto_25

    :cond_37
    :goto_24
    iget-object v2, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    goto :goto_23

    :goto_25
    if-eqz v2, :cond_38

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move v5, v2

    goto :goto_26

    :cond_38
    move/from16 v5, v22

    :goto_26
    if-eqz v9, :cond_39

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v5, v2, v10}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logSingleVsMultipleMediaAdded(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v13, v10, v2}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logActiveMediaAdded(IILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    goto :goto_27

    :cond_39
    if-eqz v0, :cond_3a

    iget v2, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->playbackLocation:I

    if-ne v13, v2, :cond_3a

    goto :goto_27

    :cond_3a
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v13, v10, v2}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logPlaybackLocationChange(IILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    :goto_27
    iget-object v1, v15, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    if-eqz v0, :cond_3b

    iget-wide v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->createdTimestampMillis:J

    move-wide/from16 v32, v0

    :cond_3b
    new-instance v9, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;

    move-object v0, v9

    move-object v1, v15

    move-object v2, v6

    move-object v3, v8

    move-object v4, v7

    move/from16 v25, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v48, v9

    move-object/from16 v9, v19

    move-object/from16 v27, v10

    move-object v10, v11

    move-object v11, v14

    move/from16 v16, v13

    move-object/from16 v13, v34

    move-object/from16 v14, v26

    move-object/from16 v49, v15

    move-object/from16 v15, v31

    move-object/from16 v17, v18

    move-wide/from16 v18, v22

    move-wide/from16 v20, v32

    move-object/from16 v22, v27

    move/from16 v23, v25

    invoke-direct/range {v0 .. v24}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/media/controls/shared/model/MediaButton;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/Boolean;JJLcom/android/internal/logging/InstanceId;IZ)V

    move-object/from16 v1, v49

    iget-object v0, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_28
    return-void
.end method
