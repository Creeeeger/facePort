.class public Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final KEY:Ljava/lang/String; = "security_settings_face_enroll_faces_container"

.field private static final TAG:Ljava/lang/String; = "FaceSettings/Remove"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mIsClicked:Z

.field private mListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_settings_face_enroll_faces_container"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public isClicked()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mIsClicked:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mIsClicked:Z

    return v0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mIsClicked:Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/settings/biometrics/face/FaceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 p0, 0x5

    iget-object v0, v0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setListener(Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mListener:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController$Listener;

    return-void
.end method

.method public setToken([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mToken:[B

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mUserId:I

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0d8a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mButton:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/google/android/setupdesign/util/ButtonStyler;->applyPartnerCustomizationPrimaryButtonStyle(Landroid/content/Context;Landroid/widget/Button;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v0, 0x80

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->mButton:Landroid/widget/Button;

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
