.class public Lcom/android/settings/accessibility/ShortcutPreference;
.super Landroidx/preference/SeslSwitchPreferenceScreen;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

.field public mComponentName:Landroid/content/ComponentName;

.field public mExclusiveTaskName:Ljava/lang/String;

.field public mLabel:Ljava/lang/CharSequence;

.field public mResourceId:I

.field public mSettingsEditable:Z


# direct methods
.method public static $r8$lambda$GJxRQNj-ouFQnP0B6fRjFwWpZyg(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;->onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SeslSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mClickCallback:Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mResourceId:I

    const v0, 0x7f060af9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public final isChecked()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    return p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/preference/SeslSwitchPreferenceScreen;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mComponentName:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "action"

    if-eqz v1, :cond_0

    const-string v1, "isSupportTriple"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "defaultType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mExclusiveTaskName:Ljava/lang/String;

    const-string v3, "exclusive_feature"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "label"

    iget-object v3, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "label_resource_id"

    iget v3, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mResourceId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v3, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iput v2, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    new-instance v0, Lcom/android/settings/accessibility/ShortcutPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ShortcutPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/ShortcutPreference;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/settings/accessibility/ShortcutPreference;->mSettingsEditable:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
