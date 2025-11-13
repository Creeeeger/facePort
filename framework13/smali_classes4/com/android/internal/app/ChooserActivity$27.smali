.class Lcom/android/internal/app/ChooserActivity$27;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semAddLinkSharingButton(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 10938
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 10941
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 10942
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 10943
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 10946
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 10949
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10950
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 10953
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v0, :cond_1

    .line 10954
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 10957
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v0, :cond_3

    .line 10958
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10959
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 10960
    return-void

    .line 10962
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 10963
    return-void

    .line 10965
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$27;->val$simpleSharingDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 10966
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$27;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 10967
    return-void
.end method
