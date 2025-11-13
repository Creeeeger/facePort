.class public final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Ljava/lang/Runnable;

.field public final synthetic $appIntent:Landroid/app/PendingIntent;

.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $desc:Landroid/media/MediaDescription;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $token:Landroid/media/session/MediaSession$Token;

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    iput p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$userId:I

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$appName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    iget v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$userId:I

    iget-object v5, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    iget-object v10, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    iget-object v8, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$appName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$addResumptionControls$1;->$packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "MediaDataManager"

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v3, v15

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "adding track for "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from browser: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v6, :cond_2

    iget v0, v6, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    :goto_0
    move/from16 v22, v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v7, 0x0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v16

    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v19

    invoke-static {v0, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v21

    const/16 v20, 0x1

    move/from16 v17, v22

    move-object/from16 v18, v2

    invoke-interface/range {v16 .. v21}, Landroid/app/IUriGrantsManager;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I

    invoke-virtual {v15, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->loadBitmapFromUri$1(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to get URI permission: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    :cond_4
    move-object v11, v7

    :goto_3
    if-eqz v6, :cond_6

    iget-object v0, v6, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v16, v0

    goto :goto_6

    :cond_6
    :goto_5
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    goto :goto_4

    :goto_6
    invoke-virtual {v5}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v12, "android.media.IS_EXPLICIT"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v17, 0x1

    cmp-long v0, v12, v17

    if-nez v0, :cond_7

    const/4 v0, 0x1

    move/from16 v17, v0

    goto :goto_7

    :cond_7
    move/from16 v17, v1

    :goto_7
    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->MEDIA_RESUME_PROGRESS:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getDescriptionProgress(Landroid/os/Bundle;)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_8

    :cond_8
    move-object/from16 v18, v7

    :goto_8
    invoke-virtual {v15, v10}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->getResumeMediaAction$1(Ljava/lang/Runnable;)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v7

    iget-object v0, v15, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    if-eqz v6, :cond_9

    iget-wide v0, v6, Lcom/android/systemui/media/controls/shared/model/MediaData;->createdTimestampMillis:J

    :goto_9
    move-wide/from16 v19, v0

    goto :goto_a

    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_9

    :goto_a
    new-instance v14, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;

    move-object v0, v14

    move-object v1, v15

    move-object v6, v11

    move-wide v11, v12

    move-object/from16 v23, v14

    move-wide/from16 v13, v19

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move/from16 v16, v22

    invoke-direct/range {v0 .. v18}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;ILjava/lang/String;Landroid/media/MediaDescription;Landroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/shared/model/MediaAction;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Ljava/lang/Runnable;JJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;)V

    move-object/from16 v3, v24

    iget-object v0, v3, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_c

    :goto_b
    const-string v0, "Description incomplete"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    return-void
.end method
