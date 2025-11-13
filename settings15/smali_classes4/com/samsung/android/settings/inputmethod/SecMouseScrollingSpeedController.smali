.class public Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field static final KEY_MOUSE_SCROLLING_SPEED:Ljava/lang/String; = "mouse_scrolling_speed"


# instance fields
.field private final mScrollingSpeedCallback:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController$SecMouseScrollingSpeedPreferenceCallback;

.field private mScrollingSpeedObserver:Landroid/database/ContentObserver;

.field private mScrollingSpeedSeekbar:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;


# direct methods
.method public static bridge synthetic -$$Nest$monScrollingSpeedChanged(Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->onScrollingSpeedChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo p2, "mouse_scrolling_speed"

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController$SecMouseScrollingSpeedPreferenceCallback;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedCallback:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController$SecMouseScrollingSpeedPreferenceCallback;

    new-instance p1, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController$1;-><init>(Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private onScrollingSpeedChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_scrolling_speed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedSeekbar:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress$1(IZ)V

    int-to-long v0, v0

    const v2, 0x12cd4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "770100"

    invoke-static {v0, v1, v5, v2, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedSeekbar:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_scrolling_speed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedSeekbar:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;

    if-eqz p1, :cond_1

    const-string p1, "SecMouseScrollingSpeedPreference"

    const-string/jumbo v1, "setCallback called"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedSeekbar:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;

    iget v1, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    const/16 v3, 0x63

    if-eq v3, v1, :cond_0

    iput v3, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedSeekbar:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress$1(IZ)V

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedSeekbar:Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

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

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSliderPosition()I
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mouse_scrolling_speed"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_scrolling_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/SecMouseScrollingSpeedController;->mScrollingSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mouse_scrolling_speed"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
