.class public final Lcom/android/systemui/wallpaper/PluginWallpaperController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/PluginWallpaperController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMultipackApplied(I)V
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "APPLY_MULTIPACK_RESULT_FAIL_DLS_INTERNAL_ERROR"

    goto :goto_0

    :cond_1
    const-string p0, "APPLY_MULTIPACK_RESULT_FAIL_LIVE_WALLPAPER"

    goto :goto_0

    :cond_2
    const-string p0, "APPLY_MULTIPACK_RESULT_FAIL_RETRY_COUNT_OVER"

    goto :goto_0

    :cond_3
    const-string p0, "APPLY_MULTIPACK_RESULT_SUCCESS"

    :goto_0
    const-string v0, "onMultipackApplied: reason = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PluginWallpaperController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
