.class final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Landroid/media/session/PlaybackState;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    iget-object v3, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v4, :cond_2

    iget-object v3, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    const-string v7, "MediaDataManager"

    if-nez v3, :cond_0

    const-string v0, "State updated, but token was null"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    iget-object v5, v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    invoke-virtual {v5, v3}, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v3

    new-instance v5, Landroid/os/UserHandle;

    iget v6, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->userId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, v4, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v5}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->createActionsFromState$1(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/controls/shared/model/MediaButton;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v3}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->generateActionsFromSemantic$1(Lcom/android/systemui/media/controls/shared/model/MediaButton;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v6

    check-cast v5, Ljava/util/List;

    move-object v6, v8

    check-cast v6, Ljava/util/List;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v22, 0x0

    const v23, 0xfeffc7f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object v1, v7

    move-object v7, v3

    invoke-static/range {v4 .. v23}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v3

    move-object/from16 v24, v3

    move-object v3, v1

    move-object/from16 v1, v24

    goto :goto_0

    :cond_1
    move-object v3, v7

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v22, 0x0

    const v23, 0xfefffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v4 .. v23}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v1

    :goto_0
    const-string v4, "State updated outside of notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    :cond_2
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
