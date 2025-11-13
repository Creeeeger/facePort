.class public final Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;->this$0:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator$1;->this$0:Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/engines/WallpaperAnimator;->playDownScale()V

    :cond_0
    return-void
.end method
