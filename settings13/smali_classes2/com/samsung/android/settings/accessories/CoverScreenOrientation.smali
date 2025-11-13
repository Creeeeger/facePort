.class public Lcom/samsung/android/settings/accessories/CoverScreenOrientation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CoverScreenOrientation.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBottomToTopButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mCoverScreenOrientationPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mImageContainer:Landroid/widget/LinearLayout;

.field private mModeState:I

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mTopToBottomButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "cover_screen_orientation_preview"

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mCoverScreenOrientationPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v0, "top_to_bottom_button"

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mTopToBottomButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v0, "bottom_to_top_button"

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mBottomToTopButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mTopToBottomButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mBottomToTopButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mCoverScreenOrientationPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->preview_image_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mImageContainer:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mCoverScreenOrientationPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->preview_image:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mPreviewImageView:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mImageContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mImageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private setPreviewImage(I)V
    .locals 2

    .line 155
    sget v0, Lcom/android/settings/R$drawable;->sec_help_top_to_bottom:I

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->sec_help_bottom_to_top:I

    .line 165
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setRadioButtonState(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mTopToBottomButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mBottomToTopButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    :goto_0
    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mTopToBottomButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    const-string v1, "cover_text_direction"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    .line 132
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 133
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mBottomToTopButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    iput v2, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mModeState:I

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mBottomToTopButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 137
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mTopToBottomButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    iput v3, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mModeState:I

    .line 142
    :cond_1
    :goto_0
    iget p1, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mModeState:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->setPreviewImage(I)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onCheckedChanged mModeState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mModeState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverScreenOrientation"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x41e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 72
    sget p0, Lcom/android/settings/R$xml;->sec_cover_screen_orientation_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->initView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CoverScreenOrientation"

    const-string/jumbo v1, "onCreate"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->initPreference()V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 1

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->updateRadioButtons(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->getMetricsCategory()I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mTopToBottomButton:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1000"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const/16 p1, 0x41f

    invoke-static {v0, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_text_direction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->mModeState:I

    .line 104
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessories/CoverScreenOrientation;->setRadioButtonState(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 90
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_checkbox_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 95
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 97
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
