.class public final Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    const v0, 0x43e48000    # 457.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/16 v0, 0x172

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->val$intent:Landroid/content/Intent;

    const-string v2, "com.samsung.permission.CAPTURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "doScreenCapture Send com.samsung.android.capture.ScreenshotExecutor"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
