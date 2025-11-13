.class public Landroidx/apppickerview/widget/ListAdapter;
.super Landroidx/apppickerview/widget/AbsAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mIsDividerVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/apppickerview/widget/AbsAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    const/4 p0, 0x0

    sput-boolean p0, Landroidx/apppickerview/widget/ListAdapter;->mIsDividerVisible:Z

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x103

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsCustomViewItem:Z

    if-eqz v0, :cond_1

    const/16 p0, -0xa

    return p0

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mIsSeparator:Z

    if-eqz v1, :cond_3

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0x100

    return p0

    :cond_3
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_4

    const/16 p0, 0x102

    return p0

    :cond_4
    const/16 p0, 0x101

    return p0
.end method

.method public final onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V
    .locals 5

    invoke-virtual {p0, p2}, Landroidx/apppickerview/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x103

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/apppickerview/widget/ListAdapter;->getItemViewType(I)I

    move-result p2

    const/16 v0, -0xa

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    iget p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 v0, 0x0

    const-string v1, "accessibility"

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mDividerView:Landroid/view/View;

    if-eqz p2, :cond_3

    sget-boolean v4, Landroidx/apppickerview/widget/ListAdapter;->mIsDividerVisible:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroidx/apppickerview/widget/ListAdapter$1;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, Landroidx/apppickerview/widget/ListAdapter$1;-><init>(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, v3}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/CompoundButton;->setClickable(Z)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroidx/apppickerview/widget/ListAdapter$1;

    const/4 v4, 0x2

    invoke-direct {v2, p1, v4}, Landroidx/apppickerview/widget/ListAdapter$1;-><init>(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Landroidx/apppickerview/widget/ListAdapter$1;

    const/4 v4, 0x1

    invoke-direct {v2, p1, v4}, Landroidx/apppickerview/widget/ListAdapter$1;-><init>(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mActionButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p1, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mLeftContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 9

    const/16 v0, 0x103

    const/16 v1, 0x102

    const/16 v2, 0x100

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d005b

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    const v3, 0x7f0d005a

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    const v3, 0x7f0d005c

    goto :goto_0

    :cond_2
    const v3, 0x7f0d0059

    :goto_0
    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0a1159

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    iget v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const v6, 0x7f0a08ab

    const/4 v7, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f070078

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p1, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v6, 0x7f0d0056

    invoke-virtual {v3, v6, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v6, 0x7f0d0055

    invoke-virtual {v3, v6, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d0054

    invoke-virtual {v4, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d0057

    invoke-virtual {v4, v6, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_3
    :goto_1
    const v3, 0x7f0a1041

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x3fa66666    # 1.3f

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v7, v6, v4

    if-lez v7, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    div-float/2addr v7, v6

    mul-float/2addr v7, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    :goto_2
    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    const v3, 0x7f0a0f81

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v7, v6, v4

    if-lez v7, :cond_6

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    div-float/2addr v7, v6

    mul-float/2addr v7, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    :goto_3
    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_7
    if-ne p2, v2, :cond_8

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_4

    :cond_8
    if-ne p2, v1, :cond_9

    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$FooterViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    if-ne p2, v0, :cond_a

    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    :goto_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/apppickerview/widget/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
