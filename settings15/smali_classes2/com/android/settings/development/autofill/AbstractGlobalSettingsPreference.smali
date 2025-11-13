.class public abstract Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDefaultValue:I

.field public final mKey:Ljava/lang/String;

.field public final mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    new-instance p2, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    new-instance p3, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;)V

    invoke-direct {p2, p1, p3}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    return-void
.end method


# virtual methods
.method public final onAttached()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->registerDependency()V

    iget-object v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->register()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public final onDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    iget-object v1, v0, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public final onDialogClosed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Error converting \'"

    const-string v2, "\' to integer. Using "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " instead"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AbstractGlobalSettingsPreference"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/development/autofill/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
