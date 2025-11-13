.class public final Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine$1;->this$1:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDisplayStateChanged(Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;Lcom/samsung/android/wallpaper/live/sdk/data/DisplayState;)V

    return-void
.end method
