.class public final synthetic Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    iput p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    iget p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda2;->f$1:I

    const/16 p2, 0x232a

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    iput-boolean v0, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->isFromExclusive:Z

    iget-object p0, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    iget-object p0, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->appInfoHidePackages:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    iget-object p2, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/android/settings/accessibility/PreferredShortcuts;->retrieveUserShortcutType(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x2328

    invoke-virtual {p1, p0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p2, p0, v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V

    iget-object p0, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
