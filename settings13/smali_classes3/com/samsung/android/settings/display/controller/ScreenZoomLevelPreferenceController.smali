.class public Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "ScreenZoomLevelPreferenceController.java"


# static fields
.field private static final KEY_SCREEN_ZOON_LEVEL:Ljava/lang/String; = "key_screen_zoom_level"


# instance fields
.field private mDensities:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_screen_zoom_level"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;->mDensities:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;->mDensities:[I

    return-void
.end method

.method private getDensityByPosition(I)I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;->mDensities:[I

    aget p0, p0, p1

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x2

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

.method public getControlType()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getDensities()[I
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;->mDensities:[I

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

.method public getMax()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;->mDensities:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSliderPosition()I
    .locals 5

    .line 30
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 32
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;->mDensities:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 33
    aget v3, v3, v2

    if-ne v3, v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

.method public setSliderPosition(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;->mDensities:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;->getDensityByPosition(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyForcedDisplayDensity(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
