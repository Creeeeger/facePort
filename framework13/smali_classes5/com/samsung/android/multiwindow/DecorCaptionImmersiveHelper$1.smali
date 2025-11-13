.class Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$1;
.super Ljava/lang/Object;
.source "DecorCaptionImmersiveHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    .line 248
    iput-object p1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$1;->this$0:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 255
    sget-boolean v0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "dispatchTouchEvent: hide."

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->log(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$1;->this$0:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->-$$Nest$fgetmDecor(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper$1;->this$0:Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;->-$$Nest$fgetmHideRunnable(Lcom/samsung/android/multiwindow/DecorCaptionImmersiveHelper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/DecorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 263
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 251
    return-void
.end method
