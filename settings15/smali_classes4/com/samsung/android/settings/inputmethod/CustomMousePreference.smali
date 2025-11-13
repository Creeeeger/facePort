.class public abstract Lcom/samsung/android/settings/inputmethod/CustomMousePreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;
.implements Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMouseButtonSAConstantValue:I

.field public mMouseButtonType:I

.field public mMouseButtonValue:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonSAConstantValue:I

    return-void
.end method


# virtual methods
.method public abstract getButtonType()I
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getButtonType()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/inputmethod/InputMethodUtils;->HOME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/inputmethod/InputMethodUtils;->HOME_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "get_home_mode"

    const-string v4, "home_mode"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "home_only_mode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonValue:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    new-instance v4, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonValue:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonValue:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/samsung/android/settings/inputmethod/InputMethodUtils;->getMouseButtonFeatureTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-ne v6, p1, :cond_1

    move v7, v0

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    invoke-virtual {v4, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v1, :cond_2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iput-boolean v2, v4, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    :cond_2
    iput-object p0, v4, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

    const/16 v7, 0xa

    if-lt v6, v7, :cond_3

    iput-object p0, v4, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;

    invoke-virtual {v4}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->setOpenAppSummary(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    :cond_3
    if-lt p1, v7, :cond_4

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    iput-boolean v6, v4, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/2addr v3, v0

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getButtonType()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getButtonType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getButtonType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget v1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonSAConstantValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getMetricsCategory()I

    move-result v1

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonSAConstantValue:I

    invoke-static {v1, p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onGearClick()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "mouseButtonType"

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 v0, 0x0

    const v2, 0x7f142628

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->getMetricsCategory()I

    move-result p0

    iput p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 7

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->setButtonType(I)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    iput-boolean v3, v2, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionDBKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->onGearClick()V

    goto :goto_1

    :cond_0
    const/16 v4, 0x2f

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v4, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "package_name = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  activity_name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-static {v3, v5, v2}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->setKeyCustomizationInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iput-boolean v0, v2, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    iget v2, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->releaseKeyCustomizationInfo(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->setOpenAppSummary(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070dd7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070dd9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070dd6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    add-float/2addr p1, p2

    float-to-int v3, p1

    new-instance p1, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080a92

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    const v4, 0x1020018

    const v5, 0x1020001

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public abstract setButtonType(I)V
.end method

.method public final setOpenAppSummary(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/inputmethod/CustomMousePreference;->mMouseButtonType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mDB:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mIsEnabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f141528

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p0, v0, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo$MouseFunctionKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    :goto_0
    const p0, 0x7f141527

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_4
    :goto_1
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mIsSummaryColorPrimaryDark:Z

    invoke-static {p1, p0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    return-void
.end method
