.class public final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $appIntent:Landroid/app/PendingIntent;

.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $appUid:I

.field public final synthetic $artworkIcon:Landroid/graphics/drawable/Icon;

.field public final synthetic $createdTimestampMillis:J

.field public final synthetic $desc:Landroid/media/MediaDescription;

.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $isExplicit:Z

.field public final synthetic $lastActive:J

.field public final synthetic $mediaAction:Lcom/android/systemui/media/controls/shared/model/MediaAction;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $progress:Ljava/lang/Double;

.field public final synthetic $resumeAction:Ljava/lang/Runnable;

.field public final synthetic $token:Landroid/media/session/MediaSession$Token;

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;ILjava/lang/String;Landroid/media/MediaDescription;Landroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/shared/model/MediaAction;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Ljava/lang/Runnable;JJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$packageName:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$userId:I

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$appName:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$desc:Landroid/media/MediaDescription;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$artworkIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$mediaAction:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$token:Landroid/media/session/MediaSession$Token;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$appIntent:Landroid/app/PendingIntent;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$resumeAction:Ljava/lang/Runnable;

    move-wide v1, p11

    iput-wide v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$lastActive:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$createdTimestampMillis:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    move/from16 v1, p16

    iput v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$appUid:I

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$isExplicit:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$progress:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 39

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$packageName:Ljava/lang/String;

    new-instance v12, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$userId:I

    iget-object v6, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$appName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$desc:Landroid/media/MediaDescription;

    invoke-virtual {v3}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$desc:Landroid/media/MediaDescription;

    invoke-virtual {v3}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$artworkIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$mediaAction:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    new-instance v14, Lcom/android/systemui/media/controls/shared/model/MediaButton;

    move-object v13, v14

    iget-object v15, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$mediaAction:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    const/16 v22, 0x7e

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v23}, Lcom/android/systemui/media/controls/shared/model/MediaButton;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaAction;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$packageName:Ljava/lang/String;

    move-object v14, v3

    move-object/from16 v22, v3

    iget-object v15, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$token:Landroid/media/session/MediaSession$Token;

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$appIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$resumeAction:Ljava/lang/Runnable;

    move-object/from16 v19, v3

    move-object/from16 v37, v1

    move-object/from16 v38, v2

    iget-wide v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$lastActive:J

    move-wide/from16 v26, v1

    iget-wide v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$createdTimestampMillis:J

    move-wide/from16 v28, v1

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v30, v1

    iget v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$appUid:I

    move/from16 v31, v1

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$isExplicit:Z

    move/from16 v32, v1

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$loadMediaDataInBgForResumption$1;->$progress:Ljava/lang/Double;

    move-object/from16 v33, v0

    const/high16 v34, 0x310000    # 4.49994E-39f

    const/16 v35, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v3, v12

    move-object v0, v12

    move-object/from16 v12, v36

    invoke-direct/range {v3 .. v35}, Lcom/android/systemui/media/controls/shared/model/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    return-void
.end method
