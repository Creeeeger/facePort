.class public Landroidx/preference/SeslSwitchPreferenceScreen;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "SeslSwitchPreferenceScreen.java"


# instance fields
.field private mSwitchKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 84
    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    new-instance v0, Landroidx/preference/SeslSwitchPreferenceScreen$1;

    invoke-direct {v0, p0}, Landroidx/preference/SeslSwitchPreferenceScreen$1;-><init>(Landroidx/preference/SeslSwitchPreferenceScreen;)V

    iput-object v0, p0, Landroidx/preference/SeslSwitchPreferenceScreen;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    .line 50
    sget-object v0, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 53
    sget p1, Landroidx/preference/R$styleable;->Preference_android_fragment:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p3, ""

    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "SwitchPreferenceScreen"

    const-string p3, "SwitchPreferenceScreen should getfragment property. Fragment property does not exsit in SwitchPreferenceScreen"

    .line 55
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    sget p1, Landroidx/preference/R$layout;->sesl_preference_switch_screen:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 60
    sget p1, Landroidx/preference/R$layout;->sesl_switch_preference_screen_widget_divider:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 61
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method callClickListener()V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 141
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 142
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Landroidx/preference/SeslSwitchPreferenceScreen;->mSwitchKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p0, 0x1020016

    .line 144
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x1020040

    .line 145
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    sget v1, Landroidx/preference/R$id;->switch_widget:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 148
    invoke-static {}, Landroidx/reflect/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/reflect/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 149
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method
