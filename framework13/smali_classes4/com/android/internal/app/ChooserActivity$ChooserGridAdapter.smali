.class public final Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChooserGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist NUM_EXPANSIONS_TO_HIDE_AZ_LABEL:I = 0x14

.field private static final blacklist VIEW_TYPE_AZ_LABEL:I = 0x4

.field private static final blacklist VIEW_TYPE_CALLER_AND_RANK:I = 0x5

.field private static final blacklist VIEW_TYPE_CONTENT_PREVIEW:I = 0x2

.field private static final blacklist VIEW_TYPE_COUNT:I = 0x9

.field private static final blacklist VIEW_TYPE_DEVICE:I = 0x8

.field private static final blacklist VIEW_TYPE_DEVICE_GUIDE_LABEL:I = 0x7

.field private static final blacklist VIEW_TYPE_DIRECT_SHARE:I = 0x0

.field private static final blacklist VIEW_TYPE_FOOTER:I = 0x6

.field private static final blacklist VIEW_TYPE_NORMAL:I = 0x1

.field private static final blacklist VIEW_TYPE_PROFILE:I = 0x3


# instance fields
.field private blacklist mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field private blacklist mChooserTargetWidth:I

.field private blacklist mColumnCount:I

.field private blacklist mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

.field private blacklist mFooterHeight:I

.field private blacklist mGuideLabelAnimDone:Z

.field private final blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field private blacklist mLayoutRequested:Z

.field private blacklist mShowAzLabelIfPoss:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 5915
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 5916
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 5890
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    .line 5892
    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 5894
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    .line 5907
    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mGuideLabelAnimDone:Z

    .line 5910
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mColumnCount:I

    .line 5917
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 5918
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 5920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    .line 5922
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5935
    return-void
.end method

.method private blacklist canExpandDirectShare()Z
    .locals 1

    .line 6648
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 6177
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090142

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 6168
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x109006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6169
    .local v0, "profileRow":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v2, 0x10204ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    .line 6170
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6171
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->updateProfileViewButton()V

    .line 6172
    return-object v0
.end method

.method private synthetic blacklist lambda$loadViewsIntoGroup$0(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;ILandroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "column"    # I
    .param p3, "v"    # Landroid/view/View;
    .param p4, "v1"    # Landroid/view/View;

    .line 6210
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6211
    invoke-virtual {p1, p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v1

    .line 6210
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 6212
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshouldShowTargetDetails(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6217
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mMultiTargetInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    .line 6218
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmPinTargetInfo(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 6219
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, p3}, Lcom/android/internal/app/ChooserActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 6222
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic blacklist lambda$semCreateDeviceTargetViewHolder$2(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;ILandroid/view/View;)Z
    .locals 4
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "column"    # I
    .param p3, "v1"    # Landroid/view/View;

    .line 6740
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6742
    invoke-virtual {p1, p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v2

    .line 6741
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 6740
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 6743
    return v3
.end method

.method private blacklist loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .locals 11
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 6184
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 6185
    .local v1, "spec":I
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 6187
    .local v2, "exactSpec":I
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v3

    .line 6189
    .local v3, "columnCount":I
    instance-of v4, p1, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 6191
    .local v4, "isDirectShare":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 6192
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 6193
    .local v6, "v":Landroid/view/View;
    move v7, v5

    .line 6194
    .local v7, "column":I
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;

    invoke-direct {v8, p0, p1, v7}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6226
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    .line 6231
    if-eqz v4, :cond_0

    .line 6232
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 6233
    .local v8, "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 6234
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6235
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6239
    .end local v8    # "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    .line 6240
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6191
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "column":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6243
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    .line 6246
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->measure()V

    .line 6247
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {p0, v5, v7, v6}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6249
    if-eqz v4, :cond_2

    .line 6250
    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 6251
    .local v6, "dsvh":Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6257
    .end local v6    # "dsvh":Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
    :cond_2
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6258
    return-object p1
.end method

.method private blacklist semCreateDefaultDeviceTargetView(ILandroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 24
    .param p1, "viewType"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 6772
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x109015b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 6776
    .local v2, "chooserRow":Landroid/view/ViewGroup;
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105035b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 6777
    .local v3, "bottomPadding":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    .line 6778
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 6779
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    .line 6780
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v3

    .line 6777
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 6782
    new-instance v5, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;

    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v7

    move/from16 v8, p1

    invoke-direct {v5, v6, v2, v7, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;II)V

    .line 6784
    .local v5, "holder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 6785
    .local v6, "spec":I
    iget v7, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 6788
    .local v7, "exactSpec":I
    iget-object v9, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x109015c

    invoke-virtual {v9, v10, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 6791
    .local v9, "parent_item":Landroid/view/View;
    const v10, 0x1020015

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 6792
    .local v11, "iconText":Landroid/widget/TextView;
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v13, 0x1050469

    invoke-virtual {v12, v11, v13}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6794
    const v12, 0x1020572

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 6795
    .local v12, "descriptionPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 6796
    .local v13, "dlp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    int-to-float v14, v14

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 6798
    invoke-virtual {v5, v4, v9}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v14

    .line 6799
    .local v14, "row":Landroid/view/ViewGroup;
    new-instance v15, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;

    invoke-direct {v15, v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    invoke-virtual {v9, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6870
    const v15, 0x1020574

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 6871
    .local v15, "v":Landroid/view/View;
    invoke-virtual {v15, v7, v6}, Landroid/view/View;->measure(II)V

    .line 6872
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 6873
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_0

    .line 6874
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v19, v2

    .end local v2    # "chooserRow":Landroid/view/ViewGroup;
    .local v19, "chooserRow":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v10, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v4, v10

    .line 6875
    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 6877
    .end local v19    # "chooserRow":Landroid/view/ViewGroup;
    .restart local v2    # "chooserRow":Landroid/view/ViewGroup;
    :cond_0
    move-object/from16 v19, v2

    .end local v2    # "chooserRow":Landroid/view/ViewGroup;
    .restart local v19    # "chooserRow":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6878
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6881
    :goto_0
    const v1, 0x1020573

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6882
    .local v1, "iv":Landroid/widget/ImageView;
    const v2, 0x1020015

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6883
    .local v2, "iconLabel":Landroid/widget/TextView;
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 6884
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v18

    move/from16 v20, v3

    .end local v3    # "bottomPadding":I
    .local v20, "bottomPadding":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/android/internal/app/ChooserListAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6885
    .local v3, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6886
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 6887
    .end local v20    # "bottomPadding":I
    .local v3, "bottomPadding":I
    :cond_1
    move/from16 v20, v3

    .end local v3    # "bottomPadding":I
    .restart local v20    # "bottomPadding":I
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6888
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/internal/app/ChooserListAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6889
    .local v3, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6890
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6887
    .end local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    nop

    .line 6893
    :goto_2
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    .line 6896
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->measure()V

    .line 6897
    const/4 v10, -0x1

    move-object/from16 v18, v1

    .end local v1    # "iv":Landroid/widget/ImageView;
    .local v18, "iv":Landroid/widget/ImageView;
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v1

    invoke-direct {v0, v3, v10, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6900
    const v1, 0x1020575

    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6901
    .local v1, "emptyTextView":Landroid/widget/TextView;
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6903
    const v10, 0x1020014

    invoke-virtual {v14, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 6904
    .local v10, "tv":Landroid/widget/TextView;
    move-object/from16 v21, v1

    .end local v1    # "emptyTextView":Landroid/widget/TextView;
    .local v21, "emptyTextView":Landroid/widget/TextView;
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6905
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    move-object/from16 v22, v2

    .end local v2    # "iconLabel":Landroid/widget/TextView;
    .local v22, "iconLabel":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/android/internal/app/ChooserActivity;->setSpannableLinkText(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v23, v4

    goto :goto_3

    .line 6906
    .end local v22    # "iconLabel":Landroid/widget/TextView;
    .restart local v2    # "iconLabel":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v22, v2

    .end local v2    # "iconLabel":Landroid/widget/TextView;
    .restart local v22    # "iconLabel":Landroid/widget/TextView;
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6907
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6908
    .local v1, "nearbyShareLabel":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v23, v4

    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v23, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v1, v4, v17

    const-string v17, ""

    const/16 v16, 0x1

    aput-object v17, v4, v16

    move-object/from16 v16, v1

    const v1, 0x1040d18

    .end local v1    # "nearbyShareLabel":Ljava/lang/String;
    .local v16, "nearbyShareLabel":Ljava/lang/String;
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6909
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6910
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v4, 0x1050382

    invoke-virtual {v2, v10, v4}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    goto :goto_3

    .line 6906
    .end local v1    # "text":Ljava/lang/String;
    .end local v16    # "nearbyShareLabel":Ljava/lang/String;
    .end local v23    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move-object/from16 v23, v4

    .line 6913
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v23    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6914
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private blacklist semCreateDeviceGuideLabelView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 6696
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090145

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6697
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020542

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6698
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v3, 0x1050359

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6699
    return-object v0
.end method

.method private blacklist semShouldShowShareLiveDefaultPanel()Z
    .locals 3

    .line 6690
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6691
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6692
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 6690
    :goto_0
    return v1
.end method

.method private blacklist semVisibleItemViewForExif(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;III)V
    .locals 16
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "startType"    # I
    .param p3, "startIndex"    # I
    .param p4, "curIndex"    # I

    .line 6918
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    .line 6919
    .local v4, "exifHolderView":Landroid/view/View;
    if-nez v4, :cond_0

    return-void

    .line 6921
    :cond_0
    const v5, 0x1020582

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 6922
    .local v5, "nearbyLinearLayout":Landroid/widget/LinearLayout;
    const v6, 0x1020583

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 6923
    .local v6, "nearbyProgressView":Landroid/view/View;
    const v7, 0x1020581

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 6924
    .local v7, "nearbyFramelayout":Landroid/widget/FrameLayout;
    const v8, 0x1020552

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 6925
    .local v8, "itemLinearLayout":Landroid/widget/LinearLayout;
    const v9, 0x1020547

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 6926
    .local v9, "itemProgressView":Landroid/view/View;
    const v10, 0x1020615

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 6927
    .local v10, "itemTargetBadge":Landroid/widget/ImageView;
    const v11, 0x1020006

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 6929
    .local v11, "itemIcon":Landroid/widget/ImageView;
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableExifProgress(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v12, :cond_6

    .line 6930
    if-ne v1, v13, :cond_1

    .line 6931
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 6932
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v12

    if-eq v12, v14, :cond_2

    .line 6933
    add-int v12, p3, v2

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v14

    if-ne v12, v14, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_2

    .line 6934
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6935
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 6936
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 6941
    :cond_1
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v12

    if-eq v12, v14, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    .line 6943
    add-int v12, p3, v2

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v14

    if-ne v12, v14, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_2

    .line 6944
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6945
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 6946
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6947
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6952
    :cond_2
    :goto_0
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSelectedNearbyIcon(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v12

    const/high16 v14, 0x3f000000    # 0.5f

    if-eqz v12, :cond_3

    if-eqz v8, :cond_3

    .line 6953
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6954
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_1

    .line 6956
    :cond_3
    if-ne v1, v13, :cond_4

    .line 6957
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    .line 6958
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_8

    .line 6959
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6960
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_1

    .line 6964
    :cond_4
    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    .line 6965
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_5

    .line 6966
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6967
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1

    .line 6969
    :cond_5
    if-eqz v10, :cond_8

    .line 6970
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 6977
    :cond_6
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    if-ne v1, v13, :cond_7

    .line 6978
    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v13

    if-ne v13, v14, :cond_8

    .line 6980
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_8

    .line 6981
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6982
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6983
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 6984
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 6988
    :cond_7
    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    if-eqz v11, :cond_8

    if-eqz v10, :cond_8

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v13

    if-ne v13, v14, :cond_8

    .line 6990
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_8

    .line 6991
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6992
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6993
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 6994
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6995
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7000
    :cond_8
    :goto_1
    return-void
.end method

.method private blacklist setViewBounds(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthPx"    # I
    .param p3, "heightPx"    # I

    .line 6262
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6263
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 6264
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 6265
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 6267
    :cond_0
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6268
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6270
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist bindItemGroupViewHolder(ILcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)V
    .locals 26
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 6370
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 6371
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v3

    .line 6372
    .local v3, "start":I
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v4

    .line 6374
    .local v4, "startType":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v5

    .line 6375
    .local v5, "columnCount":I
    add-int v6, v3, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 6376
    .local v6, "end":I
    :goto_0
    invoke-virtual {v0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v8

    if-eq v8, v4, :cond_0

    if-lt v6, v3, :cond_0

    .line 6377
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 6380
    :cond_0
    const v8, 0x102056c

    const/4 v9, 0x2

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-ne v4, v7, :cond_2

    if-ne v6, v3, :cond_2

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6381
    invoke-virtual {v12, v3}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v12

    instance-of v12, v12, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v12, :cond_2

    .line 6382
    const v12, 0x1020257

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 6384
    .local v12, "textView":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_2

    .line 6386
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 6387
    .local v13, "progressView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_1

    .line 6388
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 6392
    .end local v13    # "progressView":Landroid/view/View;
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6393
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6394
    const v14, 0x10402c5

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 6396
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v15, 0x105036f

    invoke-virtual {v14, v12, v15}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6399
    new-array v14, v9, [F

    fill-array-data v14, :array_0

    const-string v15, "alpha"

    invoke-static {v12, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 6400
    .local v14, "fadeAnim":Landroid/animation/ValueAnimator;
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v15, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6402
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v15}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v8, 0x10500a2

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    .line 6404
    .local v8, "translationInPx":F
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 6405
    new-array v15, v7, [F

    aput v13, v15, v11

    const-string/jumbo v13, "translationY"

    invoke-static {v12, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 6407
    .local v13, "translateAnim":Landroid/animation/ValueAnimator;
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6409
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6410
    .local v10, "animSet":Landroid/animation/AnimatorSet;
    move/from16 v17, v8

    .end local v8    # "translationInPx":F
    .local v17, "translationInPx":F
    const-wide/16 v7, 0xc8

    invoke-virtual {v10, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6411
    invoke-virtual {v10, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 6412
    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v14, v7, v11

    const/4 v8, 0x1

    aput-object v13, v7, v8

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6413
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 6433
    .end local v10    # "animSet":Landroid/animation/AnimatorSet;
    .end local v12    # "textView":Landroid/widget/TextView;
    .end local v13    # "translateAnim":Landroid/animation/ValueAnimator;
    .end local v14    # "fadeAnim":Landroid/animation/ValueAnimator;
    .end local v17    # "translationInPx":F
    :cond_2
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x4

    if-ne v4, v8, :cond_7

    .line 6434
    const v10, 0x102056d

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 6435
    .local v10, "v":Landroid/view/View;
    const v12, 0x102056c

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 6436
    .local v12, "progressView":Landroid/view/View;
    const v13, 0x1020571

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 6438
    .local v13, "shareLiveLayout":Landroid/widget/LinearLayout;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semShouldShowShareLiveDefaultPanel()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 6439
    if-eqz v10, :cond_4

    .line 6440
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 6441
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14, v11}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmEnableShareLiveVI(Lcom/android/internal/app/ChooserActivity;Z)V

    goto :goto_1

    .line 6444
    :cond_3
    if-eqz v10, :cond_4

    .line 6445
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 6446
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmEnableShareLiveVI(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 6450
    :cond_4
    :goto_1
    sget-boolean v14, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    .line 6451
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableExifProgress(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semShouldShowShareLiveDefaultPanel()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 6452
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6453
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSelectedNearbyIcon(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 6454
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6455
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 6457
    :cond_5
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6458
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_2

    .line 6461
    :cond_6
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_7

    .line 6462
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6463
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6464
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 6471
    .end local v10    # "v":Landroid/view/View;
    .end local v12    # "progressView":Landroid/view/View;
    .end local v13    # "shareLiveLayout":Landroid/widget/LinearLayout;
    :cond_7
    :goto_2
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v5, :cond_16

    .line 6472
    invoke-virtual {v1, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    .line 6474
    .local v12, "v":Landroid/view/View;
    add-int v13, v3, v10

    if-gt v13, v6, :cond_14

    .line 6475
    sget-boolean v13, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v13, :cond_13

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableShareLiveVI(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v13

    if-eqz v13, :cond_13

    instance-of v13, v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    if-eqz v13, :cond_13

    .line 6476
    move-object v13, v1

    check-cast v13, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    .line 6477
    .local v13, "dth":Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    add-int v15, v3, v10

    invoke-virtual {v14, v15}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v14

    .line 6478
    .local v14, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v15, v14, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v15, :cond_12

    .line 6479
    move-object/from16 v22, v14

    check-cast v22, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 6480
    .local v22, "sti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    const/16 v23, 0x0

    .line 6482
    .local v23, "isUWB":Z
    if-eqz v23, :cond_9

    .line 6483
    invoke-virtual {v13, v10, v11}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setPointerVisibility(II)V

    .line 6484
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->isUWBFocused()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 6485
    const/4 v15, 0x1

    invoke-virtual {v13, v10, v15}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setFocus(IZ)V

    goto :goto_4

    .line 6487
    :cond_8
    invoke-virtual {v13, v10, v11}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setFocus(IZ)V

    .line 6490
    :goto_4
    iget-boolean v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mGuideLabelAnimDone:Z

    if-nez v15, :cond_a

    .line 6491
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v15}, Lcom/android/internal/app/ChooserActivity;->startGuideLabelAnimation()V

    .line 6492
    const/4 v15, 0x1

    iput-boolean v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mGuideLabelAnimDone:Z

    goto :goto_5

    .line 6495
    :cond_9
    const/16 v15, 0x8

    invoke-virtual {v13, v10, v15}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setPointerVisibility(II)V

    .line 6499
    :cond_a
    :goto_5
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v15}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxDeviceTargetCountForAnim(Lcom/android/internal/app/ChooserActivity;)I

    move-result v15

    if-ge v10, v15, :cond_d

    .line 6500
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareId()Ljava/lang/String;

    move-result-object v15

    .line 6502
    .local v15, "deviceId":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetIds(Lcom/android/internal/app/ChooserActivity;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 6504
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v8

    aput v7, v8, v10

    .line 6505
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v8

    aput-boolean v11, v8, v10

    .line 6506
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetIds(Lcom/android/internal/app/ChooserActivity;)[Ljava/lang/String;

    move-result-object v8

    aput-object v15, v8, v10

    .line 6507
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v8

    aget v8, v8, v10

    invoke-virtual {v13, v10, v11, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setViewVisibilityWithAnimation(IIF)V

    goto :goto_6

    .line 6509
    :cond_b
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v8

    aget-boolean v8, v8, v10

    if-nez v8, :cond_c

    .line 6511
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v8

    aget v8, v8, v10

    invoke-virtual {v13, v10, v11, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setViewVisibilityWithAnimation(IIF)V

    goto :goto_6

    .line 6513
    :cond_c
    invoke-virtual {v1, v10, v11}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 6516
    .end local v15    # "deviceId":Ljava/lang/String;
    :goto_6
    goto :goto_7

    .line 6517
    :cond_d
    invoke-virtual {v1, v10, v11}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 6520
    :goto_7
    move-object v8, v14

    check-cast v8, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareStatus()I

    move-result v8

    .line 6521
    .local v8, "deviceStatus":I
    move-object v15, v14

    check-cast v15, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v15}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareProgress()I

    move-result v15

    .line 6522
    .local v15, "deviceProgress":I
    move-object/from16 v16, v14

    check-cast v16, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareId()Ljava/lang/String;

    move-result-object v7

    .line 6524
    .local v7, "deviceId":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v11}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceItemViewInfo(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;

    .line 6525
    .local v11, "deviceItemViewInfo":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    .line 6526
    iget v9, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    .line 6527
    .local v9, "startProgress":I
    move/from16 v24, v15

    .line 6529
    .local v24, "endProgress":I
    move-object/from16 v25, v14

    move/from16 v14, v24

    .end local v24    # "endProgress":I
    .local v14, "endProgress":I
    .local v25, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-lt v14, v9, :cond_e

    .line 6530
    move-object/from16 v16, v13

    move/from16 v17, v10

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v14

    move/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->startShareStatusAnim(IIIIZ)V

    .line 6532
    .end local v9    # "startProgress":I
    .end local v14    # "endProgress":I
    :cond_e
    move v9, v15

    goto :goto_8

    .line 6533
    .end local v25    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    .local v14, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_f
    move-object/from16 v25, v14

    .end local v14    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    .restart local v25    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    iget v9, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    const/4 v14, 0x2

    if-ne v9, v14, :cond_10

    if-ne v8, v14, :cond_10

    .line 6535
    const/16 v18, 0x7

    move-object/from16 v16, v13

    move/from16 v17, v10

    move/from16 v19, v15

    move/from16 v20, v15

    move/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->startShareStatusAnim(IIIIZ)V

    move v9, v15

    goto :goto_8

    .line 6536
    :cond_10
    iget v9, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    const/4 v14, 0x1

    if-ne v9, v14, :cond_11

    if-ne v8, v14, :cond_11

    .line 6538
    move v9, v15

    .end local v15    # "deviceProgress":I
    .local v9, "deviceProgress":I
    const/16 v18, 0x6

    move-object/from16 v16, v13

    move/from16 v17, v10

    move/from16 v19, v9

    move/from16 v20, v9

    move/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->startShareStatusAnim(IIIIZ)V

    goto :goto_8

    .line 6536
    .end local v9    # "deviceProgress":I
    .restart local v15    # "deviceProgress":I
    :cond_11
    move v9, v15

    .line 6540
    .end local v15    # "deviceProgress":I
    .restart local v9    # "deviceProgress":I
    move-object/from16 v16, v13

    move/from16 v17, v10

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v9

    move/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->startShareStatusAnim(IIIIZ)V

    .line 6544
    :goto_8
    iput-object v7, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceId:Ljava/lang/String;

    .line 6545
    iput v8, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    .line 6546
    iput v9, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    goto :goto_9

    .line 6478
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v8    # "deviceStatus":I
    .end local v9    # "deviceProgress":I
    .end local v11    # "deviceItemViewInfo":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
    .end local v22    # "sti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v23    # "isUWB":Z
    .end local v25    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    .restart local v14    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_12
    move-object/from16 v25, v14

    .line 6548
    .end local v13    # "dth":Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;
    .end local v14    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :goto_9
    const/4 v7, 0x0

    goto :goto_a

    .line 6549
    :cond_13
    const/4 v7, 0x0

    invoke-virtual {v1, v10, v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 6551
    :goto_a
    add-int v8, v3, v10

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setItemIndex(II)V

    .line 6552
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v9

    invoke-virtual {v8, v9, v12}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 6554
    sget-boolean v8, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v8, :cond_15

    .line 6555
    invoke-direct {v0, v1, v4, v3, v10}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semVisibleItemViewForExif(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;III)V

    goto :goto_b

    .line 6558
    :cond_14
    move v7, v11

    const/4 v8, 0x4

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 6559
    sget-boolean v8, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v8, :cond_15

    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableShareLiveVI(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v8

    if-eqz v8, :cond_15

    instance-of v8, v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    if-eqz v8, :cond_15

    .line 6560
    move-object v8, v1

    check-cast v8, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    invoke-virtual {v8, v10}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->hideShareStatusAnim(I)V

    .line 6471
    .end local v12    # "v":Landroid/view/View;
    :cond_15
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move v11, v7

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x4

    const/4 v9, 0x2

    goto/16 :goto_3

    .line 6568
    .end local v10    # "i":I
    :cond_16
    iget-object v7, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 6569
    .local v7, "targetCount":I
    if-lez v7, :cond_19

    iget v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mColumnCount:I

    if-ge v7, v8, :cond_19

    .line 6570
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c
    if-ge v8, v5, :cond_18

    .line 6571
    invoke-virtual {v1, v8}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    .line 6572
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_17

    .line 6573
    const/16 v10, 0x8

    invoke-virtual {v1, v8, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    goto :goto_d

    .line 6572
    :cond_17
    const/16 v10, 0x8

    .line 6570
    .end local v9    # "v":Landroid/view/View;
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 6577
    .end local v8    # "i":I
    :cond_18
    instance-of v8, v2, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_19

    .line 6578
    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 6579
    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    sub-int v9, v6, v3

    const/4 v10, 0x1

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 6584
    .end local v7    # "targetCount":I
    :cond_19
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method blacklist bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    .line 6325
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    .line 6326
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    .line 6327
    .local v1, "listPosition":I
    iput v1, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 6328
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 6330
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v2, :cond_5

    .line 6331
    const v2, 0x1020552

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 6332
    .local v2, "itemLinearLayout":Landroid/widget/LinearLayout;
    const v3, 0x1020547

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 6333
    .local v3, "itemProgressView":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 6334
    .local v4, "itemIcon":Landroid/widget/ImageView;
    const v5, 0x1020615

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 6336
    .local v5, "itemTargetBadge":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableExifProgress(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    .line 6337
    const/4 v6, 0x0

    .line 6338
    .local v6, "exifBindName":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v9, v1}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v9

    .line 6339
    .local v9, "exifTargetInfo":Lcom/android/internal/app/chooser/TargetInfo;
    if-eqz v9, :cond_0

    .line 6340
    invoke-interface {v9}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 6342
    :cond_0
    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 6344
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v10}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSelectedNearbyIcon(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v10}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmAllAppsComponentName(Lcom/android/internal/app/ChooserActivity;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 6345
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_2

    .line 6346
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6347
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 6349
    :cond_2
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6350
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6351
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 6352
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6353
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6356
    .end local v6    # "exifBindName":Landroid/content/ComponentName;
    .end local v9    # "exifTargetInfo":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_3
    :goto_0
    goto :goto_1

    .line 6357
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_5

    .line 6358
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 6359
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6360
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6361
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6362
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6363
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6367
    .end local v2    # "itemLinearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "itemProgressView":Landroid/view/View;
    .end local v4    # "itemIcon":Landroid/widget/ImageView;
    .end local v5    # "itemTargetBadge":Landroid/widget/ImageView;
    :cond_5
    :goto_1
    return-void
.end method

.method public blacklist calculateChooserTargetWidth(I)Z
    .locals 4
    .param p1, "width"    # I

    .line 5948
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5949
    return v0

    .line 5953
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5954
    .local v1, "maxWidth":I
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5956
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    div-int v2, p1, v2

    .line 5957
    .local v2, "newWidth":I
    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    if-eq v2, v3, :cond_1

    .line 5958
    iput v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    .line 5959
    const/4 v0, 0x1

    return v0

    .line 5962
    :cond_1
    return v0
.end method

.method public blacklist consumeLayoutRequest()Z
    .locals 2

    .line 5976
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 5977
    .local v0, "oldValue":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 5978
    return v0
.end method

.method blacklist createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .locals 11
    .param p1, "viewType"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 6273
    const v0, 0x109015b

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 6274
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x109006d

    invoke-virtual {v2, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 6276
    .local v2, "parentGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/ViewGroup;

    .line 6278
    .local v9, "row1":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6280
    .local v0, "row2":Landroid/view/ViewGroup;
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6285
    new-instance v10, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/ViewGroup;

    aput-object v9, v3, v1

    .line 6286
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v6

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 6287
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    move-object v3, v10

    move-object v4, v2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;-><init>(Landroid/view/ViewGroup;Ljava/util/List;IILjava/util/function/Supplier;)V

    iput-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 6288
    invoke-direct {p0, v10}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 6290
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    return-object v1

    .line 6292
    .end local v0    # "row2":Landroid/view/ViewGroup;
    .end local v2    # "parentGroup":Landroid/view/ViewGroup;
    .end local v9    # "row1":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6294
    .local v0, "row":Landroid/view/ViewGroup;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;-><init>(Landroid/view/ViewGroup;II)V

    .line 6296
    .local v1, "holder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 6298
    return-object v1
.end method

.method public blacklist getAzLabelRowCount()I
    .locals 1

    .line 6056
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getCallerAndRankedTargetRowCount()I
    .locals 2

    .line 6038
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6039
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6040
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 6038
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist getFooterRowCount()I
    .locals 1

    .line 6034
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getItemCount()I
    .locals 2

    .line 6061
    nop

    .line 6062
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    .line 6063
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6065
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceGuideLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6066
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6068
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6069
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6070
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6071
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6072
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getFooterRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6061
    return v0
.end method

.method public blacklist getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .line 6135
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    move v1, v0

    .line 6136
    .local v0, "countSum":I
    .local v1, "count":I
    if-lez v1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x2

    return v2

    .line 6138
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6139
    if-lez v1, :cond_1

    if-ge p1, v0, :cond_1

    const/4 v2, 0x3

    return v2

    .line 6141
    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v2, :cond_3

    .line 6142
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceGuideLabelRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6143
    if-lez v1, :cond_2

    if-ge p1, v0, :cond_2

    const/4 v2, 0x7

    return v2

    .line 6145
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6146
    if-lez v1, :cond_3

    if-ge p1, v0, :cond_3

    const/16 v2, 0x8

    return v2

    .line 6149
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6150
    if-lez v1, :cond_4

    if-ge p1, v0, :cond_4

    const/4 v2, 0x0

    return v2

    .line 6152
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6153
    if-lez v1, :cond_5

    if-ge p1, v0, :cond_5

    const/4 v2, 0x5

    return v2

    .line 6155
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6156
    if-lez v1, :cond_6

    if-ge p1, v0, :cond_6

    const/4 v2, 0x4

    return v2

    .line 6158
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_7

    const/4 v2, 0x6

    return v2

    .line 6160
    :cond_7
    return v3
.end method

.method public blacklist getListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .locals 1

    .line 6652
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object v0
.end method

.method blacklist getListPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .line 6587
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 6590
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceGuideLabelRowCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 6592
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    .line 6593
    .local v0, "deviceCount":I
    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 6595
    .local v1, "deviceRows":I
    if-ge p1, v1, :cond_0

    .line 6596
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    mul-int/2addr v2, p1

    return v2

    .line 6599
    :cond_0
    sub-int/2addr p1, v1

    .line 6601
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 6602
    .local v2, "serviceCount":I
    int-to-float v3, v2

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getMaxRankedTargets()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 6603
    .local v3, "serviceRows":I
    if-ge p1, v3, :cond_2

    .line 6604
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v4, :cond_1

    .line 6605
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v4

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    return v4

    .line 6607
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v4

    mul-int/2addr v4, p1

    return v4

    .line 6611
    :cond_2
    sub-int/2addr p1, v3

    .line 6613
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6614
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 6615
    .local v4, "callerAndRankedCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v5

    .line 6616
    .local v5, "callerAndRankedRows":I
    if-ge p1, v5, :cond_4

    .line 6617
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v6, :cond_3

    .line 6618
    add-int v6, v0, v2

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v7

    mul-int/2addr v7, p1

    add-int/2addr v6, v7

    return v6

    .line 6620
    :cond_3
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v6

    mul-int/2addr v6, p1

    add-int/2addr v6, v2

    return v6

    .line 6624
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr p1, v6

    .line 6626
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v6, :cond_5

    .line 6627
    add-int v6, v0, v4

    add-int/2addr v6, v2

    add-int/2addr v6, p1

    return v6

    .line 6629
    :cond_5
    add-int v6, v4, v2

    add-int/2addr v6, p1

    return v6
.end method

.method blacklist getMaxTargetsPerRowLandscape()I
    .locals 1

    .line 6677
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetMAX_TARGETS_PER_ROW_LANDSCAPE(Lcom/android/internal/app/ChooserActivity;)I

    move-result v0

    return v0
.end method

.method blacklist getMaxTargetsPerRowPortrait()I
    .locals 1

    .line 6673
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetMAX_TARGETS_PER_ROW_PORTRAIT(Lcom/android/internal/app/ChooserActivity;)I

    move-result v0

    return v0
.end method

.method public blacklist getProfileRowCount()I
    .locals 2

    .line 6027
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6028
    return v1

    .line 6030
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public blacklist getRowCount()I
    .locals 4

    .line 5982
    nop

    .line 5983
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    .line 5984
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 5986
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceGuideLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 5987
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 5989
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 5990
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 5991
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 5993
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 5992
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 5982
    return v0
.end method

.method blacklist getRowType(I)I
    .locals 3
    .param p1, "rowPosition"    # I

    .line 6310
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    .line 6311
    .local v0, "positionType":I
    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 6312
    return v1

    .line 6317
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 6318
    return v1

    .line 6321
    :cond_1
    return v0
.end method

.method public blacklist getServiceTargetRowCount()I
    .locals 2

    .line 6046
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6047
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6048
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semIsSupportDirectShare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6049
    const/4 v0, 0x1

    return v0

    .line 6051
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSystemRowCount()I
    .locals 3

    .line 6005
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6006
    return v1

    .line 6009
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6010
    return v1

    .line 6013
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6018
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsActivatedShareStar:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mSStarShowPreview:Z

    if-nez v0, :cond_3

    .line 6019
    return v1

    .line 6023
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 6014
    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist getTargetType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 6164
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    return v0
.end method

.method public blacklist handleScroll(Landroid/view/View;II)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "y"    # I
    .param p3, "oldy"    # I

    .line 6634
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    .line 6635
    .local v0, "canExpandDirectShare":Z
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6636
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 6637
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    .line 6636
    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->handleScroll(Lcom/android/internal/widget/RecyclerView;III)V

    .line 6640
    :cond_0
    return-void
.end method

.method public blacklist hideContentPreview()V
    .locals 1

    .line 5971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 5972
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 5973
    return-void
.end method

.method synthetic blacklist lambda$semCreateDeviceTargetViewHolder$1$com-android-internal-app-ChooserActivity$ChooserGridAdapter(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;ILandroid/view/View;)V
    .locals 4
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "column"    # I
    .param p3, "v1"    # Landroid/view/View;

    .line 6733
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v0, :cond_0

    .line 6734
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mExifViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 6736
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1, p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    .line 6737
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 6115
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->getViewType()I

    move-result v0

    .line 6116
    .local v0, "viewType":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 6125
    :sswitch_0
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V

    .line 6126
    goto :goto_0

    .line 6122
    :sswitch_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->bindItemGroupViewHolder(ILcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)V

    .line 6123
    nop

    .line 6129
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 6078
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 6109
    const/4 v0, 0x0

    return-object v0

    .line 6104
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semCreateDeviceTargetViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    move-result-object v0

    return-object v0

    .line 6102
    :pswitch_1
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semCreateDeviceGuideLabelView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 6096
    :pswitch_2
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 6097
    .local v0, "sp":Landroid/widget/Space;
    new-instance v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6099
    new-instance v1, Lcom/android/internal/app/ChooserActivity$FooterViewHolder;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/app/ChooserActivity$FooterViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1

    .line 6088
    .end local v0    # "sp":Landroid/widget/Space;
    :pswitch_3
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 6086
    :pswitch_4
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 6081
    :pswitch_5
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateContentPreviewView(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 6090
    :pswitch_6
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6091
    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    .line 6090
    return-object v0

    .line 6094
    :pswitch_7
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist semCreateDeviceTargetViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .locals 20
    .param p1, "viewType"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 6703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x109015b

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 6705
    .local v1, "chooserRow":Landroid/view/ViewGroup;
    const v2, 0x102056d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 6706
    .local v2, "defaultView":Landroid/view/ViewGroup;
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semCreateDefaultDeviceTargetView(ILandroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 6707
    .local v5, "row1":Landroid/view/ViewGroup;
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6709
    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105035b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 6710
    .local v6, "bottomPadding":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    .line 6711
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 6712
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    .line 6713
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v6

    .line 6710
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 6715
    new-instance v7, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v9

    move/from16 v10, p1

    invoke-direct {v7, v8, v1, v9, v10}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;II)V

    .line 6717
    .local v7, "holder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 6718
    .local v8, "spec":I
    iget v9, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 6720
    .local v9, "exactSpec":I
    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v11

    .line 6722
    .local v11, "columnCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 6723
    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v14, 0x109015d

    .line 6724
    invoke-virtual {v7, v12}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v15

    .line 6723
    invoke-virtual {v13, v14, v15, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 6725
    .local v13, "v":Landroid/view/View;
    new-instance v14, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v14, v13}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6727
    .local v14, "holder2":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v14, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v16, v1

    .end local v1    # "chooserRow":Landroid/view/ViewGroup;
    .local v16, "chooserRow":Landroid/view/ViewGroup;
    const v1, 0x1050469

    invoke-virtual {v15, v3, v1}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6728
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v14, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v15, 0x105046a

    invoke-virtual {v1, v3, v15}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6729
    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6731
    move v1, v12

    .line 6732
    .local v1, "column":I
    new-instance v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v7, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6746
    invoke-virtual {v7, v12, v13}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 6749
    .local v3, "row":Landroid/view/ViewGroup;
    invoke-virtual {v13, v9, v8}, Landroid/view/View;->measure(II)V

    .line 6750
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 6751
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v15, :cond_0

    .line 6752
    move/from16 v17, v1

    .end local v1    # "column":I
    .local v17, "column":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v18, v2

    .end local v2    # "defaultView":Landroid/view/ViewGroup;
    .local v18, "defaultView":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v19, v3

    .end local v3    # "row":Landroid/view/ViewGroup;
    .local v19, "row":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6753
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 6755
    .end local v17    # "column":I
    .end local v18    # "defaultView":Landroid/view/ViewGroup;
    .end local v19    # "row":Landroid/view/ViewGroup;
    .local v1, "column":I
    .restart local v2    # "defaultView":Landroid/view/ViewGroup;
    .restart local v3    # "row":Landroid/view/ViewGroup;
    .restart local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    move/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v1    # "column":I
    .end local v2    # "defaultView":Landroid/view/ViewGroup;
    .end local v3    # "row":Landroid/view/ViewGroup;
    .restart local v17    # "column":I
    .restart local v18    # "defaultView":Landroid/view/ViewGroup;
    .restart local v19    # "row":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6756
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6722
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "holder2":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "column":I
    .end local v19    # "row":Landroid/view/ViewGroup;
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    const/4 v3, 0x0

    goto :goto_0

    .end local v16    # "chooserRow":Landroid/view/ViewGroup;
    .end local v18    # "defaultView":Landroid/view/ViewGroup;
    .local v1, "chooserRow":Landroid/view/ViewGroup;
    .restart local v2    # "defaultView":Landroid/view/ViewGroup;
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    .line 6760
    .end local v1    # "chooserRow":Landroid/view/ViewGroup;
    .end local v2    # "defaultView":Landroid/view/ViewGroup;
    .end local v12    # "i":I
    .restart local v16    # "chooserRow":Landroid/view/ViewGroup;
    .restart local v18    # "defaultView":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 6763
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->measure()V

    .line 6764
    const/4 v2, -0x1

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6766
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6767
    return-object v7
.end method

.method public blacklist semGetDeviceGuideLabelRowCount()I
    .locals 1

    .line 6682
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceTargetRowCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist semGetDeviceTargetRowCount()I
    .locals 2

    .line 6686
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist setFooterHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 5938
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    .line 5939
    return-void
.end method

.method blacklist shouldCellSpan(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 6656
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method blacklist updateDirectShareExpansion()V
    .locals 2

    .line 6660
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6663
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 6664
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 6665
    .local v0, "activeAdapterView":Lcom/android/internal/widget/RecyclerView;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6666
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->collapse(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_0

    .line 6668
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->expand(Lcom/android/internal/widget/RecyclerView;)V

    .line 6670
    :goto_0
    return-void

    .line 6661
    .end local v0    # "activeAdapterView":Lcom/android/internal/widget/RecyclerView;
    :cond_2
    :goto_1
    return-void
.end method
