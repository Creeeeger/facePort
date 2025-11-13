.class Lcom/android/internal/app/ChooserActivity$33;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->lambda$initGalleryRecyclerView$9$com-android-internal-app-ChooserActivity()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 13017
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13025
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mstartPreviewSideItemAnimation(Lcom/android/internal/app/ChooserActivity;)V

    .line 13026
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmLeftViewAnimStarted(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 13027
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmRightViewAnimStarted(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 13028
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmDrawerAnimEnded(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 13029
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 13030
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$33$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$33$1;-><init>(Lcom/android/internal/app/ChooserActivity$33;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13044
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13049
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13021
    return-void
.end method
