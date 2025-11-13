.class final Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$3;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl$3;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;

    sget-object v2, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->SMARTSPACE_UI_SURFACE_LABEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "session destroyed for "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaDataManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v22, 0x0

    const v23, 0xffff7ff

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

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v4 .. v23}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v2

    iget-object v4, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    const-string v4, "Notification removed but using session actions "

    invoke-static {v4, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0, v0, v2}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataLoaded$1(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    goto/16 :goto_1

    :cond_2
    if-nez v5, :cond_3

    const-string v4, "Session destroyed but using notification actions "

    invoke-static {v4, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0, v0, v2}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataLoaded$1(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    goto :goto_1

    :cond_3
    iget-boolean v5, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    iget-object v6, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v7, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iget v8, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    if-eqz v5, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->isAbleToResume$1(Lcom/android/systemui/media/controls/shared/model/MediaData;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing still-active player "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v6, v8, v7, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_1

    :cond_4
    iget-object v5, v1, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->isAbleToResume$1(Lcom/android/systemui/media/controls/shared/model/MediaData;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notification (false) and/or session ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") gone for inactive player "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->convertToResumePlayer$1(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing player "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImpl;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v6, v8, v7, v0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
