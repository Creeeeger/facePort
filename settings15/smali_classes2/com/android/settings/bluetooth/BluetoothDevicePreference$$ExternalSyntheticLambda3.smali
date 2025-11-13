.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/util/Pair;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$3:Landroid/util/Pair;

    iput-boolean p5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$4:Z

    iput-boolean p6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$3:Landroid/util/Pair;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$4:Z

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$$ExternalSyntheticLambda3;->f$5:Z

    sget v5, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    xor-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-boolean p0, v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mNeedNotifyHierarchyChanged:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method
