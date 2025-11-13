.class public Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mHelpResource:I

.field private mIntroductionTitle:Ljava/lang/String;

.field private mLearnMoreText:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$tzVPi3mA3vOUnhk7PHj1mDkLv8o(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->lambda$updateFooterPreferences$0(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateFooterPreferences$0(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateFooterPreferences(Lcom/android/settings/accessibility/AccessibilityFooterPreference;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->getIntroductionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->getHelpResource()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->getHelpResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->getLearnMoreText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    iget-boolean p0, p1, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    iput-boolean v0, p1, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_1

    :cond_1
    iget-boolean p0, p1, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    if-eqz p0, :cond_2

    iput-boolean v1, p1, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->updateFooterPreferences(Lcom/android/settings/accessibility/AccessibilityFooterPreference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    iget p0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mHelpResource:I

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntroductionTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mIntroductionTitle:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLearnMoreText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mLearnMoreText:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setIntroductionTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mIntroductionTitle:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setupHelpLink(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mHelpResource:I

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mLearnMoreText:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
