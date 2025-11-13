.class Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController$2;
.super Lcom/android/settings/notification/SettingPref;
.source "SecEmergencyTonePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 6

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController$2;->this$0:Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    .line 102
    sget p0, Lcom/android/settings/R$string;->sec_emergency_tone_alert:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 100
    :cond_1
    sget p0, Lcom/android/settings/R$string;->sec_emergency_tone_silent:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 88
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController$2;->this$0:Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;->access$100(Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    .line 93
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
