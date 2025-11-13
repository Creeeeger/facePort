.class public final synthetic Lcom/android/settings/accessibility/HearingAidHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/HearingAidHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/HearingAidHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/HearingAidHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/HearingAidHelper;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAidHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/HearingAidHelper;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAidHelper;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isSubDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
