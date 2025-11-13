.class Lcom/android/internal/app/ChooserActivity$24;
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

    .line 10608
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$24;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$24;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .locals 4

    .line 10611
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$24;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10612
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$24;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 10613
    .local v0, "itemIcon":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$24;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTipsLinkShareTempPopup(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10614
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$24;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateAndShowTipsPopupForPrivateShare(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    .line 10615
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$24;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "chooser_privateshare_tip"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10616
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$24;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsNeedShowPrivateShareTips(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 10618
    :cond_0
    return-void
.end method
