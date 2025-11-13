.class public Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAppendix:Landroid/view/View;

.field public final mAppendixVisibility:I

.field public mExtraWidget:Landroid/widget/ImageView;

.field public mExtraWidgetContainer:Landroid/view/View;

.field public mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

.field public final mIsCheckBox:Z


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

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->init$5()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->init$5()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    iput-boolean p2, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    invoke-virtual {p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->init$5()V

    return-void
.end method


# virtual methods
.method public final init$5()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mIsCheckBox:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d02cd

    iput v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_0

    :cond_0
    const v0, 0x7f0d02d0

    iput v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    :goto_0
    const v0, 0x7f0d02c9

    iput v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0cd2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a010b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendix:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mAppendixVisibility:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a0aef

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidget:Landroid/widget/ImageView;

    const v0, 0x7f0a0af0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidget:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetContainer:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mExtraWidgetOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onClick()V
    .locals 0

    return-void
.end method
