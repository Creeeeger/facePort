.class public Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CoverCategoryController.java"


# static fields
.field private static final KEY_COVER:Ljava/lang/String; = "cover"


# instance fields
.field private mPreference:Landroidx/preference/SecPreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "cover"

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "cover"

    .line 30
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    if-eqz p1, :cond_8

    .line 32
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    sget p1, Lcom/android/settings/R$string;->book_cover:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    .line 37
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    sget p1, Lcom/android/settings/R$string;->sview_category_flip_wallet:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    sget p1, Lcom/android/settings/R$string;->sview_category_led_cover:I

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

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    sget p1, Lcom/android/settings/R$string;->sview_category_led_neon_flip_cover:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xe

    if-ne p1, v0, :cond_5

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    sget p1, Lcom/android/settings/R$string;->led_back_cover_title:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x10

    if-ne p1, v0, :cond_6

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    sget p1, Lcom/android/settings/R$string;->sview_category_wallet_cover:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 49
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    sget p1, Lcom/android/settings/R$string;->cover:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 41
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/CoverCategoryController;->mPreference:Landroidx/preference/SecPreferenceCategory;

    sget p1, Lcom/android/settings/R$string;->sview_category_clear_cover:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isCoverVerified(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x3

    if-nez p0, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
