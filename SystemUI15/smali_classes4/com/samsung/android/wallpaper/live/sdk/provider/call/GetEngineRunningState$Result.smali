.class public final Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Result;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallResult;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mRunningState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallResult;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Result;->mRunningState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Result;->mRunningState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetEngineRunningState$Result;->mRunningState:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
