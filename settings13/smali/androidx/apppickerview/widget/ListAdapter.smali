.class Landroidx/apppickerview/widget/ListAdapter;
.super Landroidx/apppickerview/widget/AbsAdapter;
.source "ListAdapter.java"


# static fields
.field private static mIsDividerVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p5}, Landroidx/apppickerview/widget/AbsAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V

    .line 45
    sput-boolean p5, Landroidx/apppickerview/widget/ListAdapter;->mIsDividerVisible:Z

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    .line 184
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->isSeparator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x103

    return p0

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->isCustomViewItem()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, -0xa

    return p0

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->isSeparator()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0x100

    return p0

    .line 192
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

.method onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 3

    .line 50
    invoke-virtual {p0, p2}, Landroidx/apppickerview/widget/ListAdapter;->getItemViewType(I)I

    move-result p3

    const/16 v0, 0x103

    if-ne p3, v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/apppickerview/widget/ListAdapter;->getItemViewType(I)I

    move-result p2

    const/16 p3, -0xa

    if-ne p2, p3, :cond_1

    return-void

    .line 57
    :cond_1
    iget p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 p3, 0x0

    const-string v0, "accessibility"

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 64
    :pswitch_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getLeftConatiner()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getDividerView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 68
    sget-boolean p2, Landroidx/apppickerview/widget/ListAdapter;->mIsDividerVisible:Z

    if-eqz p2, :cond_2

    .line 69
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getDividerView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getDividerView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroidx/apppickerview/widget/ListAdapter$1;

    invoke-direct {v1, p0, p1}, Landroidx/apppickerview/widget/ListAdapter$1;-><init>(Landroidx/apppickerview/widget/ListAdapter;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 83
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 84
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 85
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 109
    :pswitch_1
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getLeftConatiner()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 111
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroidx/apppickerview/widget/ListAdapter$3;

    invoke-direct {v1, p0, p1}, Landroidx/apppickerview/widget/ListAdapter$3;-><init>(Landroidx/apppickerview/widget/ListAdapter;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 118
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 119
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 120
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 94
    :pswitch_2
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getLeftConatiner()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 96
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroidx/apppickerview/widget/ListAdapter$2;

    invoke-direct {v1, p0, p1}, Landroidx/apppickerview/widget/ListAdapter$2;-><init>(Landroidx/apppickerview/widget/ListAdapter;Landroidx/apppickerview/widget/AppPickerView$ViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 103
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 104
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 105
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getItem()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :pswitch_3
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 90
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getActionButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 59
    :pswitch_4
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getWidgetContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 60
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getLeftConatiner()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void

    nop

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
    .locals 8

    .line 128
    sget v0, Landroidx/apppickerview/R$layout;->app_picker_list:I

    const/16 v1, 0x103

    const/16 v2, 0x102

    const/16 v3, 0x100

    if-ne p2, v3, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    sget v0, Landroidx/apppickerview/R$layout;->app_picker_list_header:I

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    .line 132
    sget v0, Landroidx/apppickerview/R$layout;->app_picker_list_footer:I

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 134
    sget v0, Landroidx/apppickerview/R$layout;->app_picker_list_separator:I

    .line 137
    :cond_2
    :goto_0
    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 138
    sget v0, Landroidx/apppickerview/R$id;->widget_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 140
    iget v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 157
    :pswitch_0
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Landroidx/apppickerview/R$dimen;->app_picker_list_radio_padding_start:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Landroidx/apppickerview/R$dimen;->app_picker_list_padding_end:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 157
    invoke-virtual {p1, v0, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 161
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Landroidx/apppickerview/R$layout;->app_picker_frame_radiobutton:I

    sget v5, Landroidx/apppickerview/R$id;->left_frame:I

    .line 162
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 161
    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 153
    :pswitch_1
    iget-object v0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Landroidx/apppickerview/R$layout;->app_picker_frame_checkbox:I

    sget v5, Landroidx/apppickerview/R$id;->left_frame:I

    .line 154
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 153
    invoke-virtual {v0, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 148
    :pswitch_2
    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroidx/apppickerview/R$layout;->app_picker_frame_actionbutton:I

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 144
    :pswitch_3
    iget-object v4, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroidx/apppickerview/R$layout;->app_picker_frame_switch:I

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 166
    :cond_3
    :goto_1
    sget v0, Landroidx/apppickerview/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontLarge(Landroid/widget/TextView;)V

    .line 167
    sget v0, Landroidx/apppickerview/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontLarge(Landroid/widget/TextView;)V

    if-ne p2, v3, :cond_4

    .line 170
    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->hasAllAppsInList()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 171
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    if-ne p2, v2, :cond_5

    .line 173
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$FooterViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$FooterViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    if-ne p2, v1, :cond_6

    .line 175
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    .line 177
    :cond_6
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    :goto_2
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

    .line 34
    invoke-virtual {p0, p1, p2}, Landroidx/apppickerview/widget/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
