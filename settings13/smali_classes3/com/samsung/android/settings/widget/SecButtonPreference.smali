.class public Lcom/samsung/android/settings/widget/SecButtonPreference;
.super Landroidx/preference/Preference;
.source "SecButtonPreference.java"


# instance fields
.field private mButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field private mButtonBackGroundRes:I

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mButtonTextColor:I

.field private mContext:Landroid/content/Context;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->initButtonLayout()V

    .line 43
    sget-object p4, Lcom/android/settings/R$styleable;->SecButtonPreferenceStyle:[I

    sget v0, Lcom/android/settings/R$style;->ColorRoundButtonStyle:I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 44
    sget p3, Lcom/android/settings/R$styleable;->SecButtonPreferenceStyle_buttonBackground:I

    sget p4, Lcom/android/settings/R$drawable;->sec_widget_color_round_button_background:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonBackGroundRes:I

    .line 45
    sget p3, Lcom/android/settings/R$styleable;->SecButtonPreferenceStyle_buttonTextColor:I

    sget p4, Lcom/android/settings/R$color;->sec_widget_color_round_button_text_color:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonTextColor:I

    .line 46
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    sget p1, Lcom/android/settings/R$layout;->sec_button_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private initButtonLayout()V
    .locals 1

    const/16 v0, 0xf

    .line 51
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public getContainerView()Landroid/view/View;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 59
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 60
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 61
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 63
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->button_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    .line 64
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget v0, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonBackGroundRes:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget v0, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setButtonBackGroundResource(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonBackGroundRes:I

    return-void
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonTextColor:I

    return-void
.end method

.method public setDefaultRoundButtonStyle()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    sget v1, Lcom/android/settings/R$drawable;->sec_widget_default_round_button_background:I

    iput v1, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonBackGroundRes:I

    .line 95
    sget v1, Lcom/android/settings/R$color;->sec_widget_default_round_button_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mButtonTextColor:I

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
