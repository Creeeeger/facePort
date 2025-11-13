.class Lcom/android/internal/app/ChooserActivity$19;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->setSpannableLinkText(Landroid/widget/TextView;Ljava/lang/String;)V
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

    .line 9312
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 9315
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 9316
    .local v0, "adapter":Lcom/android/internal/app/ChooserListAdapter;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v1

    const-string v2, "b"

    const-string v3, "a"

    if-eqz v1, :cond_1

    .line 9317
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "PROF"

    if-eqz v1, :cond_0

    .line 9318
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9320
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 9323
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    const-string v4, "SHAR"

    if-eqz v1, :cond_6

    .line 9324
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 9325
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 9326
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 9327
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 9330
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 9333
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9334
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 9337
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v1, :cond_3

    .line 9338
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 9341
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v1, :cond_5

    .line 9342
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9343
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 9344
    return-void

    .line 9346
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 9347
    return-void

    .line 9349
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    goto/16 :goto_1

    .line 9350
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 9351
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 9352
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 9353
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 9354
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 9357
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 9360
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9361
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 9364
    :cond_7
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v1, :cond_8

    .line 9365
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 9368
    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v1, :cond_a

    .line 9369
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9370
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 9371
    return-void

    .line 9373
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 9374
    return-void

    .line 9376
    :cond_a
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 9378
    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$19;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 9379
    return-void
.end method
