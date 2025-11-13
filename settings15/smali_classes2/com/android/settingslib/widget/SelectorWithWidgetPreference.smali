.class public Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppendix:Landroid/view/View;

.field public mAppendixVisibility:I

.field public mExtraWidget:Landroid/widget/ImageView;

.field public mExtraWidgetContainer:Landroid/view/View;

.field public mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

.field public final mIsCheckBox:Z

.field public mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->init$9$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    iput-boolean v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->init$9$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    iput-boolean p2, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->init$9$1()V

    return-void
.end method


# virtual methods
.method public final init$9$1()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0539

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0546

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    :goto_0
    const v0, 0x7f0d052b

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0f87

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0125

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendix:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a0daa

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f0a0dab

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V

    :cond_0
    return-void
.end method

.method public final setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetContainer:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetContainer:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
