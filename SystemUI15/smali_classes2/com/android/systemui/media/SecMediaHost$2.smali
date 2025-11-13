.class public final Lcom/android/systemui/media/SecMediaHost$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 16

    new-instance v7, Lcom/android/systemui/media/MediaDataFormat;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/MediaDataFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    iput-object v7, v1, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    iget-object v1, v1, Lcom/android/systemui/media/SecMediaHost;->mMediaFrames:Ljava/util/HashMap;

    new-instance v2, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;

    move-object v8, v2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/media/SecMediaHost$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/SecMediaHost$2;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/media/SecMediaHost$2;->this$0:Lcom/android/systemui/media/SecMediaHost;

    iget-object v0, p2, Lcom/android/systemui/media/SecMediaHost;->mLogger:Lcom/android/systemui/log/MediaLogger;

    const/16 v1, 0x8

    const-string v2, "  "

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/android/systemui/log/MediaLoggerImpl;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/log/MediaLoggerImpl;->onMediaDataRemoved(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    new-instance v1, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/media/SecMediaHost$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p0, 0x0

    iput-object p0, p2, Lcom/android/systemui/media/SecMediaHost;->mCurrentMediaData:Lcom/android/systemui/media/MediaDataFormat;

    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 0

    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
