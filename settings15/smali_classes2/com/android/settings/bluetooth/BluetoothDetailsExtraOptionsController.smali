.class public final Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mOptionsContainer:Landroidx/preference/PreferenceCategory;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bt_extra_options"

    return-object p0
.end method

.method public final init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "bt_extra_options"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;->mOptionsContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;->refresh()V

    return-void
.end method

.method public final refresh()V
    .locals 1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
