.class public final Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;
.super Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final rotation:I

.field public final sourceWhich:I

.field public final userId:I

.field public final wallpaperId:I

.field public final which:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;-><init>(Landroid/os/Bundle;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->wallpaperId:I

    iput p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->which:I

    iput p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->sourceWhich:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->userId:I

    iput p1, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->rotation:I

    sget-object p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params$ClockType;->$VALUES:[Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params$ClockType;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/provider/ProviderCallParams;-><init>(Landroid/os/Bundle;)V

    const-string v0, "wallpaper_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->wallpaperId:I

    const-string v0, "which"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->which:I

    const-string v1, "source_which"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->sourceWhich:I

    const-string v0, "user_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->userId:I

    const-string v0, "rotation"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params;->rotation:I

    const-string p0, "wallpaper_service_class_name"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "service_settings"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    const-string p0, "clock"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "current"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sget-object p0, Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params$ClockType;->$VALUES:[Lcom/samsung/android/wallpaper/live/sdk/provider/call/GetThumbnail$Params$ClockType;

    return-void
.end method
