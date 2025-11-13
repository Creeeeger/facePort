.class public Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActionButton:Landroid/widget/ImageButton;

.field public final mAppIcon:Landroid/widget/ImageView;

.field public final mAppIconContainer:Landroid/view/ViewGroup;

.field public final mAppName:Landroid/widget/TextView;

.field public final mCheckBox:Landroid/widget/CheckBox;

.field public final mDividerView:Landroid/view/View;

.field public final mLeftContainer:Landroid/view/ViewGroup;

.field public final mRadioButton:Landroid/widget/RadioButton;

.field public final mSummary:Landroid/widget/TextView;

.field public final mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public final mTitleContainer:Landroid/view/ViewGroup;

.field public final mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x7f0a0797

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a07a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mAppIconContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a104b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mTitleContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0f81

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f0a08ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mLeftContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0a0c39

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const v0, 0x7f0a1159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a0f9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f0a0f9d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mDividerView:Landroid/view/View;

    const v0, 0x7f0a07ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->mActionButton:Landroid/widget/ImageButton;

    return-void
.end method
