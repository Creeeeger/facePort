.class public final synthetic Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/AccessibilityServicePreference;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/CharSequence;

.field public final synthetic f$3:Ljava/lang/CharSequence;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$7:Landroid/content/pm/ResolveInfo;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityServicePreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/AccessibilityServicePreference;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$3:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$7:Landroid/content/pm/ResolveInfo;

    iput-object p8, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$8:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$9:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/accessibility/AccessibilityServicePreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$3:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$4:I

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$7:Landroid/content/pm/ResolveInfo;

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$8:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityServicePreference$$ExternalSyntheticLambda1;->f$9:Ljava/lang/String;

    sget v0, Lcom/android/settings/accessibility/AccessibilityServicePreference;->$r8$clinit:I

    invoke-virtual {v8}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v7, v8, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mComponentName:Landroid/content/ComponentName;

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    iget-boolean v0, v8, Lcom/android/settings/accessibility/AccessibilityServicePreference;->mServiceEnabled:Z

    invoke-virtual {v8}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "resolve_info"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v8}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v10}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, p0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
