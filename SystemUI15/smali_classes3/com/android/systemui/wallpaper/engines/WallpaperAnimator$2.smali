.class public final Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$2;->this$0:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$2;->this$0:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->mLastDrawingTime:J

    return-void
.end method
