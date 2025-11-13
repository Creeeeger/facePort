.class public final Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController$1;->this$0:Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController$1;->this$0:Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroidx/preference/Preference;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractBluetoothAddressPreferenceController;->mBtAddress:Landroidx/preference/Preference;

    const p1, 0x7f142d54

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
