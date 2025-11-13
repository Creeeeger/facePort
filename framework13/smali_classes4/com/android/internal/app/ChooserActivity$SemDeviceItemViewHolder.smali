.class final Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SemDeviceItemViewHolder"
.end annotation


# instance fields
.field blacklist mListPosition:I

.field blacklist mView:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "isClickable"    # Z
    .param p4, "viewType"    # I

    .line 11868
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11869
    invoke-direct {p0, p2, p4}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;-><init>(Landroid/view/View;I)V

    .line 11866
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mListPosition:I

    .line 11870
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    .line 11871
    if-eqz p3, :cond_0

    .line 11872
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11881
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11894
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist hideShareStatusAnim()V
    .locals 2

    .line 11923
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x1020577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareStatusView;

    .line 11925
    .local v0, "sv":Lcom/samsung/android/share/SemShareStatusView;
    if-eqz v0, :cond_0

    .line 11926
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareStatusView;->setVisibility(I)V

    .line 11927
    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/samsung/android/share/SemShareStatusView;->setShareStatus(Lcom/samsung/android/share/SemShareStatusView;III)V

    .line 11929
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$new$0$com-android-internal-app-ChooserActivity$SemDeviceItemViewHolder(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 11873
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mSelectedViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 11874
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v0, :cond_0

    .line 11875
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mExifViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 11877
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mListPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    .line 11879
    return-void
.end method

.method public blacklist setAngle(F)V
    .locals 2
    .param p1, "angle"    # F

    .line 11932
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x1020576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 11933
    .local v0, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    invoke-static {v0, p1}, Lcom/samsung/android/share/SemShareRotateLayout;->rotateView(Lcom/samsung/android/share/SemShareRotateLayout;F)V

    .line 11934
    return-void
.end method

.method public blacklist setFocus(IZ)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "focused"    # Z

    .line 11937
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x1020576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 11938
    .local v0, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    const v1, 0x102057d

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 11939
    .local v1, "ivDetect":Landroid/widget/ImageView;
    const v2, 0x102057e

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/SemShareRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 11941
    .local v2, "ivFocus":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 11942
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p2, :cond_0

    .line 11943
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11944
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11946
    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11947
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11950
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setPointerVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 11953
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x1020576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 11954
    .local v0, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    invoke-virtual {v0, p1}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    .line 11955
    return-void
.end method

.method public blacklist setViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 11897
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11898
    return-void
.end method

.method public blacklist setViewVisibilityWithAnimation(IIF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "visibility"    # I
    .param p3, "startValue"    # F

    .line 11958
    const-wide/16 v0, 0xc8

    const/4 v2, 0x2

    const-string v3, "alpha"

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    .line 11959
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput p3, v2, v6

    const/4 v7, 0x1

    aput v4, v2, v7

    invoke-static {v5, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 11960
    .local v2, "fadeAnim":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 11961
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11962
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11963
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$2;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;I)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11969
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$3;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;I)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11975
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .end local v2    # "fadeAnim":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 11976
    :cond_0
    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    .line 11977
    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v5, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 11978
    .restart local v2    # "fadeAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11979
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11980
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder$4;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11985
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 11976
    .end local v2    # "fadeAnim":Landroid/animation/ValueAnimator;
    :cond_1
    :goto_0
    nop

    .line 11987
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public blacklist startShareStatusAnim(IIIZ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "startProgress"    # I
    .param p3, "endProgress"    # I
    .param p4, "isUWB"    # Z

    .line 11901
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    const v1, 0x1020577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareStatusView;

    .line 11903
    .local v0, "sv":Lcom/samsung/android/share/SemShareStatusView;
    if-eqz v0, :cond_4

    .line 11904
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mView:Landroid/view/View;

    const v2, 0x1020576

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 11905
    .local v1, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 11906
    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 11913
    :cond_0
    if-eqz p4, :cond_1

    move v4, v2

    :cond_1
    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    goto :goto_1

    .line 11911
    :cond_2
    :goto_0
    invoke-virtual {v1, v4}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    .line 11917
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/share/SemShareStatusView;->setVisibility(I)V

    .line 11918
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/share/SemShareStatusView;->setShareStatus(Lcom/samsung/android/share/SemShareStatusView;III)V

    .line 11920
    .end local v1    # "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    :cond_4
    return-void
.end method
