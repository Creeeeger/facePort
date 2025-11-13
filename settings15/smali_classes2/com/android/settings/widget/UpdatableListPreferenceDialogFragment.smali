.class public Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/Instrumentable;


# instance fields
.field public mAdapter:Landroid/widget/ArrayAdapter;

.field public mClickedDialogEntryIndex:I

.field public mEntries:Ljava/util/ArrayList;

.field public mEntryValues:[Ljava/lang/CharSequence;

.field public mMetricsCategory:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mMetricsCategory:I

    return-void
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;
    .locals 3

    new-instance v0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "metrics_category_key"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method public getListPreference()Landroidx/preference/ListPreference;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/ListPreference;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    iget p0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mMetricsCategory:I

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "metrics_category_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mMetricsCategory:I

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getListPreference()Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setPreferenceData(Landroidx/preference/ListPreference;)V

    goto :goto_0

    :cond_0
    const-string v0, "UpdatableListPreferenceDialogFragment.index"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    const-string v0, "UpdatableListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    const-string v0, "UpdatableListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public final onDialogClosed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->getListPreference()Landroidx/preference/ListPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget p0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    aget-object p0, v0, p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/4 v2, 0x0

    const v3, 0x101005d

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x15

    const v5, 0x1090012

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    iget v3, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    new-instance v4, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;)V

    invoke-virtual {p1, v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "UpdatableListPreferenceDialogFragment.index"

    iget v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "UpdatableListPreferenceDialogFragment.entries"

    iget-object v1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "UpdatableListPreferenceDialogFragment.entryValues"

    iget-object p0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method public setEntries(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    return-void
.end method

.method public setMetricsCategory(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "metrics_category_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mMetricsCategory:I

    return-void
.end method

.method public final setPreferenceData(Landroidx/preference/ListPreference;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    iget-object v0, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method
