.class public final Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Params;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final which:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;-><init>(Landroid/os/Bundle;)V

    const-string v0, "which"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Params;->which:I

    return-void
.end method
