.class public final Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final purpose:Ljava/lang/String;

.field public final requiredImageFormat:Ljava/lang/String;

.field public final which:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;-><init>(Landroid/os/Bundle;)V

    const-string v0, "which"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;->which:I

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string v0, "wallpaper_service_class_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "purpose"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;->purpose:Ljava/lang/String;

    const-string v0, "image_format"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetScreenshot$Params;->requiredImageFormat:Ljava/lang/String;

    return-void
.end method
