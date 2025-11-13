.class public final synthetic Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputController;

.field public final synthetic f$1:Lcom/android/settingslib/media/MediaDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda5;->f$1:Lcom/android/settingslib/media/MediaDevice;

    iput p3, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda5;->f$1:Lcom/android/settingslib/media/MediaDevice;

    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda5;->f$2:I

    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    if-nez v1, :cond_0

    const-string p0, "InfoMediaManager"

    const-string v0, "Unable to set volume. RouteInfo is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/media/InfoMediaManager;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    :goto_0
    return-void
.end method
