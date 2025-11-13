.class public final Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
