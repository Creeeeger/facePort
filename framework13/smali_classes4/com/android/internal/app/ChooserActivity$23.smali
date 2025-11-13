.class Lcom/android/internal/app/ChooserActivity$23;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semCheckToShowCreateTipPoup(Lcom/android/internal/app/ChooserListAdapter;Lcom/android/internal/app/ChooserActivity$ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$holder:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ItemViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 10582
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$23;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .locals 5

    .line 10585
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$23;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10586
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$23;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 10587
    .local v0, "itemIcon":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsNeedShowQuickShareLargeFileTips(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsLargeFileExceedForTips(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10588
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v4, 0x2

    invoke-static {v1, v0, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateAndShowTipsPopupForShare(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V

    .line 10589
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "chooser_quicksharelargefile_tip"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10590
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsNeedShowQuickShareLargeFileTips(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 10591
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsShareTipShowing(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 10593
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsShareTipShowing(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsNeedShowQuickShareManyFileTips(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity;->mContentCount:I

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_1

    .line 10594
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v4, 0x3

    invoke-static {v1, v0, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateAndShowTipsPopupForShare(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V

    .line 10595
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "chooser_quicksharemanyfile_tip"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10596
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$23;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsNeedShowQuickShareManyFileTips(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 10598
    :cond_1
    return-void
.end method
