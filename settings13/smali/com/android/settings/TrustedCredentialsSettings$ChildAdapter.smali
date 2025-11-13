.class Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildAdapter"
.end annotation


# instance fields
.field private final EMPTY_STATE_SET:[I

.field private final GROUP_EXPANDED_STATE_SET:[I

.field private final HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private final HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private final SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private final mGroupPosition:I

.field private mHeaderView:Landroid/view/ViewGroup;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mIsListExpanded:Z

.field private mListView:Landroid/widget/ListView;

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;I)V
    .locals 5

    .line 653
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const v1, 0x10100a8

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 618
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->GROUP_EXPANDED_STATE_SET:[I

    new-array v0, v2, [I

    .line 619
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->EMPTY_STATE_SET:[I

    .line 620
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 622
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 624
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 634
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 647
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 654
    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    .line 655
    iput p3, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    .line 656
    invoke-virtual {p2, v0}, Landroid/widget/BaseExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;ILcom/android/settings/TrustedCredentialsSettings$ChildAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;I)V

    return-void
.end method

.method static synthetic access$001(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    .line 616
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$101(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    .line 616
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method private checkGroupExpandableAndStartWarningActivity()Z
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result p0

    return p0
.end method

.method private getGroupIndicator()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 749
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    const/4 v2, 0x0

    const v3, 0x101006f

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 752
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 755
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNightModeSetting(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 757
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sec_trusted_credentials_group_indicator_night_theme:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 761
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private refreshViews()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->GROUP_EXPANDED_STATE_SET:[I

    goto :goto_0

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->EMPTY_STATE_SET:[I

    :goto_0
    const/4 v2, 0x0

    .line 739
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 741
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    .line 744
    :cond_2
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 743
    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildrenCount(I)I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 669
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 686
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->checkGroupExpandableAndStartWarningActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 687
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->refreshViews()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 692
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p3}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/TrustedCredentialsSettings;->-$$Nest$mshowCertDialog(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method public setContainerView(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 696
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    .line 698
    sget v0, Lcom/android/settings/R$id;->cert_list:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    .line 699
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 700
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 701
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 703
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 706
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->header_view:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    .line 707
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->group_indicator:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    .line 710
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getGroupIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 712
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->header_content_container:I

    .line 713
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 714
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    const/4 v2, 0x0

    .line 715
    invoke-virtual {v1, p0, v0, v2, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 714
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setExpandIfAvailable(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 729
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    .line 731
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->refreshViews()V

    return-void
.end method

.method public showDivider(Z)V
    .locals 1

    .line 724
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$id;->header_divider:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 725
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showHeader(Z)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
