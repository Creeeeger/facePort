.class public final synthetic Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    sget-object p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->appInfoHidePackages:Ljava/util/HashSet;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getShortcutTypeSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
