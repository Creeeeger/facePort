.class Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$2;
.super Ljava/lang/Object;
.source "DecorCaptionImmersiveHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

.field final synthetic blacklist val$decorCaptionView:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    .line 293
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$2;->this$0:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    iput-object p2, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$2;->val$decorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 300
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$2;->this$0:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->-$$Nest$fgetmDecor(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$2;->val$decorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 301
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getOverlayWithAppContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$2;->this$0:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->-$$Nest$fgetmDecor(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/DecorView;->updateCaptionState(IZ)V

    .line 304
    :cond_1
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 308
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 296
    return-void
.end method
