.class public final synthetic Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, ""

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V

    return-void
.end method
