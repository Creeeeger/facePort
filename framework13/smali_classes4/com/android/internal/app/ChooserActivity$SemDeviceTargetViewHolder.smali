.class Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemDeviceTargetViewHolder"
.end annotation


# instance fields
.field private final blacklist mRow:Landroid/view/ViewGroup;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "row"    # Landroid/view/ViewGroup;
    .param p3, "cellCount"    # I
    .param p4, "viewType"    # I

    .line 9119
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 9120
    invoke-direct {p0, p3, p2, p4}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 9122
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    .line 9123
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 9139
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9140
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 9142
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "rowNumber"    # I

    .line 9134
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0

    .line 9135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "index"    # I

    .line 9130
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 9126
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist hideShareStatusAnim(I)V
    .locals 3
    .param p1, "i"    # I

    .line 9173
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9174
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareStatusView;

    .line 9176
    .local v1, "sv":Lcom/samsung/android/share/SemShareStatusView;
    if-eqz v1, :cond_0

    .line 9177
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareStatusView;->setVisibility(I)V

    .line 9178
    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lcom/samsung/android/share/SemShareStatusView;->setShareStatus(Lcom/samsung/android/share/SemShareStatusView;III)V

    .line 9180
    :cond_0
    return-void
.end method

.method public blacklist setAngle(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "angle"    # F

    .line 9183
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9184
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 9185
    .local v1, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    invoke-static {v1, p2}, Lcom/samsung/android/share/SemShareRotateLayout;->rotateView(Lcom/samsung/android/share/SemShareRotateLayout;F)V

    .line 9186
    return-void
.end method

.method public blacklist setFocus(IZ)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "focused"    # Z

    .line 9189
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9190
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 9191
    .local v1, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    const v2, 0x102057d

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 9192
    .local v2, "ivDetect":Landroid/widget/ImageView;
    const v3, 0x102057e

    invoke-virtual {v1, v3}, Lcom/samsung/android/share/SemShareRotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 9194
    .local v3, "ivFocus":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 9195
    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz p2, :cond_0

    .line 9196
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9197
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9199
    :cond_0
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9200
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9203
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setPointerVisibility(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 9206
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9207
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 9208
    .local v1, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    invoke-virtual {v1, p2}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    .line 9209
    return-void
.end method

.method public blacklist setViewVisibility(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 9146
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9147
    return-void
.end method

.method public blacklist setViewVisibilityWithAnimation(IIF)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "visibility"    # I
    .param p3, "startValue"    # F

    .line 9212
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9213
    .local v0, "v":Landroid/view/View;
    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    const-string v4, "alpha"

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    .line 9214
    new-array v3, v3, [F

    const/4 v6, 0x0

    aput p3, v3, v6

    const/4 v7, 0x1

    aput v5, v3, v7

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 9215
    .local v3, "fadeAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9216
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9217
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9218
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9224
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$2;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9230
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .end local v3    # "fadeAnim":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 9231
    :cond_0
    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    .line 9232
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 9233
    .restart local v3    # "fadeAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9234
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9235
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$3;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder$3;-><init>(Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9240
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 9231
    .end local v3    # "fadeAnim":Landroid/animation/ValueAnimator;
    :cond_1
    :goto_0
    nop

    .line 9242
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public blacklist startShareStatusAnim(IIIIZ)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "status"    # I
    .param p3, "startProgress"    # I
    .param p4, "endProgress"    # I
    .param p5, "isUWB"    # Z

    .line 9150
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 9151
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareStatusView;

    .line 9153
    .local v1, "sv":Lcom/samsung/android/share/SemShareStatusView;
    if-eqz v1, :cond_4

    .line 9154
    const v2, 0x1020576

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/share/SemShareRotateLayout;

    .line 9155
    .local v2, "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 9156
    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq p2, v4, :cond_2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    const/4 v4, 0x6

    if-eq p2, v4, :cond_2

    const/4 v4, 0x2

    if-eq p2, v4, :cond_2

    const/4 v4, 0x7

    if-ne p2, v4, :cond_0

    goto :goto_0

    .line 9163
    :cond_0
    if-eqz p5, :cond_1

    move v5, v3

    :cond_1
    invoke-virtual {v2, v5}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    goto :goto_1

    .line 9161
    :cond_2
    :goto_0
    invoke-virtual {v2, v5}, Lcom/samsung/android/share/SemShareRotateLayout;->setVisibility(I)V

    .line 9167
    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Lcom/samsung/android/share/SemShareStatusView;->setVisibility(I)V

    .line 9168
    invoke-static {v1, p2, p3, p4}, Lcom/samsung/android/share/SemShareStatusView;->setShareStatus(Lcom/samsung/android/share/SemShareStatusView;III)V

    .line 9170
    .end local v2    # "rotateLayout":Lcom/samsung/android/share/SemShareRotateLayout;
    :cond_4
    return-void
.end method
