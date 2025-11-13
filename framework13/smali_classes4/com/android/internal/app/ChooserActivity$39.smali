.class Lcom/android/internal/app/ChooserActivity$39;
.super Lcom/android/internal/app/ChooserActivity$TransitionStateListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->showExpandedPrivateShareTip(ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$currentItemView:Landroid/view/View;

.field final synthetic blacklist val$position:I

.field final synthetic blacklist val$shouldRunSceneOptimizer:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 14135
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$39;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$39;->val$position:I

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$39;->val$currentItemView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/internal/app/ChooserActivity$39;->val$shouldRunSceneOptimizer:Z

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$TransitionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onTransitionEnd$0$com-android-internal-app-ChooserActivity$39(ILandroid/view/View;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "currentItemView"    # Landroid/view/View;
    .param p3, "shouldRunSceneOptimizer"    # Z

    .line 14144
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$39;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshowCollapsedPrivateShareIcon(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;)V

    .line 14145
    if-eqz p3, :cond_0

    .line 14146
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$39;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshowEnhancementIcons(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;)V

    .line 14148
    :cond_0
    return-void
.end method

.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 6
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 14138
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$39;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 14139
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 14140
    const-string v1, "GalleryShareSheet"

    const-string/jumbo v2, "scrolled and collapsed, or orientation changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14141
    return-void

    .line 14143
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$39;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$39;->val$position:I

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$39;->val$currentItemView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/internal/app/ChooserActivity$39;->val$shouldRunSceneOptimizer:Z

    new-instance v5, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/internal/app/ChooserActivity$39$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$39;ILandroid/view/View;Z)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v5, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14149
    return-void
.end method
