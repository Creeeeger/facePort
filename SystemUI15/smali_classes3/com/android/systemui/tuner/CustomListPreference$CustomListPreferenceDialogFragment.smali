.class public final Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mClickedDialogEntryIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/CustomListPreference;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogStateRestored(Landroid/app/Dialog;)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "settings.CustomListPrefDialog.KEY_CLICKED_ENTRY_INDEX"

    iget v2, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/CustomListPreference;

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogCreated(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public final onDialogClosed(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/CustomListPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/CustomListPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/CustomListPreference;

    iget p0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz p0, :cond_0

    iget-object v1, v1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    aget-object p0, v1, p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/CustomListPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/CustomListPreference;

    iget-object v0, v0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/CustomListPreference;

    new-instance v0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;-><init>(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/CustomListPreference;->onPrepareDialogBuilder(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/CustomListPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "settings.CustomListPrefDialog.KEY_CLICKED_ENTRY_INDEX"

    iget p0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
