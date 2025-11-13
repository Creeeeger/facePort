.class public Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;
    }
.end annotation


# instance fields
.field private mOnItemSelectedListener:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;

.field mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

.field mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

.field private final mStorageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/storage/StorageEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    new-instance p2, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-direct {p2, p1}, Lcom/android/settingslib/widget/SettingsSpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    iput-object v0, p1, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mAdapter:Lcom/android/settingslib/widget/SettingsSpinnerAdapter;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iput-object p0, p1, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

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

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mOnItemSelectedListener:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iget-object p2, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mAdapter:Lcom/android/settingslib/widget/SettingsSpinnerAdapter;

    if-nez p2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    invoke-virtual {p2, p0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/android/settings/deviceinfo/storage/StorageEntry;

    invoke-interface {p1, p0}, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;->onItemSelected(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOnItemSelectedListener(Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mOnItemSelectedListener:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$OnItemSelectedListener;

    return-void
.end method

.method public setSelectedStorageEntry(Lcom/android/settings/deviceinfo/storage/StorageEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p0

    iget p1, v0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    iput p0, v0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setStorageEntries(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/storage/StorageEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mSpinnerPreference:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController;->mStorageAdapter:Lcom/android/settings/deviceinfo/storage/StorageSelectionPreferenceController$StorageAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
