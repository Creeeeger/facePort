.class public Lcom/android/settings/language/PointerSpeedController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "PointerSpeedController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;
    }
.end annotation


# static fields
.field static final KEY_POINTER_SPEED:Ljava/lang/String; = "pointer_speed"

.field static final TAG:Ljava/lang/String; = "PointerSpeedController"


# instance fields
.field private mIm:Landroid/hardware/input/InputManager;

.field private mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

.field private final mPointerSpeedCallback:Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private um:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$monSpeedChanged(Lcom/android/settings/language/PointerSpeedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/PointerSpeedController;->onSpeedChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    new-instance p2, Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;-><init>(Lcom/android/settings/language/PointerSpeedController;Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback-IA;)V

    iput-object p2, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSpeedCallback:Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

    .line 128
    new-instance p2, Lcom/android/settings/language/PointerSpeedController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, p0, v0}, Lcom/android/settings/language/PointerSpeedController$1;-><init>(Lcom/android/settings/language/PointerSpeedController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    const-string/jumbo p2, "user"

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/language/PointerSpeedController;->um:Landroid/os/UserManager;

    const-string p2, "input"

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/language/PointerSpeedController;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private onSpeedChanged()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress(I)V

    int-to-long v1, v0

    const/16 v3, 0x39

    const/16 v4, 0x1261

    .line 139
    invoke-static {v3, v4, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 142
    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    const-string/jumbo v1, "pointer_speed"

    .line 94
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    iput-object p1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    if-eqz p1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSpeedCallback:Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;->setCallback(Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference$Callback;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setMax(I)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    add-int/lit8 v1, v0, 0x7

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress(I)V

    .line 100
    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->um:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSecureFolder(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_pointer_speed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
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

.method public getMax()I
    .locals 0

    const/16 p0, 0xe

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
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    return p0
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

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    .line 108
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mIm:Landroid/hardware/input/InputManager;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, p0, p1}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
