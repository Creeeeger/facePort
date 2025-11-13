.class public Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AppPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mActionButton:Landroid/widget/ImageButton;

.field private final mAppIcon:Landroid/widget/ImageView;

.field private final mAppIconContainer:Landroid/view/ViewGroup;

.field private final mAppName:Landroid/widget/TextView;

.field private final mCheckBox:Landroid/widget/CheckBox;

.field private final mDividerView:Landroid/view/View;

.field private final mLeftContainer:Landroid/view/ViewGroup;

.field private final mRadioButton:Landroid/widget/RadioButton;

.field private final mSummary:Landroid/widget/TextView;

.field private final mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private final mTitleContainer:Landroid/view/ViewGroup;

.field private final mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 680
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 682
    sget v0, Landroidx/apppickerview/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    .line 683
    sget v0, Landroidx/apppickerview/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    .line 684
    sget v0, Landroidx/apppickerview/R$id;->icon_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    .line 685
    sget v0, Landroidx/apppickerview/R$id;->title_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mTitleContainer:Landroid/view/ViewGroup;

    .line 686
    sget v0, Landroidx/apppickerview/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    .line 688
    sget v0, Landroidx/apppickerview/R$id;->left_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mLeftContainer:Landroid/view/ViewGroup;

    .line 689
    sget v0, Landroidx/apppickerview/R$id;->check_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 690
    sget v0, Landroidx/apppickerview/R$id;->radio_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    .line 692
    sget v0, Landroidx/apppickerview/R$id;->widget_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 693
    sget v0, Landroidx/apppickerview/R$id;->switch_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 694
    sget v0, Landroidx/apppickerview/R$id;->switch_divider_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mDividerView:Landroid/view/View;

    .line 695
    sget v0, Landroidx/apppickerview/R$id;->image_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mActionButton:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public getActionButton()Landroid/widget/ImageButton;
    .locals 0

    .line 742
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mActionButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getAppIcon()Landroid/widget/ImageView;
    .locals 0

    .line 703
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getAppIconContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 707
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getAppLabel()Landroid/widget/TextView;
    .locals 0

    .line 699
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    return-object p0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 0

    .line 723
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getDividerView()Landroid/view/View;
    .locals 0

    .line 738
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mDividerView:Landroid/view/View;

    return-object p0
.end method

.method public getItem()Landroid/view/View;
    .locals 0

    .line 746
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public getLeftConatiner()Landroid/view/View;
    .locals 0

    .line 719
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mLeftContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getRadioButton()Landroid/widget/RadioButton;
    .locals 0

    .line 727
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public getSummary()Landroid/widget/TextView;
    .locals 0

    .line 715
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method public getSwitch()Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    .line 735
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method public getWidgetContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 731
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    return-object p0
.end method
