.class Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semCreateDefaultDeviceTargetView(ILandroid/view/ViewGroup;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    .line 6799
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 6802
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const-string v1, "b"

    const-string v2, "a"

    if-eqz v0, :cond_1

    .line 6803
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "PROF"

    if-eqz v0, :cond_0

    .line 6804
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6806
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6809
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    const-string v3, "SHAR"

    if-eqz v0, :cond_6

    .line 6810
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 6811
    .local v0, "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 6812
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6813
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 6814
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 6817
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 6820
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6821
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 6824
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v1, :cond_3

    .line 6825
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 6828
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v1, :cond_5

    .line 6829
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6830
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 6831
    return-void

    .line 6833
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 6834
    return-void

    .line 6836
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .end local v0    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    goto/16 :goto_1

    .line 6837
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 6838
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    .line 6839
    .restart local v0    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 6840
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mSemShareLogging:Lcom/samsung/android/share/SemShareLogging;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/share/SemShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6841
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 6842
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 6845
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 6848
    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6849
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 6852
    :cond_7
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v1, :cond_8

    .line 6853
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 6856
    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v1, v1, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v1, :cond_a

    .line 6857
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6858
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 6859
    return-void

    .line 6861
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 6862
    return-void

    .line 6864
    :cond_a
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    goto :goto_2

    .line 6837
    .end local v0    # "dri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_b
    :goto_1
    nop

    .line 6866
    :goto_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 6867
    return-void
.end method
