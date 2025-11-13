.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissSmartspaceRecommendation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissSmartspaceRecommendation$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissSmartspaceRecommendation$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissSmartspaceRecommendation$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissSmartspaceRecommendation$1;->$key:Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->EXTRAS_MEDIA_SOURCE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifySmartspaceMediaDataRemoved(Ljava/lang/String;Z)V

    return-void
.end method
