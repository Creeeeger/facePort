.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v1, v0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;->mOptionsContainer:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    iget-object v3, v0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;->mOptionsContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v2, "bt_extra_options"

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
