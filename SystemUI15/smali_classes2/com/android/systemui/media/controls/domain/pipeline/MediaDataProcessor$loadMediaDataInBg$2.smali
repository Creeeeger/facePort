.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $actionIcons:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $actionsToShowCollapsed:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $appUid:I

.field public final synthetic $artWorkIcon:Landroid/graphics/drawable/Icon;

.field public final synthetic $artist:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $createdTimestampMillis:J

.field public final synthetic $device:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $isExplicit:Z

.field public final synthetic $isPlaying:Ljava/lang/Boolean;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $lastActive:J

.field public final synthetic $notif:Landroid/app/Notification;

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic $playbackLocation:I

.field public final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field public final synthetic $semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

.field public final synthetic $smallIcon:Landroid/graphics/drawable/Icon;

.field public final synthetic $song:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $token:Landroid/media/session/MediaSession$Token;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/media/controls/shared/model/MediaButton;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/Boolean;JJLcom/android/internal/logging/InstanceId;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Icon;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/controls/shared/model/MediaAction;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/android/systemui/media/controls/shared/model/MediaButton;",
            "Landroid/media/session/MediaSession$Token;",
            "Landroid/app/Notification;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;",
            ">;I",
            "Ljava/lang/Boolean;",
            "JJ",
            "Lcom/android/internal/logging/InstanceId;",
            "IZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$oldKey:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$sbn:Landroid/service/notification/StatusBarNotification;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$appName:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$smallIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$artist:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$song:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$artWorkIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$actionIcons:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$actionsToShowCollapsed:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$notif:Landroid/app/Notification;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$device:Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 v1, p16

    iput v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$playbackLocation:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$isPlaying:Ljava/lang/Boolean;

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$lastActive:J

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$createdTimestampMillis:J

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$instanceId:Lcom/android/internal/logging/InstanceId;

    move/from16 v1, p23

    iput v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$appUid:I

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$isExplicit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v1, v1, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    :goto_0
    move-object/from16 v18, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v1, v1, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->hasCheckedForResume:Z

    if-ne v1, v3, :cond_1

    move/from16 v22, v3

    goto :goto_2

    :cond_1
    move/from16 v22, v2

    :goto_2
    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v1, v1, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    move/from16 v17, v1

    goto :goto_3

    :cond_2
    move/from16 v17, v3

    :goto_3
    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v15, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$oldKey:Ljava/lang/String;

    new-instance v13, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$appName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$smallIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$artist:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$song:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$artWorkIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$actionIcons:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/util/List;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$actionsToShowCollapsed:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$token:Landroid/media/session/MediaSession$Token;

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$notif:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$device:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v23, v2

    check-cast v23, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    iget v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$playbackLocation:I

    move-object/from16 v33, v4

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    move-object/from16 v34, v4

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$isPlaying:Ljava/lang/Boolean;

    move/from16 v35, v2

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v2

    const/16 v19, 0x1

    xor-int/lit8 v24, v2, 0x1

    move-object/from16 v19, v3

    iget-wide v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$lastActive:J

    move-wide/from16 v25, v2

    iget-wide v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$createdTimestampMillis:J

    move-wide/from16 v27, v2

    iget-object v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$instanceId:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v29, v2

    iget v2, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$appUid:I

    move/from16 v30, v2

    iget-boolean v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaDataInBg$2;->$isExplicit:Z

    move/from16 v31, v0

    const/16 v20, 0x0

    const/16 v32, 0x0

    const/4 v0, 0x1

    move-object/from16 v38, v4

    move-object/from16 v36, v33

    move-object/from16 v37, v34

    move v4, v0

    const/high16 v33, 0x8020000

    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v21, v35

    move-object v2, v13

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v0

    move-object v0, v13

    move-object/from16 v13, v16

    move-object/from16 v39, v14

    move-object/from16 v14, v36

    move-object/from16 v40, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v23

    move/from16 v19, v21

    move-object/from16 v21, v37

    move-object/from16 v23, v38

    invoke-direct/range {v2 .. v34}, Lcom/android/systemui/media/controls/shared/model/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v39

    move-object/from16 v2, v40

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    return-void
.end method
