.class public Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mEditText:Landroid/widget/EditText;

.field public final mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-direct {p2, p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-direct {p2, p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-direct {p2, p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    return-void
.end method


# virtual methods
.method public final onBindDialogView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a05a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEditText:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->getDefaultPoliceNumber()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->getPoliceNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "SET_EMERGENCY_NUMBER_OVERRIDE"

    const-string v2, "emergency_gesture_call_number"

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->EMERGENCY_NUMBER_OVERRIDE_AUTHORITY:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/emergency/EmergencyGestureNumberOverridePreference;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-virtual {p0}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->getDefaultPoliceNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->EMERGENCY_NUMBER_OVERRIDE_AUTHORITY:Landroid/net/Uri;

    invoke-virtual {p0, p2, v1, v0, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_1
    :goto_0
    return-void
.end method
