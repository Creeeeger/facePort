.class public final Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->updateViewVisibility()V

    :cond_0
    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->updateViewVisibility()V

    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->updateViewVisibility()V

    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$listener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaHost;->updateViewVisibility()V

    :cond_0
    return-void
.end method
