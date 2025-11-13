.class public final Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$PhoneCallStateTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 1

    const-string p1, "SecMobileDataPreferenceController"

    const-string/jumbo v0, "onCallStateChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;->-$$Nest$fgetmSecSwitchPreference(Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/SecMobileDataPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
