.class public Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final ANNOTATION_URL:Ljava/lang/String; = "url"

.field private static final KEY:Ljava/lang/String; = "security_face_footer"

.field private static final TAG:Ljava/lang/String; = "FaceSettingsFooterPreferenceController"


# instance fields
.field private mIsFaceStrong:Z

.field private mPreference:Landroidx/preference/Preference;

.field private final mProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsFaceStrong(Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mIsFaceStrong:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsFaceStrong(Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mIsFaceStrong:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "security_face_footer"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addAuthenticatorsRegisteredCallback(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceManager;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController$1;-><init>(Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->addAuthenticatorsRegisteredCallback(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "FaceSettingsFooterPreferenceController"

    const-string p1, "Not support FEATURE_FACE"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mUserId:I

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f141180

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mUserId:I

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->isPrivateProfile(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f141d4b

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;->mIsFaceStrong:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1429dc

    goto :goto_0

    :cond_1
    const v0, 0x7f1429da

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {v1}, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
