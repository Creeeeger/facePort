.class public Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final FEATURE_LED_FLIP_SUITCASE:Ljava/lang/String; = "com.sec.feature.nfc_suitled_authentication_cover"

.field private static final KEY_COVER:Ljava/lang/String; = "cover"


# instance fields
.field private mPreference:Landroidx/preference/SecPreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "cover"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "cover"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    const p1, 0x7f14081d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    const p1, 0x7f142e13

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    const p1, 0x7f142e14

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    const p1, 0x7f142e15

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xe

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    const p1, 0x7f1414c2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x10

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    const p1, 0x7f142e16

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    const p1, 0x7f140ab1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    const p1, 0x7f142e12

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.feature.nfc_suitled_authentication_cover"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
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

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
