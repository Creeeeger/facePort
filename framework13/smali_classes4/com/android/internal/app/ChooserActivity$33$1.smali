.class Lcom/android/internal/app/ChooserActivity$33$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$33;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$33;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$33;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$33;

    .line 13030
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 13033
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const v1, 0x102057b

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 13034
    .local v0, "settingsBtn":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 13035
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsNeedShowConvertVideoTips(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mShouldTranscodingSettingShown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTranscodingVideoCountForSmartTip(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNeedViedeoConvertingCount(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    if-lez v1, :cond_1

    .line 13037
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateAndShowTipsPopupForShare(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;I)V

    .line 13038
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "chooser_convertvideo_tip"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13039
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$33$1;->this$1:Lcom/android/internal/app/ChooserActivity$33;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$33;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsNeedShowConvertVideoTips(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 13042
    :cond_1
    return-void
.end method
