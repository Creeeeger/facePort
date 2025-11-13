.class public Lcom/android/settings/language/PointerSpeedController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final KEY_POINTER_SPEED:Ljava/lang/String; = "pointer_speed"


# instance fields
.field private mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

.field private final mPointerSpeedCallback:Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private um:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$monSpeedChanged(Lcom/android/settings/language/PointerSpeedController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/PointerSpeedController;->onSpeedChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "pointer_speed"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSpeedCallback:Lcom/android/settings/language/PointerSpeedController$PointerSpeedPreferenceSamsungCallback;

    new-instance v0, Lcom/android/settings/language/PointerSpeedController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/language/PointerSpeedController$1;-><init>(Lcom/android/settings/language/PointerSpeedController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/language/PointerSpeedController;->um:Landroid/os/UserManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/language/PointerSpeedController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private onSpeedChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    add-int/lit8 v2, v0, 0x7

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress$1(IZ)V

    const/16 v1, 0x1261

    int-to-long v2, v0

    const/16 v4, 0x39

    invoke-static {v4, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    const-string v1, "pointer_speed"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    iput-object p1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    if-eqz p1, :cond_1

    const-string p1, "SecPointerSpeedPreference"

    const-string v1, "setCallback called"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    iget v1, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    const/16 v2, 0xe

    if-eq v2, v1, :cond_0

    iput v2, p1, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->mMax:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    add-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setProgress$1(IZ)V

    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController;->mPointerSeekbar:Lcom/samsung/android/settings/inputmethod/SecPointerSpeedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/CustomSeekbarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/language/PointerSpeedController;->um:Landroid/os/UserManager;

    sget-object v1, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050044

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

.method public init(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
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

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/language/PointerSpeedController;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
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
