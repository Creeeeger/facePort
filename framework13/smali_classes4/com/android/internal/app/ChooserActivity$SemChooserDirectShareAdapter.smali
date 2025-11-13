.class public final Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;
.super Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SemChooserDirectShareAdapter"
.end annotation


# static fields
.field private static final blacklist VIEW_TYPE_DEVICE_TARGET:I = 0x1

.field private static final blacklist VIEW_TYPE_SHORTCUT_TARGET:I = 0x2

.field private static final blacklist VIEW_TYPE_TEXT_DESCRIPTION:I


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 11073
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11074
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    .line 11076
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11083
    return-void
.end method


# virtual methods
.method blacklist bindDeviceItemViewHolder(ILcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11176
    instance-of v0, p2, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    if-eqz v0, :cond_7

    .line 11177
    iget-object v0, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11178
    .local v0, "view":Landroid/view/View;
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    .line 11179
    .local v1, "dth":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->getListPosition(I)I

    move-result v2

    .line 11180
    .local v2, "listPosition":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    .line 11182
    .local v3, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v4, v3, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v4, :cond_6

    .line 11183
    move-object v4, v3

    check-cast v4, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareStatus()I

    move-result v4

    .line 11184
    .local v4, "deviceStatus":I
    move-object v5, v3

    check-cast v5, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareProgress()I

    move-result v5

    .line 11185
    .local v5, "deviceProgress":I
    move-object v6, v3

    check-cast v6, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareId()Ljava/lang/String;

    move-result-object v6

    .line 11187
    .local v6, "deviceId":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetIds(Lcom/android/internal/app/ChooserActivity;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p1

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 11189
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v7

    const/high16 v9, 0x3f000000    # 0.5f

    aput v9, v7, p1

    .line 11190
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v7

    aput-boolean v8, v7, p1

    .line 11191
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetIds(Lcom/android/internal/app/ChooserActivity;)[Ljava/lang/String;

    move-result-object v7

    aput-object v6, v7, p1

    .line 11192
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v7

    aget v7, v7, p1

    invoke-virtual {v1, p1, v8, v7}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->setViewVisibilityWithAnimation(IIF)V

    goto :goto_0

    .line 11194
    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v7

    aget-boolean v7, v7, p1

    if-nez v7, :cond_1

    .line 11196
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v7

    aget v7, v7, p1

    invoke-virtual {v1, p1, v8, v7}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->setViewVisibilityWithAnimation(IIF)V

    goto :goto_0

    .line 11198
    :cond_1
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 11202
    :goto_0
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceItemViewInfo(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;

    .line 11203
    .local v7, "deviceItemViewInfo":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
    const/4 v9, 0x3

    if-ne v4, v9, :cond_3

    .line 11204
    iget v9, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    .line 11205
    .local v9, "startProgress":I
    move v10, v5

    .line 11207
    .local v10, "endProgress":I
    if-lt v10, v9, :cond_2

    .line 11208
    invoke-virtual {v1, v4, v9, v10, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->startShareStatusAnim(IIIZ)V

    .line 11210
    .end local v9    # "startProgress":I
    .end local v10    # "endProgress":I
    :cond_2
    goto :goto_1

    .line 11211
    :cond_3
    iget v9, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    if-ne v4, v10, :cond_4

    .line 11213
    const/4 v9, 0x7

    invoke-virtual {v1, v9, v5, v5, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->startShareStatusAnim(IIIZ)V

    goto :goto_1

    .line 11214
    :cond_4
    iget v9, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    if-ne v4, v10, :cond_5

    .line 11216
    const/4 v9, 0x6

    invoke-virtual {v1, v9, v5, v5, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->startShareStatusAnim(IIIZ)V

    goto :goto_1

    .line 11218
    :cond_5
    invoke-virtual {v1, v4, v5, v5, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->startShareStatusAnim(IIIZ)V

    .line 11222
    :goto_1
    iput-object v6, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceId:Ljava/lang/String;

    .line 11223
    iput v4, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    .line 11224
    iput v5, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    .line 11227
    .end local v4    # "deviceStatus":I
    .end local v5    # "deviceProgress":I
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v7    # "deviceItemViewInfo":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
    :cond_6
    move-object v4, p2

    check-cast v4, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    iput v2, v4, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mListPosition:I

    .line 11228
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 11230
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "dth":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;
    .end local v2    # "listPosition":I
    .end local v3    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_7
    return-void
.end method

.method blacklist bindShortCutItemViewHolder(ILcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11166
    instance-of v0, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    if-eqz v0, :cond_0

    .line 11167
    iget-object v0, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11168
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->getListPosition(I)I

    move-result v1

    .line 11170
    .local v1, "listPosition":I
    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iput v1, v2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 11171
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 11173
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "listPosition":I
    :cond_0
    return-void
.end method

.method public blacklist getItemCount()I
    .locals 2

    .line 11095
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11096
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11097
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semIsSupportDirectShare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11098
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semGetTotalCount()I

    move-result v0

    .line 11099
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 11100
    const/4 v1, 0x1

    return v1

    .line 11102
    :cond_0
    return v0

    .line 11104
    .end local v0    # "count":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .line 11110
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semGetTotalCount()I

    move-result v0

    .line 11111
    .local v0, "count":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11112
    return v1

    .line 11113
    :cond_0
    if-lez v0, :cond_3

    .line 11114
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semDeviceTargetIsEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semServiceTargetIsEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11115
    return v1

    .line 11117
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semDeviceTargetIsEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 11118
    const/4 v1, 0x1

    return v1

    .line 11120
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v2

    .line 11121
    .local v2, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semServiceTargetIsEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v3

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_3

    .line 11122
    const/4 v1, 0x2

    return v1

    .line 11126
    .end local v2    # "offset":I
    :cond_3
    return v1
.end method

.method blacklist getListPosition(I)I
    .locals 0
    .param p1, "position"    # I

    .line 11162
    return p1
.end method

.method public blacklist onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 11087
    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 11089
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mRecyclerViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11090
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108026b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 11089
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 11091
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 11149
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 11150
    .local v0, "viewType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11151
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->bindDeviceItemViewHolder(ILcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 11152
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11153
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->bindShortCutItemViewHolder(ILcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 11155
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 11131
    if-nez p2, :cond_0

    .line 11132
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090146

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 11133
    .local v0, "row":Landroid/view/View;
    const v1, 0x1020257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11134
    .local v1, "tv":Landroid/widget/TextView;
    const v3, 0x10402c5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 11135
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v4, 0x105036f

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 11136
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11137
    new-instance v2, Lcom/android/internal/app/ChooserActivity$SemSimpleTextViewHolder;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/app/ChooserActivity$SemSimpleTextViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    return-object v2

    .line 11138
    .end local v0    # "row":Landroid/view/View;
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 11139
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11140
    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    .line 11139
    return-object v1

    .line 11142
    :cond_1
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11143
    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    .line 11142
    return-object v1
.end method

.method blacklist semDeviceTargetIsEmpty()Z
    .locals 3

    .line 11233
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11234
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11235
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    .line 11233
    :cond_2
    return v1
.end method

.method blacklist semGetTotalCount()I
    .locals 3

    .line 11245
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semDeviceTargetIsEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    .line 11246
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semServiceTargetIsEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 11245
    return v0
.end method

.method blacklist semServiceTargetIsEmpty()Z
    .locals 3

    .line 11239
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11240
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetServiceTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11241
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    .line 11239
    :cond_2
    return v1
.end method

.method public blacklist updateRowDivider()V
    .locals 4

    .line 11250
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_2

    .line 11251
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11252
    .local v0, "makeVisible":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const v2, 0x102057f

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 11253
    .local v1, "dividerView1":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 11254
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11256
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const v3, 0x1020580

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 11257
    .local v2, "dividerView2":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 11258
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11261
    .end local v0    # "makeVisible":I
    .end local v1    # "dividerView1":Landroid/view/View;
    .end local v2    # "dividerView2":Landroid/view/View;
    :cond_2
    return-void
.end method
