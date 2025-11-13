.class public final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isNewlyActiveEntry:Z

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->$oldKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->$isNewlyActiveEntry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 48

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->$key:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->$oldKey:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaData$1;->$isNewlyActiveEntry:Z

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.mediaSession"

    const-class v6, Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/media/session/MediaSession$Token;

    if-nez v13, :cond_0

    goto/16 :goto_21

    :cond_0
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    invoke-virtual {v0, v13}, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v6

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget-object v0, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.appInfo"

    const-class v8, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    const-string v7, "MediaDataManager"

    const/4 v8, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    :try_start_0
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v10, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v11, "Could not get app info for "

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.substName"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v10, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v6, :cond_4

    const-string v12, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v12, :cond_5

    invoke-static {v12}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    if-eqz v6, :cond_6

    const-string v12, "android.media.metadata.TITLE"

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_7
    iget-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/lang/CharSequence;

    if-eqz v12, :cond_8

    invoke-static {v12}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_9
    iget-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/lang/CharSequence;

    if-eqz v12, :cond_a

    invoke-static {v12}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_a
    iget-object v12, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    const v8, 0x7f13044e

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :try_start_1
    iget-object v8, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->statusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-virtual {v8, v9, v12}, Landroid/app/StatusBarManager;->logBlankMediaTitle(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Error reporting blank media title for package "

    invoke-static {v9, v8, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    if-eqz v6, :cond_e

    sget-object v8, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->ART_URIS:[Ljava/lang/String;

    const/4 v9, 0x0

    :goto_5
    const/4 v12, 0x3

    if-ge v9, v12, :cond_e

    aget-object v12, v8, v9

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v18, v8

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->loadBitmapFromUri$1(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_d

    const-string v9, "loaded art from "

    invoke-static {v9, v12, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    move-object/from16 v18, v8

    :cond_d
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, v18

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_10

    if-eqz v6, :cond_f

    const-string v8, "android.media.metadata.ART"

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_7

    :cond_f
    const/4 v8, 0x0

    :cond_10
    :goto_7
    if-nez v8, :cond_12

    if-eqz v6, :cond_11

    const-string v8, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    :cond_12
    :goto_8
    if-nez v8, :cond_13

    invoke-virtual {v14}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    :goto_9
    move-object v9, v8

    goto :goto_a

    :cond_13
    invoke-static {v8}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_9

    :goto_a
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object/from16 v17, v13

    invoke-static {v6}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v13

    move-object/from16 v19, v8

    move-object/from16 v18, v9

    if-eqz v13, :cond_15

    iget-object v9, v13, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    const-string v13, "android.media.IS_EXPLICIT"

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v13, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    const-wide/16 v24, 0x1

    cmp-long v9, v20, v24

    if-nez v9, :cond_14

    const/4 v9, 0x1

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v9, 0x0

    goto :goto_c

    :cond_15
    move-object/from16 v22, v10

    move-object/from16 v23, v11

    const-wide/16 v10, 0x0

    goto :goto_b

    :goto_c
    iput-boolean v9, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz v6, :cond_16

    const-string v13, "android.media.metadata.ARTIST"

    invoke-virtual {v6, v13}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_16
    const/4 v6, 0x0

    :goto_d
    iput-object v6, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v6, :cond_17

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    :cond_17
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/row/HybridGroupManager;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_18
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.mediaRemoteDevice"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const/4 v11, -0x1

    if-eqz v6, :cond_1a

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v12

    const/4 v8, 0x0

    invoke-virtual {v6, v10, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    const-string v8, "android.mediaRemoteIcon"

    invoke-virtual {v6, v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v11, "android.mediaRemoteIntent"

    move-object/from16 v37, v14

    const-class v14, Landroid/app/PendingIntent;

    invoke-virtual {v6, v11, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v29, v6

    check-cast v29, Landroid/app/PendingIntent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is RCN for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    if-eqz v12, :cond_1b

    if-le v8, v6, :cond_1b

    if-eqz v29, :cond_19

    invoke-virtual/range {v29 .. v29}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v11

    if-eqz v11, :cond_19

    const/16 v26, 0x1

    goto :goto_e

    :cond_19
    const/16 v26, 0x0

    :goto_e
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    iget-object v11, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    new-instance v8, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    const/16 v33, 0x50

    const/16 v34, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, v8

    move-object/from16 v28, v12

    invoke-direct/range {v25 .. v34}, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZLcom/android/systemui/media/SecMediaDeviceDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_f

    :cond_1a
    move v6, v11

    move-object/from16 v16, v12

    move-object/from16 v37, v14

    :cond_1b
    :goto_f
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v8, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v8, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v15, v8, v5, v14}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->createActionsFromState$1(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/controls/shared/model/MediaButton;

    move-result-object v14

    if-nez v14, :cond_23

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v13

    iget-object v13, v6, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v27, v9

    const-string v9, "android.compactActions"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object v6

    goto :goto_10

    :cond_1c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_10
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v28, v3

    sget v3, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->MAX_COMPACT_ACTIONS:I

    if-le v9, v3, :cond_1d

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    move/from16 v29, v1

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v30, v0

    const-string v0, "Too many compact actions for "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",limiting to first "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {v6, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_11

    :cond_1d
    move-object/from16 v30, v0

    move/from16 v29, v1

    const/4 v1, 0x0

    :goto_11
    if-eqz v13, :cond_22

    array-length v0, v13

    move v3, v1

    :goto_12
    if-ge v3, v0, :cond_22

    aget-object v9, v13, v3

    sget v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->MAX_NOTIFICATION_ACTIONS:I

    if-ne v3, v1, :cond_1e

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Too many notification actions for "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", limiting to first "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_1e
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1f

    iget-object v1, v9, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v31, v0

    const-string v0, "No icon for action "

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1f
    move/from16 v31, v0

    iget-object v0, v9, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_20

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromNotification$runnable$1;

    invoke-direct {v0, v9, v15}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$createActionsFromNotification$runnable$1;-><init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V

    move-object/from16 v40, v0

    goto :goto_13

    :cond_20
    const/16 v40, 0x0

    :goto_13
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_14

    :cond_21
    invoke-virtual {v9}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_14
    iget v1, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->themeText:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iget-object v1, v9, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x10

    const/16 v45, 0x0

    move-object/from16 v38, v0

    move-object/from16 v41, v1

    invoke-direct/range {v38 .. v45}, Lcom/android/systemui/media/controls/shared/model/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_15
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v31

    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_22
    :goto_16
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_17

    :cond_23
    move-object/from16 v30, v0

    move/from16 v29, v1

    move-object/from16 v28, v3

    move-object/from16 v27, v9

    move-object/from16 v26, v13

    invoke-static {v14}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->generateActionsFromSemantic$1(Lcom/android/systemui/media/controls/shared/model/MediaButton;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_17
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v13, 0x2

    goto :goto_18

    :cond_24
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    const/4 v13, 0x0

    goto :goto_18

    :cond_25
    const/4 v13, 0x1

    :goto_18
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v35, v0

    goto :goto_19

    :cond_26
    const/16 v35, 0x0

    :goto_19
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v1, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    if-eqz v0, :cond_28

    iget-object v3, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    if-nez v3, :cond_27

    goto :goto_1b

    :cond_27
    :goto_1a
    move-object v10, v3

    goto :goto_1c

    :cond_28
    :goto_1b
    iget-object v3, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v3}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    goto :goto_1a

    :goto_1c
    if-eqz v30, :cond_29

    move-object/from16 v3, v30

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v3

    goto :goto_1d

    :cond_29
    const/4 v9, -0x1

    :goto_1d
    if-eqz v29, :cond_2c

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2a

    iget-object v5, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_SINGLE_PLAYER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v5, v6, v9, v3, v10}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_1e

    :cond_2a
    iget-object v5, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2b

    iget-object v5, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_CAROUSEL_MULTIPLE_PLAYERS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v5, v6, v9, v3, v10}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_2b
    :goto_1e
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v13, v10, v3}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logActiveMediaAdded(IILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    goto :goto_1f

    :cond_2c
    if-eqz v0, :cond_2d

    iget v3, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->playbackLocation:I

    if-ne v13, v3, :cond_2d

    goto :goto_1f

    :cond_2d
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v9, v13, v10, v3}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logPlaybackLocationChange(IILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    :goto_1f
    iget-object v1, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    if-eqz v0, :cond_2e

    iget-wide v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->createdTimestampMillis:J

    move-wide/from16 v20, v0

    goto :goto_20

    :cond_2e
    const-wide/16 v20, 0x0

    :goto_20
    new-instance v8, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBg$2;

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v3, v28

    move-object/from16 v5, v22

    move-object/from16 v6, v19

    move-object/from16 v7, v27

    move-object/from16 v46, v8

    move-object/from16 v8, v23

    move/from16 v36, v9

    move-object/from16 v9, v18

    move-object/from16 v22, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v27, v16

    move-object v12, v14

    move/from16 v18, v13

    move-object/from16 v16, v26

    move-object/from16 v13, v17

    move-object/from16 v14, v37

    move-object/from16 v47, v15

    move-object/from16 v15, v16

    move/from16 v16, v18

    move-object/from16 v17, v35

    move-wide/from16 v18, v24

    move/from16 v23, v36

    move-object/from16 v24, v27

    invoke-direct/range {v0 .. v24}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBg$2;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/media/controls/shared/model/MediaButton;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/Boolean;JJLcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/Ref$BooleanRef;)V

    move-object/from16 v1, v47

    iget-object v0, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_21
    return-void
.end method
