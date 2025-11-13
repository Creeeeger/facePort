.class public Lcom/android/settings/language/DefaultVoiceInputPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mHelper:Lcom/android/settings/language/VoiceInputHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCandidates()Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v1, p0, Lcom/android/settings/language/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/language/VoiceInputHelper;

    iget-object v1, v1, Lcom/android/settings/language/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    new-instance v10, Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    iget-object v5, v9, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v6, 0x0

    move-object v1, v10

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;I)V

    iput-object v9, v10, Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getDefaultKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/language/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/language/VoiceInputHelper;

    iget-object p0, p0, Lcom/android/settings/language/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x34c

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17008b

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/language/VoiceInputHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/language/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/language/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/android/settings/language/VoiceInputHelper;->buildUi()V

    return-void
.end method

.method public final setDefaultKey(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPicker;->mHelper:Lcom/android/settings/language/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings/language/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    iget-object v1, v1, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mKey:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "voice_recognition_service"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return v2
.end method
