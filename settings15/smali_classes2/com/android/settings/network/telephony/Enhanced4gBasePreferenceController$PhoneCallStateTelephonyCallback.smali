.class public final Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->-$$Nest$fputmCallState(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    iget-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
