.class public final Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/WallpaperController;->setUnfoldTransitionZoom(F)V

    return-void
.end method

.method public final onTransitionProgress(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController$TransitionListener;->this$0:Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/WallpaperController;->setUnfoldTransitionZoom(F)V

    return-void
.end method
