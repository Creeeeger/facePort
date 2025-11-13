.class public final Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final mRepeatCallersThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;I)V
    .locals 1

    const-string v0, "zen_mode_repeat_callers"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    iput p3, p0, Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->savePolicy(Ljava/util/function/Function;)Z

    move-result p0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result p2

    if-ne p2, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/notification/modes/ZenModeRepeatCallersPreferenceController;->mRepeatCallersThreshold:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f1438b6

    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
