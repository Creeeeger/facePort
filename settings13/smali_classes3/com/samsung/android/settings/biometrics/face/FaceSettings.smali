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
.field private mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

.field private mAdvancedAccessControlInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mAlternativeRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private mAnchorPreference:Landroidx/preference/Preference;

.field private mBrightenScreen:Landroidx/preference/SwitchPreference;

.field private mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

.field private mChallenge:J

.field private mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDisclaimerDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDisplay:Landroid/view/Display;

.field private mEmptyView:Landroid/view/View;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

.field private mIdentifyFace:Z

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsKnox:Z

.field private mIsRelativeLink:Z

.field private mIsRemoveOnlyAlternativeFace:Z

.field private mIsRunRegister:Z

.field private mLatestRotation:I

.field private mLaunchedConfirm:Z

.field private mLockConfirmed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedFmmPopup:Z

.field private mOpenEyes:Landroidx/preference/SwitchPreference;

.field private mRecognizeWithMask:Landroidx/preference/SwitchPreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private mSensorId:I

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStayOnLockScreen:Landroidx/preference/SwitchPreference;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$78V45rweTh-WFz7M8WwKsRgCEN0(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$deleteFace$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ER4QCHNi6oYvA80unHHQQ5hbtw(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$deleteFace$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FHMrNL7J2MZQKu0yV25q7QDTLxw(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$deleteFace$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KNRksN8zECXp5jTO4PycmRhyJHc(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nonta6odRIDaMxwZoIZ8_5sE3Y8(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->lambda$deleteFace$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBrightenScreen(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpenEyes(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecognizeWithMask(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStayOnLockScreen(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRemoveOnlyAlternativeFace(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreferences(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1126
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 82
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 114
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    .line 115
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDisclaimerDialog:Landroidx/appcompat/app/AlertDialog;

    const-wide/16 v1, 0x0

    .line 118
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    const/4 v1, -0x1

    .line 119
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    .line 122
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    .line 123
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    .line 126
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    .line 131
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRelativeLink:Z

    .line 133
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    .line 140
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    .line 1053
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAlternativeRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 1074
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 5

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
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_0

    .line 152
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->revokeChallenge(IIJ)V

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

    .line 271
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FcstFaceSettings"

    const-string v2, "createPreferenceHierarchy : remove all"

    .line 273
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 276
    :cond_0
    sget v1, Lcom/android/settings/R$xml;->sec_face_settings:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->setFaceSettingsPreference()V

    return-object v0
.end method

.method private deleteFace()Z
    .locals 4

    .line 977
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 981
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteFace : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 986
    invoke-interface {v0}, Ljava/util/List;->size()I

    goto :goto_0

    :cond_1
    const-string v0, "deleteFace : error occured"

    .line 988
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 995
    sget v1, Lcom/android/settings/R$string;->sec_face_remove_face_popup_title:I

    .line 996
    sget v2, Lcom/android/settings/R$string;->sec_face_remove_face_popup_message_2:I

    .line 998
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    if-eqz v3, :cond_2

    .line 999
    sget v1, Lcom/android/settings/R$string;->sec_face_remove_alternative_face_popup_title:I

    .line 1000
    sget v2, Lcom/android/settings/R$string;->sec_face_remove_alternative_face_popup_message:I

    .line 1003
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1004
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1006
    sget v1, Lcom/android/settings/R$string;->common_remove:I

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1035
    sget v1, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1042
    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1043
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    .line 1044
    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 1048
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$deleteFace$1(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1008
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

    .line 1013
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    const-string p2, "FcstFaceSettings"

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1014
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1016
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "Remove only Alternative face data"

    .line 1018
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/Face;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAlternativeRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    invoke-virtual {p2, p1, v0, p0}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    goto :goto_1

    :cond_1
    const-string p0, "deleteFace : faceList size is 1"

    .line 1022
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p1, "Remove all face data"

    .line 1025
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    invoke-virtual {p1, p2, p0}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    goto :goto_1

    :cond_3
    const-string p0, "deleteFace : faceList size is 0"

    .line 1029
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, "deleteFace : error occurred"

    .line 1032
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private synthetic lambda$deleteFace$2(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1037
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

    .line 1040
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$deleteFace$3(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1042
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$deleteFace$4(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1044
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 1045
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 1046
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_biometrics_dialog_remove_btn_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 571
    iput p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    .line 572
    iput-wide p4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    .line 573
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 574
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 576
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "FcstFaceSettings"

    const-string p2, "CONFIRM_REQUEST: token = NULL"

    .line 577
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 579
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 578
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 5

    const-string v0, "FcstFaceSettings"

    const-string v1, "Launch ConfirmLock"

    .line 644
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 646
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    .line 647
    sput-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 649
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 650
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v3, 0xc9

    .line 651
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 652
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 653
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 654
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 655
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 657
    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 658
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 662
    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 663
    invoke-virtual {v2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setKnoxWorkProfileSecurity(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 667
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Launch ConfirmLock - Fail"

    .line 668
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    .line 670
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 4

    .line 938
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    const-string v2, "FcstFaceSettings"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 939
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v3, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    .line 940
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "previousStage"

    .line 942
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    const-string v1, "identifyFace"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 944
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 946
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 947
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 950
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_1

    .line 951
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

    .line 954
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    .line 955
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

    .line 958
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 960
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setFaceSettingsPreference()V
    .locals 10

    .line 698
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x1

    const-string v2, "FcstFaceSettings"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 699
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v4}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 700
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFaceSettingsPreference : hasEnrolledFace["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    move v4, v3

    goto :goto_1

    :cond_1
    const-string v0, "faceList is null or size is 0"

    .line 708
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v3

    :goto_0
    move v4, v0

    :goto_1
    if-eqz v0, :cond_3

    const-string v5, "key_facelock_register"

    goto :goto_2

    :cond_3
    const-string v5, "key_facelock_remove"

    .line 712
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 713
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v5

    const-string v6, "key_facelock_remove_alternative"

    const-string v7, "key_facelock_register_alternative"

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 715
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 716
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    move-object v6, v7

    .line 718
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    .line 722
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 723
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_3
    const-string v4, "key_facelock_unlock"

    .line 728
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    .line 730
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v5

    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFaceScreenLock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v6, :cond_9

    .line 735
    invoke-virtual {v6, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 736
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 739
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v6

    if-eq v6, v1, :cond_7

    .line 745
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 746
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    .line 747
    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    const-string v6, "setFaceSettingsPreference : Screen lock switch disable by MDM!"

    .line 748
    invoke-static {v2, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 750
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 751
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x80

    iget v9, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v7, v8, v9}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    .line 756
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 759
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isNotSupportBiometricsLockMenu(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 760
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v4, "inset_option"

    .line 761
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_9
    const-string v4, "key_facelock_stay_on_lock_screen"

    .line 766
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    .line 768
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-nez v6, :cond_b

    .line 769
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v6, v8}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->isNotSupportBiometricsLockMenu(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_b

    .line 770
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v6, v8}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 771
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_a

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 772
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_6

    .line 774
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v1, v3, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    .line 775
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 776
    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    :cond_c
    :goto_6
    const-string v1, "key_face_recognize_mask"

    .line 781
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_e

    .line 783
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-nez v4, :cond_d

    .line 784
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 785
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 786
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_7

    .line 788
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 789
    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    :cond_e
    :goto_7
    const-string v1, "key_facelock_open_eyes"

    .line 794
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_10

    .line 796
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-nez v4, :cond_f

    .line 797
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 798
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 799
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_8

    .line 801
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    .line 802
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 803
    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    :cond_10
    :goto_8
    const-string v1, "key_facelock_brighten_screen"

    .line 808
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_12

    .line 810
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-nez v4, :cond_11

    .line 811
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 812
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 813
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_9

    .line 815
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    .line 816
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 817
    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    .line 821
    :cond_12
    :goto_9
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "auth_option_inset"

    .line 822
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_13
    const-string v1, "setFaceSettingsPreference : No supported application"

    .line 826
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "inset_application"

    .line 827
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 831
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    const-string v2, "key_facelock_advanced_access_control"

    const-string v4, "inset_facelock_advanced_access_control"

    const-string v5, "key_facelock_touch_dynamics_pref"

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 832
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControlInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 834
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_15

    if-nez v0, :cond_14

    .line 836
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlStarted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 837
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setAdvancedAccessControl(Landroid/content/Context;Z)V

    .line 839
    :cond_14
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateAdvancedAccessControlView(Z)V

    .line 840
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 844
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 845
    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    .line 846
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateTouchDynamicsView()V

    goto :goto_a

    .line 848
    :cond_16
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 849
    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    goto :goto_a

    .line 852
    :cond_17
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 853
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 854
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 855
    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    .line 856
    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControlInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 857
    iput-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    .line 860
    :goto_a
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->setStorageDeviceProtected()V

    .line 861
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private setLinkedDataView()V
    .locals 3

    .line 1219
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    if-eqz v0, :cond_0

    return-void

    .line 1223
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_3

    .line 1225
    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    .line 1230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1231
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.samsungpass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1233
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const/16 v2, 0x20e4

    .line 1234
    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 1235
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->getMetricsCategory()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 1236
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 1238
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    sget v0, Lcom/android/settings/R$string;->iris_use_samsung_pass_jpn:I

    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0

    .line 1241
    :cond_1
    sget v0, Lcom/android/settings/R$string;->iris_use_samsung_pass:I

    iput v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 1243
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    if-nez v0, :cond_3

    .line 1245
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 1251
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private showFaceDisclaimer()V
    .locals 4

    const-string v0, "FcstFaceSettings"

    const-string v1, "startBiometricsDisclaimer"

    .line 676
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 678
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsDisclaimerSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/16 v3, 0x100

    .line 681
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromSettingsOption"

    const/4 v3, 0x1

    .line 682
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3e9

    .line 685
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 687
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string p0, "startBiometricsDisclaimer : Activity Not Found !"

    .line 688
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 2

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityForResultWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    const-string v1, "isAfw"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 912
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    .line 915
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 917
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 3

    const-string v0, "FcstFaceSettings"

    const-string v1, "startFmmBackupPasswordPopup"

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x10000

    .line 332
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x7d0

    .line 334
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception occured!"

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateAdvancedAccessControlView(Z)V
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    .line 866
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 867
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlStarted(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 869
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p1, :cond_3

    .line 870
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    .line 872
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 873
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateTouchDynamicsView()V

    .line 875
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

    .line 970
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 971
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 972
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 973
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p0, p0, 0x2

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p0, p1}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 372
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->setLinkedDataView()V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mEmptyView:Landroid/view/View;

    .line 377
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mEmptyView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->hideMenuList(Landroid/app/Activity;Landroid/view/View;Z)V

    return-void
.end method

.method private updateTouchDynamicsView()V
    .locals 5

    .line 881
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "key_facelock_touch_dynamics_pref"

    if-eqz v0, :cond_2

    .line 882
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 885
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

    .line 886
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 887
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

    .line 888
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 889
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 892
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 893
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected finishFaceSettings()V
    .locals 2

    const-string v0, "FcstFaceSettings"

    const-string v1, "finishFaceSettings()"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDisclaimerDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_1
    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 524
    sget p0, Lcom/android/settings/R$string;->help_uri_default:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 186
    const-class p0, Lcom/samsung/android/settings/biometrics/BiometricsSettingsFragment;

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

    .line 181
    sget p0, Lcom/android/settings/R$xml;->sec_face_settings:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_security_and_privacy"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 530
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 531
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

    .line 534
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    if-eqz p3, :cond_0

    const-string v2, "biometrics_settings_destroy"

    .line 537
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "onActivityResult: Finish Settings"

    .line 540
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd()V

    return-void

    :cond_0
    const/16 v2, 0xc9

    const/4 v3, -0x1

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "Stay on Lock screen finished!"

    .line 592
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string p0, "Biometrics disclaimer finished!"

    .line 596
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_1

    const-string p1, "hw_auth_token"

    .line 550
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 552
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz p1, :cond_2

    const-string p1, "reset runRegister"

    .line 553
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    :cond_2
    if-eq p2, v3, :cond_3

    const-string p1, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    .line 557
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, -0x3

    if-ne p2, p1, :cond_6

    const-string p1, "FIRSTFACE_REQUEST_CODE : PPP Timeout"

    .line 560
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 566
    :cond_4
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    if-ne p2, v3, :cond_5

    if-eqz p3, :cond_5

    const-string p1, "onActivityResult : CONFIRM_REQUEST"

    .line 568
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 569
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    .line 570
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;)V

    invoke-virtual {p2, v0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    goto :goto_0

    .line 585
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 623
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "FcstFaceSettings"

    const-string v0, "==onConfigurationChanged"

    .line 624
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDisplay:Landroid/view/Display;

    if-eqz p1, :cond_0

    .line 627
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 628
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLatestRotation:I

    if-eq v0, p1, :cond_0

    .line 629
    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLatestRotation:I

    .line 630
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onCreate()"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v1, :cond_1

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sensor_id"

    const-string v3, "challenge"

    const-string v4, "hw_auth_token"

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 212
    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    const/4 v6, -0x1

    .line 213
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    const-string v6, "identifyFace"

    .line 214
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIdentifyFace:Z

    const-string v6, "isAfw"

    .line 215
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    const-string v6, "android.intent.extra.USER_ID"

    .line 216
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    .line 218
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKnox:Z

    const-string v6, "relative_link"

    .line 220
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRelativeLink:Z

    const-string v6, "need_fmm_popup"

    .line 221
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsAfw : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUserId : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsRelativeLink : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRelativeLink:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNeedFmmPopup : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3

    .line 228
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    goto :goto_0

    :cond_2
    const-string v1, "args is null"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 237
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 238
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    .line 239
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    const-string v0, "is_change_configuration"

    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_4
    const/4 p1, 0x1

    .line 243
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 247
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->launchConfirmLock()V

    goto :goto_1

    .line 254
    :cond_5
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockConfirmed:Z

    :goto_1
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 261
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onDestroy()"

    .line 605
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    if-eqz v1, :cond_0

    const-string v1, "reset runRegister"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 609
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRunRegister:Z

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 614
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->revokeChallenge(IIJ)V

    .line 618
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 399
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMultiWindowModeChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FcstFaceSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 405
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_not_use_multi_window_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 405
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 407
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    .line 408
    sput-boolean p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 409
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 637
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 638
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20d0

    const/16 v2, 0x20d1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 640
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 382
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onPause()"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 388
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 387
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->cancelAndSessionEnd()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    .line 469
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

    .line 471
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v2, :cond_4

    .line 474
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

    .line 476
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    const-string v0, "FaceSettings_unlock_switch"

    if-eqz p1, :cond_3

    .line 477
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 478
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 479
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 481
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 482
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_10

    .line 483
    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 487
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 488
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_10

    .line 489
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 493
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 494
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    return v3

    .line 498
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x20f5

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v10, v5

    goto :goto_1

    :cond_5
    move-object v10, v6

    :goto_1
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    goto/16 :goto_5

    .line 501
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceRecognizeMask(Landroid/content/Context;ZI)V

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x2108

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    move-object v10, v5

    goto :goto_2

    :cond_7
    move-object v10, v6

    :goto_2
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto/16 :goto_5

    .line 504
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mOpenEyes:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    .line 506
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x20ff

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    move-object v10, v5

    goto :goto_3

    :cond_9
    move-object v10, v6

    :goto_3
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto/16 :goto_5

    .line 507
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mBrightenScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x20d0

    const/16 v9, 0x20ee

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    move-object v10, v5

    goto :goto_4

    :cond_b
    move-object v10, v6

    :goto_4
    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto :goto_5

    .line 510
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAdvancedAccessControl:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 511
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_d
    invoke-static {p1, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setAdvancedAccessControl(Landroid/content/Context;Z)V

    .line 512
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateAdvancedAccessControlView(Z)V

    goto :goto_5

    .line 513
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mCMFATouchDynamicsPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 514
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setTouchDynamics(Landroid/content/Context;Z)V

    .line 515
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updateTouchDynamicsView()V

    goto :goto_5

    .line 517
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "key:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
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

    .line 428
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
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "key_face_about_face_recognition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "key_facelock_remove_alternative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "key_facelock_remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_0

    :sswitch_4
    const-string v1, "key_facelock_register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    const/16 v0, 0x20d0

    packed-switch v4, :pswitch_data_0

    .line 462
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 443
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x20fd

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    const-string p1, "FaceSettings_register_alternative"

    .line 444
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_1

    .line 457
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x20d2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->showFaceDisclaimer()V

    goto :goto_1

    .line 448
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x20fe

    invoke-static {v1, v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2101

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 451
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    .line 452
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->deleteFace()Z

    goto :goto_1

    .line 434
    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0x20d3

    invoke-static {v1, v0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    .line 435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x20d6

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 437
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsRemoveOnlyAlternativeFace:Z

    .line 438
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mAnchorPreference:Landroidx/preference/Preference;

    .line 439
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->deleteFace()Z

    goto :goto_1

    :pswitch_4
    const-string p1, "FaceSettings_register"

    .line 430
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :goto_1
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x388c4de6 -> :sswitch_4
        -0x16f51245 -> :sswitch_3
        -0x94cd7 -> :sswitch_2
        0x11649189 -> :sswitch_1
        0x55f8e108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 8

    .line 284
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FcstFaceSettings"

    const-string v1, "==onResume()"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLaunchedConfirm:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 288
    sput-boolean v2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mIsKeepEnrollSession:Z

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLatestRotation:I

    .line 296
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

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "isDesktopMode or isInMultiWindowMode is TRUE."

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    return-void

    .line 305
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->updatePreferences()V

    .line 307
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Enroll session close."

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 310
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    iget-wide v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/hardware/face/FaceManager;->revokeChallenge(IIJ)V

    .line 313
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->semIsEnrollSession()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Session closed! Token must be null!"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    .line 318
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    if-eqz v0, :cond_7

    .line 319
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mNeedFmmPopup:Z

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->startFmmBackupPasswordPopup()V

    .line 323
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 416
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 418
    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    const-string v2, "challenge"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 419
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    const-string v1, "sensor_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

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

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 361
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 362
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    .line 363
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public turnOnFaceLock()V
    .locals 3

    const-string v0, "FcstFaceSettings"

    const-string v1, "turnOnFaceLock"

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "No registered face! runRegister"

    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FaceSettings_unlock_switch"

    .line 346
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Face already registered!"

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mFaceUnlock:Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 350
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 351
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1

    .line 352
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method
