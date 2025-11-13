.class public Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$GalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GalleryViewHolder"
.end annotation


# instance fields
.field blacklist btnHolder:Landroid/widget/LinearLayout;

.field blacklist checkBox:Landroid/widget/CheckBox;

.field blacklist cropIcon:Landroid/widget/ImageView;

.field blacklist cropIconLayout:Landroid/widget/LinearLayout;

.field blacklist favoriteImage:Landroid/widget/ImageView;

.field blacklist image:Landroid/widget/ImageView;

.field blacklist imageContainer:Landroid/widget/FrameLayout;

.field blacklist optimizerBtn:Landroid/widget/ImageButton;

.field blacklist optimizerLayout:Landroid/widget/RelativeLayout;

.field blacklist parentView:Landroid/view/View;

.field blacklist progressBar:Landroid/widget/ProgressBar;

.field blacklist remasterIcon:Landroid/widget/ImageView;

.field blacklist remasterIconLayout:Landroid/widget/LinearLayout;

.field blacklist rotateIcon:Landroid/widget/ImageView;

.field blacklist rotateIconLayout:Landroid/widget/LinearLayout;

.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

.field blacklist tiltIcon:Landroid/widget/ImageView;

.field blacklist tiltIconLayout:Landroid/widget/LinearLayout;

.field blacklist typeImage:Landroid/widget/ImageView;

.field blacklist typeImageBackground:Landroid/widget/LinearLayout;

.field blacklist typeImageText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateEnhancementButtonVisibility(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;[Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->updateEnhancementButtonVisibility([Z)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;Landroid/view/View;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$GalleryAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 14726
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->this$1:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    .line 14727
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 14728
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->parentView:Landroid/view/View;

    .line 14729
    const v0, 0x102054f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    .line 14730
    const v0, 0x102055c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 14731
    const v0, 0x1020549

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->favoriteImage:Landroid/widget/ImageView;

    .line 14732
    const v0, 0x102054b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    .line 14733
    const v0, 0x102054d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageText:Landroid/widget/TextView;

    .line 14734
    const v0, 0x102054c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    .line 14735
    const v0, 0x1020565

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 14736
    const v0, 0x102055d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerBtn:Landroid/widget/ImageButton;

    .line 14737
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 14738
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 14739
    const v0, 0x102055e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->optimizerLayout:Landroid/widget/RelativeLayout;

    .line 14740
    const v0, 0x1020540

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIcon:Landroid/widget/ImageView;

    .line 14741
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14742
    const v0, 0x102057a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIcon:Landroid/widget/ImageView;

    .line 14743
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14744
    const v0, 0x102056a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIcon:Landroid/widget/ImageView;

    .line 14745
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14746
    const v0, 0x102056b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIcon:Landroid/widget/ImageView;

    .line 14747
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 14748
    const v0, 0x1020544

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->btnHolder:Landroid/widget/LinearLayout;

    .line 14749
    const v0, 0x1020293

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIconLayout:Landroid/widget/LinearLayout;

    .line 14750
    const v0, 0x10204d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIconLayout:Landroid/widget/LinearLayout;

    .line 14751
    const v0, 0x1020636

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIconLayout:Landroid/widget/LinearLayout;

    .line 14752
    const v0, 0x10204ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIconLayout:Landroid/widget/LinearLayout;

    .line 14754
    const v0, 0x1020555

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    .line 14756
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImageBackground:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14763
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->typeImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$2;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14817
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->image:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$3;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14844
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$4;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14911
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder$5;-><init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Lcom/android/internal/app/ChooserActivity$GalleryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14919
    return-void
.end method

.method private blacklist updateEnhancementButtonVisibility([Z)V
    .locals 5
    .param p1, "state"    # [Z

    .line 14929
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIconLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    aget-boolean v2, p1, v1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14930
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14931
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIconLayout:Landroid/widget/LinearLayout;

    aget-boolean v2, p1, v3

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14932
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14933
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIconLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    aget-boolean v2, p1, v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14934
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14935
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIconLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    aget-boolean v2, p1, v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14936
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14937
    return-void
.end method


# virtual methods
.method public blacklist updateSelectedEnhancements([Z)V
    .locals 2
    .param p1, "state"    # [Z

    .line 14922
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->cropIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14923
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->remasterIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14924
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->tiltIcon:Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14925
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;->rotateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x3

    aget-boolean v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14926
    return-void
.end method
