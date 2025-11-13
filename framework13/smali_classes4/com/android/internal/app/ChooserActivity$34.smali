.class Lcom/android/internal/app/ChooserActivity$34;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->showEnhancementIcons(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$curItemView:Landroid/view/View;

.field final synthetic blacklist val$fadeOutAnim:Landroid/view/animation/Animation;

.field final synthetic blacklist val$position:I

.field final synthetic blacklist val$sceneOptimizer:Landroid/widget/ImageButton;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/ImageButton;Landroid/view/animation/Animation;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 13846
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$34;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$34;->val$sceneOptimizer:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$34;->val$fadeOutAnim:Landroid/view/animation/Animation;

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$34;->val$position:I

    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$34;->val$curItemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13854
    const-string v0, "GalleryShareSheet"

    const-string/jumbo v1, "onAnimationEnd API fadeOutAnim Animation called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13855
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$34;->val$sceneOptimizer:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$34;->val$fadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 13856
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$34;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$34;->val$position:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$34;->val$curItemView:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshowEnhanceIconAnimation(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;)V

    .line 13857
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13861
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 13849
    const-string v0, "GalleryShareSheet"

    const-string/jumbo v1, "onAnimationStart API called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13850
    return-void
.end method
