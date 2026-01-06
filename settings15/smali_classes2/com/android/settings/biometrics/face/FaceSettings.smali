.class public Lcom/samsung/android/settings/biometrics/face/FaceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FaceSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mIsKeepEnrollSession:Z = false


# instance fields
.field private mAboutBiometricsUnlock:Landroidx/preference/PreferenceScreen;

.field private mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

.field private mAdvancedAccessControlInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mAlternativeRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mAnchorPreference:Landroidx/preference/Preference;

.field private mBiometricsSecurityUnlockInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mBrightenScreen:Landroidx/preference/SwitchPreference;

.field private mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

.field private mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDisclaimerDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDisplay:Landroid/view/Display;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

.field private mIdentifyFace:Z

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsRelativeLink:Z

.field private mIsRemoveOnlyAlternativeFace:Z

.field private mIsRunRegister:Z

.field private mLatestRotation:I

.field private mLaunchedConfirm:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedFmmPopup:Z

.field private mOpenEyes:Landroidx/preference/SwitchPreference;

.field private mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

.field private mRegisterAlternativeFace:Landroidx/preference/SecPreferenceScreen;

.field private mRegisterFace:Landroidx/preference/SecPreferenceScreen;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mRemoveAlternativeFace:Landroidx/preference/SecPreferenceScreen;

.field private mRemoveFace:Landroidx/preference/SecPreferenceScreen;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$78V45rweTh-WFz7M8WwKsRgCEN0(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$deleteFace$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aVHvWh9s5pz5ArXB6S3klbcRmi8(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$deleteFace$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$crl-k_EfZMSLHHmlebddttZr-yo(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$deleteFace$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbuIId8Rr9eSb0D2Io5fqUxokvE(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$deleteFace$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1196
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 121
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDisclaimerDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    .line 127
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    .line 131
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    .line 134
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    .line 136
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRelativeLink:Z

    .line 138
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    .line 144
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 1126
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAlternativeRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 1146
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)[B
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/biometrics/face/FaceSettings;[B)[B
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string v0, "FcstFaceSettings"

    const-string v1, "cancelAndSessionEnd() "

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    if-nez v1, :cond_1

    const-string v1, "Close the session and finish the activity"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->finishFaceSettings()V

    goto :goto_0

    :cond_1
    const-string p0, "Keep the session and activity"

    .line 156
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 3

    .line 270
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FcstFaceSettings"

    const-string v2, "createPreferenceHierarchy : remove all"

    .line 272
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 275
    :cond_0
    sget v1, Lcom/android/settings/R$xml;->sec_face_settings:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->setFaceSettingsPreference()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    move-result-object v2
    if-eqz v2, :title_done

    const-string v3, "Face recognition"
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

:title_done

    return-object v0
.end method

.method private deleteFace()Z
    .locals 6

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1051
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFace : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FcstFaceSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1056
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v0, "deleteFace : error occured"

    .line 1058
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1065
    const-string v2, "Remove face data?"

    .line 1066
    const-string v3, "Your face recognition data will be deleted."

    .line 1068
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1069
    const-string v2, "Remove alternative appearance?"

    .line 1070
    const-string v3, "Your alternative appearance will be removed."

    goto :goto_1

    :cond_2
    if-le v1, v5, :cond_3

    .line 1073
    const-string v3, "Your face recognition data will be deleted."

    .line 1076
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1077
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1079
    const-string v1, "Remove"

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1108
    const-string v1, "Cancel"

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1115
    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1116
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1117
    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1120
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 1121
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v5
.end method

.method private synthetic lambda$deleteFace$0(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1081
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x2101

    goto :goto_0

    :cond_0
    const/16 p2, 0x20d6

    :goto_0
    const/16 v0, 0x20d8

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 1086
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const-string p2, "FcstFaceSettings"

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1087
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1089
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "Remove only Alternative face data"

    .line 1091
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/bio/face/SemBioFace;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAlternativeRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    invoke-virtual {p2, p1, v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    goto :goto_1

    :cond_1
    const-string p0, "deleteFace : faceList size is 1"

    .line 1095
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p1, "Remove all face data"

    .line 1098
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance p2, Lcom/samsung/android/bio/face/SemBioFace;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const-string v1, ""

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Ljava/lang/CharSequence;IIJ)V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    invoke-virtual {p1, p2, v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    goto :goto_1

    :cond_3
    const-string p0, "deleteFace : faceList size is 0"

    .line 1102
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, "deleteFace : error occurred"

    .line 1105
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private synthetic lambda$deleteFace$1(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x2101

    goto :goto_0

    :cond_0
    const/16 p0, 0x20d6

    :goto_0
    const/16 v0, 0x20d7

    invoke-static {p2, p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 1113
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$deleteFace$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1115
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$deleteFace$3(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1117
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 1118
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 1119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_biometrics_dialog_remove_btn_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 5

    const-string v0, "FcstFaceSettings"

    const-string v1, "Launch ConfirmLock"

    .line 670
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 672
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    .line 673
    sput-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 675
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 676
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v3, 0xc9

    .line 677
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 678
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 679
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 680
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 681
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 683
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    .line 684
    invoke-virtual {v2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 687
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Launch ConfirmLock - Fail"

    .line 688
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    .line 690
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 4

    .line 1008
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    const-string v2, "FcstFaceSettings"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1009
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v3, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    .line 1010
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previousStage"

    .line 1012
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    const-string v1, "identifyFace"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 1014
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1016
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 1017
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1020
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_1

    .line 1021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "runRegister already called : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 1024
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    .line 1025
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runRegister called : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3e8

    .line 1028
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1030
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setFaceSettingsPreference()V
    .locals 12

    .line 743
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const-string v1, "key_facelock_register"

    .line 746
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRegisterFace:Landroidx/preference/SecPreferenceScreen;

    const-string v2, "key_facelock_remove"

    .line 747
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRemoveFace:Landroidx/preference/SecPreferenceScreen;

    .line 748
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v3

    const-string v4, "key_facelock_remove_alternative"

    const-string v5, "key_facelock_register_alternative"

    if-eqz v3, :cond_0

    .line 749
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRegisterAlternativeFace:Landroidx/preference/SecPreferenceScreen;

    .line 750
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRemoveAlternativeFace:Landroidx/preference/SecPreferenceScreen;

    .line 754
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v6, 0x1

    const-string v7, "FcstFaceSettings"

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    .line 755
    iget v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 756
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 758
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFaceSettingsPreference : hasEnrolledFace["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v6

    move v9, v8

    goto :goto_1

    :cond_2
    const-string v3, "faceList is null or size is 0"

    .line 764
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v8

    :goto_0
    move v9, v3

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 768
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 769
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v3, :cond_5

    .line 771
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 772
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    move-object v4, v5

    .line 774
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    .line 778
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 779
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_3
    const-string v1, "key_facelock_unlock"

    .line 784
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    .line 786
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v2, v4, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    .line 788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFaceScreenLock : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v4, :cond_a

    .line 791
    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 792
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v4, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 795
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 798
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v4

    if-eq v4, v6, :cond_8

    .line 801
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 802
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    .line 803
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    const-string v4, "setFingerprintPreference : Screen lock switch disable by MDM!"

    .line 804
    invoke-static {v7, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 806
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 807
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v9, 0x80

    iget v10, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v5, v9, v10}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    .line 812
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isNotSupportBiometricsLockMenu(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 816
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_a
    const-string v1, "key_facelock_stay_on_lock_screen"

    .line 821
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Landroidx/preference/TwoStatePreference;

    if-nez v5, :cond_ba

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    goto :goto_52

    :cond_ba
    check-cast v4, Landroidx/preference/TwoStatePreference;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    :goto_52

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    .line 823
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v0, :cond_c

    .line 824
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v9}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 825
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v9}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v6

    goto :goto_5

    :cond_b
    move v4, v8

    :goto_5
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 826
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_6

    .line 828
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v8, v9}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    .line 829
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 830
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    :cond_d
    :goto_6
    const-string v1, "key_facelock_recognition_speed_up"

    .line 835
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_10

    .line 837
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result v4

    if-eqz v4, :cond_f

    if-nez v0, :cond_f

    .line 838
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v9}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceFasterRecognitionBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 839
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    if-eqz v3, :cond_e

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    move v6, v8

    :goto_7
    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 840
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_8

    :cond_f
    const-string v2, "setFaceSettingsPreference : Remove Faster Recognition"

    .line 842
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v2, v8, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceFasterRecognitionValue(Landroid/content/Context;ZI)V

    .line 844
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 845
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    :cond_10
    :goto_8
    const-string v1, "key_facelock_open_eyes"

    .line 850
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_12

    .line 852
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v0, :cond_11

    .line 853
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v2, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 854
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 855
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_9

    .line 857
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v2, v0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    .line 858
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 859
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    :cond_12
    :goto_9
    const-string v1, "key_facelock_brighten_screen"

    .line 864
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_14

    .line 866
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez v0, :cond_13

    .line 867
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v2, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 868
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 869
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_a

    .line 871
    :cond_13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v2, v0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    .line 872
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 873
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    .line 877
    :cond_14
    :goto_a
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "auth_option_inset"

    .line 878
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_15
    const-string v1, "setFaceSettingsPreference : No supported application"

    .line 882
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "inset_application"

    .line 883
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v1, "key_facelock_advanced_access_control"

    const-string v2, "inset_facelock_advanced_access_control"

    const-string v4, "key_facelock_touch_dynamics_pref"

    if-eqz v0, :cond_19

    .line 887
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 888
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControlInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 890
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_17

    if-nez v3, :cond_16

    .line 892
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlStarted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 893
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setAdvancedAccessControl(Landroid/content/Context;Z)V

    .line 895
    :cond_16
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateAdvancedAccessControlView(Z)V

    .line 896
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 900
    :cond_17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 901
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    .line 902
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateTouchDynamicsView()V

    goto :goto_b

    .line 904
    :cond_18
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 905
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    goto :goto_b

    .line 908
    :cond_19
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 909
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 910
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 911
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    .line 912
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControlInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 913
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    :goto_b
    const-string v0, "inset_face_biometrics_security_unlock"

    .line 917
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBiometricsSecurityUnlockInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v1, "key_face_about_biometrics_unlock"

    .line 918
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAboutBiometricsUnlock:Landroidx/preference/PreferenceScreen;

    .line 919
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBiometricsSecurityUnlockInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    .line 920
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isSupportAboutBiometricsUnlockMenu(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 921
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 922
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 925
    :cond_1a
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->applyFacePreferenceStrings()V

    .line 926
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private applyFacePreferenceStrings()V
    .locals 3

    const-string v0, "key_facelock_register"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Add face"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Register your face to unlock your phone."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_0
    const-string v0, "key_facelock_register_alternative"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Add alternative appearance"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Improve recognition with a different look."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_1
    const-string v0, "key_facelock_remove"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Remove face data"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Delete all saved face recognition data."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_2
    const-string v0, "key_facelock_remove_alternative"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "Remove alternative appearance"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Delete the additional appearance you added."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_3
    const-string v0, "key_facelock_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "Face unlock"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Use face recognition to unlock your phone."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_4
    const-string v0, "key_facelock_stay_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "Stay on Lock screen"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Stay on the Lock screen after unlocking until you swipe."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_5
    const-string v0, "key_face_recognize_mask"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5a

    const-string v1, "Recognize with mask"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Keep using face recognition while you're wearing a mask."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_5a
    const-string v0, "key_facelock_recognition_speed_up"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "Faster recognition"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Unlock more quickly, but this may reduce security."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_6
    const-string v0, "key_facelock_open_eyes"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "Require open eyes"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Only unlock your phone when your eyes are open."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_7
    const-string v0, "key_facelock_brighten_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "Brighten screen"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Increase screen brightness during face recognition."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_8
    const-string v0, "key_facelock_advanced_access_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "Advanced access control"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Add extra protection for sensitive content."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_9
    const-string v0, "key_facelock_touch_dynamics_pref"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "Touch dynamics"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Use touch dynamics with face recognition for added security."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_a
    const-string v0, "key_face_about_biometrics_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "About Biometrics unlock"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Learn how biometrics protect your data."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_b
    const-string v0, "key_face_about_face_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v1, "About face recognition"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "Information about using face recognition on your phone."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

:cond_c
    const-string v0, "inset_face_biometrics_security_unlock"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "Face recognition options"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

:cond_d
    const-string v0, "inset_facelock_advanced_access_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, "Advanced access control"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

:cond_e
    return-void
.end method

.method private setLinkedDataView()V
    .locals 3

    .line 1294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1295
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_2

    .line 1296
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 1301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1302
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1304
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v2, 0x20e4

    .line 1305
    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 1306
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->getMetricsCategory()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 1307
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 1308
    iput-boolean v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->showPopOverStyle:Z

    .line 1309
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    sget v0, Lcom/android/settings/R$string;->iris_use_samsung_pass_jpn:I

    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0

    .line 1312
    :cond_0
    sget v0, Lcom/android/settings/R$string;->iris_use_samsung_pass:I

    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 1314
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    if-nez v0, :cond_2

    .line 1316
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 1322
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private showFaceDisclaimer()V
    .locals 4

    const-string v0, "FcstFaceSettings"

    const-string v1, "startBiometricsDisclaimer"

    .line 696
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 698
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsDisclaimerSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/16 v3, 0x100

    .line 701
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromSettingsOption"

    const/4 v3, 0x1

    .line 702
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    sput-boolean v3, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 707
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->startPopOverActivityIfNeeded(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e9

    .line 709
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 712
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p0, "startBiometricsDisclaimer : Activity Not Found !"

    .line 713
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 2

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityForResultWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    const-string v1, "isAfw"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    .line 980
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 982
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startFaceStayOnLockScreen()V
    .locals 5

    const-string v0, "FcstFaceSettings"

    const-string v4, "Run startFaceStayOnLockScreen"

    .line 987
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 989
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.settings.biometrics.face.FaceStayOnLockScreen"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "FaceStayOnLockScreen activity missing, falling back to SetupWizard variant"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.settings.biometrics.face.SuwFaceStayOnLockScreen"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    .line 990
    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "fromSetupWizard"

    const/4 v4, 0x0

    .line 991
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "fromSettingsPreference"

    const/4 v4, 0x1

    .line 992
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 995
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 996
    sput-boolean v4, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 997
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/Utils;->startPopOverActivityIfNeeded(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x3ea

    .line 999
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1002
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 3

    const-string v0, "FcstFaceSettings"

    const-string v1, "startFmmBackupPasswordPopup"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x7d0

    .line 330
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception occured!"

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateAdvancedAccessControlView(Z)V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    .line 931
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 932
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlStarted(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 934
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p1, :cond_3

    .line 935
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    .line 937
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 938
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateTouchDynamicsView()V

    .line 940
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updatePreferences()V

    :cond_3
    return-void
.end method

.method private updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1040
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1041
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 1042
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1043
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p0, p0, 0x2

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p0, p1}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePreferences()V
    .locals 0

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->setLinkedDataView()V

    return-void
.end method

.method private updateTouchDynamicsView()V
    .locals 5

    .line 946
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "key_facelock_touch_dynamics_pref"

    if-eqz v0, :cond_2

    .line 947
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 950
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportedKeyboard(Landroid/content/Context;I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlStarted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 951
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 952
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsStarted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 953
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 954
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 957
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 958
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected finishFaceSettings()V
    .locals 3

    const-string v0, "FcstFaceSettings"

    const-string v1, "finishFaceSettings()"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportMultiPaneLayout(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/core/SecMultiPaneActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/settings/core/SecMultiPaneActivity;->finishPreferencePanel(Landroidx/fragment/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 175
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDisclaimerDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_3

    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_3
    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 541
    sget p0, Lcom/android/settings/R$string;->help_uri_default:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 192
    const-class p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x20d0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 187
    sget p0, Lcom/android/settings/R$xml;->sec_face_settings:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_bio_and_security"

    return-object p0
.end method

.method public launchBiometricsSecurityNotice(Z)V
    .locals 3

    const-string v0, "FcstFaceSettings"

    const-string v1, "launchBiometricsSecurityNotice"

    .line 718
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsCommonSecurityNoticeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/16 v2, 0x100

    .line 724
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 726
    sput-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 727
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->startPopOverActivityIfNeeded(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3eb

    .line 729
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :goto_0
    if-eqz p1, :cond_1

    .line 732
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x20d0

    const/16 v0, 0x2102

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 735
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 547
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==onActivityResult requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 551
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    if-eqz p3, :cond_0

    const-string v2, "biometrics_settings_destroy"

    .line 554
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "onActivityResult: Finish Settings"

    .line 557
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd()V

    return-void

    :cond_0
    const/16 v2, 0xc9

    const/4 v3, -0x1

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "Biometrics security notice finished!"

    .line 618
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string p0, "Stay on Lock screen finished!"

    .line 610
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string p0, "Biometrics disclaimer finished!"

    .line 614
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    if-eqz p3, :cond_1

    const-string p1, "hw_auth_token"

    .line 567
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 569
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_2

    const-string p1, "reset runRegister"

    .line 570
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    :cond_2
    if-eq p2, v3, :cond_3

    const-string p1, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    .line 574
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, -0x3

    if-ne p2, p1, :cond_6

    const-string p1, "FIRSTFACE_REQUEST_CODE : PPP Timeout"

    .line 577
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 583
    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    if-ne p2, v3, :cond_5

    if-eqz p3, :cond_5

    const-string p1, "onActivityResult : CONFIRM_REQUEST"

    .line 585
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    const/4 p1, 0x1

    .line 601
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    goto :goto_0

    .line 603
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 649
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "FcstFaceSettings"

    const-string v0, "==onConfigurationChanged"

    .line 650
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDisplay:Landroid/view/Display;

    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 654
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLatestRotation:I

    if-eq v0, p1, :cond_0

    .line 655
    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLatestRotation:I

    .line 656
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onCreate()"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hw_auth_token"

    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "identifyFace"

    .line 218
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    const-string v4, "isAfw"

    .line 219
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    const-string v4, "android.intent.extra.USER_ID"

    .line 220
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const-string v4, "relative_link"

    .line 221
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRelativeLink:Z

    const-string v4, "need_fmm_popup"

    .line 222
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsAfw : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRelativeLink : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRelativeLink:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNeedFmmPopup : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    .line 229
    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    goto :goto_0

    :cond_2
    const-string v1, "args is null"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 238
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const-string v0, "is_change_configuration"

    .line 239
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_4
    const/4 p1, 0x1

    .line 242
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 246
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    if-nez p1, :cond_5

    if-nez v0, :cond_5

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->launchConfirmLock()V

    :cond_5
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isShowingMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 260
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onDestroy()"

    .line 627
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz v1, :cond_0

    const-string v1, "reset runRegister"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 631
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    .line 634
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    .line 636
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_1

    .line 637
    invoke-virtual {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    move-result v1

    :cond_1
    if-gez v1, :cond_2

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_2
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    .line 396
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 402
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 403
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_biometrics_common_not_use_multi_window_view:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 402
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 405
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 406
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd()V

    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 411
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 412
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 663
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 664
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20d0

    const/16 v2, 0x20d1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 666
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 379
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onPause()"

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 385
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 384
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 389
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==onPreferenceChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 484
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v2, :cond_6

    .line 485
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x20d4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v10, v5

    goto :goto_0

    :cond_0
    move-object v10, v6

    :goto_0
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 487
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    const-string v0, "FaceSettings_unlock_switch"

    if-eqz p1, :cond_5

    .line 488
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 489
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 490
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 492
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 493
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_2

    .line 494
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 496
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_12

    .line 497
    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 501
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 502
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_4

    .line 503
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 505
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_12

    .line 506
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 510
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 511
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    return v3

    .line 515
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x20f5

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    move-object v10, v5

    goto :goto_1

    :cond_7
    move-object v10, v6

    :goto_1
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 517
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    goto/16 :goto_5

    .line 518
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 519
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceFasterRecognitionValue(Landroid/content/Context;ZI)V

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x20e3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    move-object v10, v5

    goto :goto_2

    :cond_9
    move-object v10, v6

    :goto_2
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto/16 :goto_5

    .line 521
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x20ff

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    move-object v10, v5

    goto :goto_3

    :cond_b
    move-object v10, v6

    :goto_3
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto/16 :goto_5

    .line 524
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 525
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    .line 526
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x20ee

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_d

    move-object v10, v5

    goto :goto_4

    :cond_d
    move-object v10, v6

    :goto_4
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto :goto_5

    .line 527
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 528
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_f
    invoke-static {p1, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setAdvancedAccessControl(Landroid/content/Context;Z)V

    .line 529
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateAdvancedAccessControlView(Z)V

    goto :goto_5

    .line 530
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 531
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setTouchDynamics(Landroid/content/Context;Z)V

    .line 532
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateTouchDynamicsView()V

    goto :goto_5

    .line 534
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "key:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_5
    return v4
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==onPreferenceTreeClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "key_facelock_register_alternative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "key_facelock_stay_on_lock_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "key_face_about_face_recognition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "key_face_about_biometrics_unlock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "key_facelock_remove_alternative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "key_facelock_remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_0

    :sswitch_6
    const-string v1, "key_facelock_register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v4, v2

    :goto_0
    const/16 v0, 0x20d0

    packed-switch v4, :pswitch_data_0

    .line 473
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 445
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x20fd

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    const-string p1, "FaceSettings_register_alternative"

    .line 446
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :pswitch_1
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 468
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x20d2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 469
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->showFaceDisclaimer()V

    goto :goto_1

    .line 463
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x2056

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 464
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->launchBiometricsSecurityNotice(Z)V

    goto :goto_1

    .line 450
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x20fe

    invoke-static {v1, v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 451
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2101

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 453
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    .line 454
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->deleteFace()Z

    goto :goto_1

    .line 436
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0x20d3

    invoke-static {v1, v0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20d6

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 439
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    .line 440
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->deleteFace()Z

    goto :goto_1

    :pswitch_6
    const-string p1, "FaceSettings_register"

    .line 432
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :goto_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x388c4de6 -> :sswitch_6
        -0x16f51245 -> :sswitch_5
        -0x94cd7 -> :sswitch_4
        0x19ef14 -> :sswitch_3
        0x11649189 -> :sswitch_2
        0x423dbe6f -> :sswitch_1
        0x55f8e108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    .line 283
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onResume()"

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 287
    sput-boolean v2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLatestRotation:I

    .line 295
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "isDesktopMode or isInMultiWindowMode is TRUE."

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    return-void

    .line 304
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updatePreferences()V

    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Enroll session close."

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 309
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Session closed! Token must be null!"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 317
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    if-eqz v0, :cond_7

    .line 318
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startFmmBackupPasswordPopup()V

    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 418
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 419
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "is_change_configuration"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public turnOffFaceLock()V
    .locals 2

    const-string v0, "FcstFaceSettings"

    const-string v1, "turnOffFaceLock"

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1

    .line 365
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public turnOnFaceLock()V
    .locals 3

    const-string v0, "FcstFaceSettings"

    const-string v1, "turnOnFaceLock"

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "No registered face! runRegister"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FaceSettings_unlock_switch"

    .line 342
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Face already registered!"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 346
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognitionSpeedUp:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 350
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/TwoStatePreference;

    if-eqz p0, :cond_2

    .line 351
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method
