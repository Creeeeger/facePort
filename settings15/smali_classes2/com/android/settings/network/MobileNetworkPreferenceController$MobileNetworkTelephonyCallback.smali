.class public final Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$MobileNetworkTelephonyCallback;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
