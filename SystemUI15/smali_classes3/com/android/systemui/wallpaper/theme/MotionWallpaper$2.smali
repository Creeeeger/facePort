.class public final Lcom/android/systemui/wallpaper/theme/MotionWallpaper$2;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [F

    sget v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget v2, p1, v0

    aget p1, p1, v1

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->startAlphaAnimator(FFZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->startAlphaAnimator(FFZ)V

    :cond_2
    :goto_0
    return-void
.end method
