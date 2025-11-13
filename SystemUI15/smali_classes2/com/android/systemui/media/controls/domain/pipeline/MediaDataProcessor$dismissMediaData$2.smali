.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $userInitiated:Z

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;->$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;->$userInitiated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;->$key:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$2;->$userInitiated:Z

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->removeEntry$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;ZI)V

    return-void
.end method
