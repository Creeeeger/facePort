.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;
.super Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;
    }
.end annotation


# instance fields
.field public final availableShortcutTypes:Ljava/util/Set;

.field public exclusiveTaskFeature:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public languageDialogInfo:Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;

.field public mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field public mContext:Landroid/content/Context;

.field public final mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mWarningDialog:Landroid/app/Dialog;

.field public shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;

.field public shortcutKey:Ljava/lang/String;

.field public final shortcutPreferences:Ljava/util/Map;

.field public final softwareShortcutSettingObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$1;

.field public switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public final typeArray:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

.field public userShortcutType:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->QUICK_SETTINGS:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->SOFTWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->DIRECT:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->HARDWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    sget-object v4, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->TRIPLETAP:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->typeArray:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutPreferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->availableShortcutTypes:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->softwareShortcutSettingObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$1;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final getCandidates()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->availableShortcutTypes:Ljava/util/Set;

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->QUICK_SETTINGS:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportQuickSettings(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;

    iget-object v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->preferenceKey:Ljava/lang/String;

    iget v3, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->titleRes:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->availableShortcutTypes:Ljava/util/Set;

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->SOFTWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->getMode(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->preferenceKey:Ljava/lang/String;

    iget-boolean v5, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->isButton:Z

    if-eqz v5, :cond_2

    const v5, 0x7f1401aa

    goto :goto_0

    :cond_2
    const v5, 0x7f1401a7

    :goto_0
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const v2, 0x7f080e0d

    goto :goto_1

    :cond_3
    const v2, 0x7f080e0f

    goto :goto_1

    :cond_4
    const v2, 0x7f080e0e

    goto :goto_1

    :cond_5
    const v2, 0x7f080e0c

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityButtonShortcutSummary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v4, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;->mSummary:Ljava/lang/CharSequence;

    new-instance v2, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;

    invoke-direct {v2, v4}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->availableShortcutTypes:Ljava/util/Set;

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->DIRECT:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;

    iget-object v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->preferenceKey:Ljava/lang/String;

    iget v3, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->titleRes:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->availableShortcutTypes:Ljava/util/Set;

    sget-object v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->HARDWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;

    iget-object v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->preferenceKey:Ljava/lang/String;

    iget v3, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->titleRes:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->availableShortcutTypes:Ljava/util/Set;

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->TRIPLETAP:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;

    iget-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->preferenceKey:Ljava/lang/String;

    iget v2, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment$DetailCandidateInfo$Builder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isStartStopShortcut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f140176

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f14016d

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/appcompat/util/SeslKoreanGeneralizer;

    invoke-direct {v0}, Landroidx/appcompat/util/SeslKoreanGeneralizer;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    const-string p0, "AccessibilityShortcutEditFragment"

    const-string v0, "context is null. should not happen."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccessibilityShortcutEditFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPrefInstance()Landroidx/preference/CheckBoxPreference;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getPrefInstance()Landroidx/preference/TwoStatePreference;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1401ac

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSwitchBar;->setSessionDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->hasValuesInSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda0;

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/CheckBoxPickerFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    const-string p1, "label_resource_id"

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, ""

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "label"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    :goto_0
    const-string p1, "action"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    const-string p1, "exclusive_feature"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->exclusiveTaskFeature:Ljava/lang/String;

    const-string p1, "defaultType"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {p1, v1, v2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->availableShortcutTypes:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->typeArray:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    iget-object v4, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->argumentKey:Ljava/lang/String;

    iget-boolean v5, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->argumentDefault:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->availableShortcutTypes:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;-><init>(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->languageDialogInfo:Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;

    :cond_5
    :goto_2
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->optInAllValuesToSettings(Landroid/content/Context;ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateCheckEnableStatus(Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->optOutAllValuesFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateCheckEnableStatus(Z)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->optInAllValuesToSettings(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->optOutAllValuesFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, v1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateCheckEnableStatus(Z)V

    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_INTERACTION_CONTROL_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->$r8$clinit:I

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->$r8$clinit:I

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;

    goto :goto_0

    :cond_1
    const-string p1, "com.android.server.accessibility.MagnificationController"

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->$r8$clinit:I

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1401ac

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_2

    const/16 v0, 0x232a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x232c

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->languageDialogInfo:Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;I)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createTTSLanguageCheckDialog(Landroid/content/Context;Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->exclusiveTaskFeature:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;I)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createExclusiveDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/samsung/android/settings/accessibility/dialog/AccessibilityDialogActivity$$ExternalSyntheticLambda3;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->createAccessibilityServiceWarningDialog(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mWarningDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/TwoStateCandidateListFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->typeArray:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    iget-object v3, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    if-eqz v3, :cond_0

    iput-object v2, v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->type:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutPreferences:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070845

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0702c8

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    add-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0710b7

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-direct {v1, p0, p3, p2}, Lcom/samsung/android/settings/accessibility/base/widget/DividerItemDecorator;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->softwareShortcutSettingObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f1401b0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->type:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    iget p1, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->shortcutType:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object v2, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->type:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    iget v2, v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->shortcutType:I

    not-int v3, v2

    and-int/2addr v3, p2

    if-nez v3, :cond_2

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f1401b9

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_2
    not-int p1, v2

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    :goto_0
    iget p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    if-eqz p1, :cond_3

    new-instance p1, Lcom/android/settings/accessibility/PreferredShortcut;

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    invoke-direct {p1, p2, v1}, Lcom/android/settings/accessibility/PreferredShortcut;-><init>(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settings/accessibility/PreferredShortcuts;->saveUserShortcutType(Landroid/content/Context;Lcom/android/settings/accessibility/PreferredShortcut;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->setShortcutState()V

    return v0

    :cond_4
    :goto_1
    const-string p0, "AccessibilityShortcutEditFragment"

    const-string p1, "Invalid instance."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->hasValuesInSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->needTalkbackDefaultShortcut(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/16 v0, 0x202

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateCheckEnableStatus(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->typeArray:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutPreferences:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    if-eqz v6, :cond_1

    iget v7, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget v5, v5, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->shortcutType:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    invoke-virtual {v6, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateCheckEnableStatus(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateState$4()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->register(Landroid/content/ContentResolver;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->softwareShortcutSettingObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$1;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_targets"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->softwareShortcutSettingObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$1;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->softwareShortcutSettingObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$1;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final setShortcutState()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->optInAllValuesToSettings(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    not-int v1, v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->optOutAllValuesFromSettings(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final showPopupDialog$1(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mIsDialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    new-instance p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public final updateCheckEnableStatus(Z)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutPreferences:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateSoftwareShortcutPreference(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;Landroid/content/Context;)V
    .locals 4

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonGestureUtil;->getMode(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    move-result-object v0

    iget-boolean v1, v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->isButton:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1401aa

    goto :goto_0

    :cond_0
    const v1, 0x7f1401a7

    :goto_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilityButtonShortcutSummary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;->NAVIGATION_BAR_BUTTON:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityButtonMode;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->label:Ljava/lang/String;

    const v1, 0x7f140160

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f140175

    invoke-virtual {p2, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-boolean v2, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->isSummaryDescriptionSet:Z

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->summaryDescription:Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p0, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->summaryDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->summaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-boolean v3, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;->isSummaryDescriptionSet:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const p0, 0x7f080e0d

    goto :goto_1

    :cond_2
    const p0, 0x7f080e0f

    goto :goto_1

    :cond_3
    const p0, 0x7f080e0e

    goto :goto_1

    :cond_4
    const p0, 0x7f080e0c

    :goto_1
    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateState$4()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->typeArray:[Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutPreferences:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    if-eqz v6, :cond_1

    iget v7, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->userShortcutType:I

    iget v5, v5, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->shortcutType:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    invoke-virtual {v6, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->shortcutPreferences:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;->SOFTWARE:Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreferenceType;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->updateSoftwareShortcutPreference(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;Landroid/content/Context;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment$ShortcutEditPreference;Landroid/content/Context;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/AccessibilityShortcutEditFragment;->setShortcutState()V

    return-void
.end method
