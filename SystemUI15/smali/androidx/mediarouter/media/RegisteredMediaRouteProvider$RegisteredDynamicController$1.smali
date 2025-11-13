.class public final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;
.super Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Error: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouteProviderProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "groupableTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;->this$1:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;

    iput-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;->mGroupableSectionTitle:Ljava/lang/String;

    const-string/jumbo v0, "transferableTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;->mTransferableSectionTitle:Ljava/lang/String;

    return-void
.end method
