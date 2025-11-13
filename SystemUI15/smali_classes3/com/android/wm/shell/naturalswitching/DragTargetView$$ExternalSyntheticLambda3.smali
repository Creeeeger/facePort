.class public final synthetic Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/16 v0, 0x6c

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "DragTargetView"

    const-string v1, "performSoundEffect: Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->startTransition(Z)V

    return-void
.end method
