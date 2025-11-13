.class public final Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;
.super Lcom/android/settings/notification/SettingPref;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;[II)V
    .locals 6

    iput p3, p0, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;

    const/4 v1, 0x1

    const-string v2, "emergency_tone"

    const-string v3, "emergency_tone"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method public final getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    const p0, 0x7f142357

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p0, 0x7f142358

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    if-eqz p2, :cond_4

    const/4 p0, 0x1

    if-eq p2, p0, :cond_3

    const/4 p0, 0x2

    if-ne p2, p0, :cond_2

    const p0, 0x7f14235a

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    const p0, 0x7f142357

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const p0, 0x7f142358

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isApplicable(Landroid/content/Context;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;->access$100(Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;->access$000(Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
