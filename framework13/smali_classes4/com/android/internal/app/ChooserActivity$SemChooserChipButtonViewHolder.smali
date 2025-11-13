.class final Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SemChooserChipButtonViewHolder"
.end annotation


# instance fields
.field blacklist mChipButton:Landroid/view/View;

.field blacklist mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "view"    # Landroid/view/View;

    .line 11494
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11495
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11497
    const v0, 0x102053b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    .line 11498
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11535
    return-void
.end method


# virtual methods
.method public blacklist animatePrivateShareButton()V
    .locals 12

    .line 11546
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 11547
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 11548
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 11549
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11550
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    .line 11553
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    .line 11554
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v10, v4, v5

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    .line 11555
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v11, v4, v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 11557
    .local v3, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x1c2

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 11558
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v4, v5, v5, v1, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 11560
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 11561
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 11562
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 11564
    new-instance v2, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 11579
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11580
    return-void
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-app-ChooserActivity$SemChooserChipButtonViewHolder(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 11499
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->semGetItemKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_copy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11500
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$monCopyButtonClicked(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 11502
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForOnClick(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 11503
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForRemoveExif(Lcom/android/internal/app/ChooserActivity;)V

    .line 11504
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForIncludeOriginal(Lcom/android/internal/app/ChooserActivity;)V

    .line 11505
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForPreloadServices(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 11508
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemInsertLoggingForConvertOption(Lcom/android/internal/app/ChooserActivity;)V

    .line 11511
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNeedApplyMultiSelectUI(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11512
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryIntent(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceTargetInfoWithNewIntent(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;Landroid/content/Intent;Lcom/android/internal/app/ChooserListAdapter;I)V

    .line 11515
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$misLaunchingTargetInOtherProfile(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11516
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 11519
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mLocationRemoveEnabled:Z

    if-eqz v0, :cond_3

    .line 11520
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemReplaceUriAfterRemoveExif(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)V

    .line 11523
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mTranscodingEnabled:Z

    if-eqz v0, :cond_5

    .line 11524
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmQuickShareIsTranscoding(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11525
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShowToastForWaitTranscoding(Lcom/android/internal/app/ChooserActivity;)V

    .line 11526
    return-void

    .line 11528
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateTransTask(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 11529
    return-void

    .line 11531
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 11532
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 11534
    :goto_0
    return-void
.end method

.method public blacklist setExtraInfoText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 11584
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    const v1, 0x102053e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11585
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11586
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    const v2, 0x1020015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11587
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11588
    return-void
.end method

.method public blacklist setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 11538
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    const v1, 0x1020616

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11539
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mChipButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11540
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11541
    return-void
.end method
