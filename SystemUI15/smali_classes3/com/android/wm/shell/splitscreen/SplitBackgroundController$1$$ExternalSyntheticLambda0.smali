.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-boolean v3, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v1, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-nez p0, :cond_5

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    if-eqz v0, :cond_1

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    if-eq v0, p0, :cond_3

    iput-object p0, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    iput-boolean v1, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    :cond_3
    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply()V

    goto :goto_1

    :cond_4
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    goto :goto_1

    :cond_5
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    invoke-virtual {p0, v2, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    :goto_1
    return-void
.end method
