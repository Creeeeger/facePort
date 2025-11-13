.class public final synthetic Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/AccessibilityActivityPreference;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/CharSequence;

.field public final synthetic f$3:Ljava/lang/CharSequence;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityActivityPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/AccessibilityActivityPreference;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$3:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$7:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$8:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/AccessibilityActivityPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$3:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$4:I

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$7:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityActivityPreference$$ExternalSyntheticLambda1;->f$8:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->TARGET_FRAGMENT:Ljava/lang/String;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v7, v8, Lcom/android/settings/accessibility/AccessibilityActivityPreference;->mComponentName:Landroid/content/ComponentName;

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {v8}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v9}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, p0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
