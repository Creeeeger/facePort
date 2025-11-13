.class Lcom/android/internal/app/ChooserActivity$32;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->initGalleryRecyclerView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist prevState:I

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 12864
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 12865
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$32;->prevState:I

    return-void
.end method


# virtual methods
.method public blacklist onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 10
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 12868
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 12872
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTipsSmartShareTempPopup(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTipsSmartShareTempPopup(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12873
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmTipsSmartShareTempPopup(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 12875
    :cond_0
    const/4 v0, 0x0

    .line 12876
    .local v0, "enhanceLayout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSnapHelper(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareSnapHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/share/SemShareSnapHelper;->findSnapView(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    .line 12877
    .local v2, "currentView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 12878
    const v3, 0x1020545

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 12880
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "GalleryShareSheet"

    if-nez p2, :cond_7

    iget v6, p0, Lcom/android/internal/app/ChooserActivity$32;->prevState:I

    if-ne v6, v3, :cond_7

    if-eqz v2, :cond_7

    .line 12882
    const-string v3, "RecyclerView onScrollStateChanged SCROLL_STATE_IDLE"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12883
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 12884
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/share/SemShareImageFetcher;->setPauseWork(Z)V

    .line 12886
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 12887
    .local v3, "currentPosition":I
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnhancedImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;

    .line 12888
    .local v6, "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    if-eqz v6, :cond_3

    iget-boolean v7, v6, Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;->isPrivateImage:Z

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v1

    .line 12889
    .local v7, "isPrivate":Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;)I

    move-result v8

    if-eq v3, v8, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    .line 12890
    .local v4, "isFocusChanged":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 12892
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RecyclerView onScrollStateChanged, old position : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v9}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new position : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12894
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msaveEnhancementsToFile(Lcom/android/internal/app/ChooserActivity;I)V

    .line 12895
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmLastFocusedIndex(Lcom/android/internal/app/ChooserActivity;I)V

    .line 12896
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsWritePending(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 12898
    :cond_5
    if-eqz v7, :cond_6

    .line 12899
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v5, v3, v2, v1, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$menablePrivateShareTip(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;ZZ)V

    .line 12901
    :cond_6
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 12902
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mstartEnhancementDetection(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    goto/16 :goto_2

    .line 12904
    .end local v3    # "currentPosition":I
    .end local v4    # "isFocusChanged":Z
    .end local v6    # "info":Lcom/android/internal/app/ChooserActivity$EnhancedImageInfo;
    .end local v7    # "isPrivate":Z
    :cond_7
    if-eqz v0, :cond_a

    .line 12905
    const-string v6, "OnScroll enhanceLayout gone"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12906
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12907
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmIsEnhanceButtonAnimRunning(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 12908
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    .line 12909
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 12910
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12911
    .local v6, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 12912
    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050380

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 12913
    const/16 v7, 0xe

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12914
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12915
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 12916
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 12917
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12918
    :cond_8
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 12919
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleTextView(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12920
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPrivacyTitleContainer(Lcom/android/internal/app/ChooserActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12922
    .end local v6    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_b

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 12923
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemShareImageFetcher(Lcom/android/internal/app/ChooserActivity;)Lcom/samsung/android/share/SemShareImageFetcher;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SemShareImageFetcher;->setPauseWork(Z)V

    goto :goto_3

    .line 12904
    :cond_a
    :goto_2
    nop

    .line 12926
    :cond_b
    :goto_3
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$32;->prevState:I

    .line 12927
    return-void
.end method

.method public blacklist onScrolled(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 12930
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsScrolledToCenter(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12931
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemStartCenterItemAnimationAndPostponeTransition(Lcom/android/internal/app/ChooserActivity;)V

    .line 12932
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsBindedLowPosition(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsBindedHighPosition(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12933
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mstartPreviewSideItemAnimation(Lcom/android/internal/app/ChooserActivity;)V

    .line 12936
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDrawerAnimEnded(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12937
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsRTL(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    if-ltz p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsRTL(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    if-lez p2, :cond_3

    .line 12938
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedLastItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 12939
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 12940
    .local v0, "lastPosition":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedLastItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12941
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 12942
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 12943
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 12944
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedLastItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12949
    .end local v0    # "lastPosition":I
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsRTL(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-gtz p2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsRTL(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    if-gez p2, :cond_6

    .line 12950
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedFirstItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 12951
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 12952
    .local v0, "firstPosition":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedFirstItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12953
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 12954
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 12955
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 12956
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$32;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmNotStartedFirstItemPositions(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12963
    .end local v0    # "firstPosition":I
    .end local v2    # "view":Landroid/view/View;
    :cond_6
    return-void
.end method
