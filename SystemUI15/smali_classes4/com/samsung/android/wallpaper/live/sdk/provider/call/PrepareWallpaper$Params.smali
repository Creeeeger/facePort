.class public final Lcom/samsung/android/wallpaper/live/sdk/provider/call/PrepareWallpaper$Params;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;-><init>(Landroid/os/Bundle;)V

    const-string p0, "which"

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string p0, "user_id"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const-string p0, "wallpaper_service_class_name"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "external_params"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    return-void
.end method
