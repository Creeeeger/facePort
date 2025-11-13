.class public abstract Lcom/android/settings/core/BasePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BasePreferenceController.java"

# interfaces
.implements Lcom/android/settings/slices/Sliceable;
.implements Lcom/samsung/android/settings/cube/Controllable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/BasePreferenceController$UiBlocker;,
        Lcom/android/settings/core/BasePreferenceController$UiBlockListener;
    }
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x0

.field public static final AVAILABLE_UNSEARCHABLE:I = 0x1

.field public static final CONDITIONALLY_UNAVAILABLE:I = 0x2

.field public static final DISABLED_DEPENDENT_SETTING:I = 0x5

.field public static final DISABLED_FOR_USER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SettingsPrefController"

.field public static final UNSUPPORTED_ON_DEVICE:I = 0x3


# instance fields
.field private mControlErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

.field private mControlErrorMessage:Ljava/lang/String;

.field private mControlId:Ljava/lang/String;

.field private mIsForWork:Z

.field public mLastAvailable:Z

.field public mLastAvailableChecked:Z

.field private mMetricsCategory:I

.field private mPrefVisibility:Z

.field protected final mPreferenceKey:Ljava/lang/String;

.field private mStatusCode:Ljava/lang/String;

.field protected mUiBlockListener:Lcom/android/settings/core/BasePreferenceController$UiBlockListener;

.field protected mUiBlockerFinished:Z

.field private mWorkProfileUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 511
    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->UNKNOWN:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    iput-object p1, p0, Lcom/android/settings/core/BasePreferenceController;->mControlErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    const/4 p1, 0x0

    .line 516
    iput-object p1, p0, Lcom/android/settings/core/BasePreferenceController;->mControlErrorMessage:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Lcom/android/settings/core/BasePreferenceController;->mPrefVisibility:Z

    .line 213
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Preference key must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 5

    .line 170
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 171
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/core/BasePreferenceController;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid preference controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 6

    .line 151
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 152
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p2, v1, v5

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/core/BasePreferenceController;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 158
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid preference controller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/settings/core/BasePreferenceController;
    .locals 6

    .line 194
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 195
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p2, v1, v5

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/core/BasePreferenceController;

    .line 200
    invoke-virtual {p0, p3}, Lcom/android/settings/core/BasePreferenceController;->setForWork(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 204
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid preference controller: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private savePrefVisibility(Z)V
    .locals 0

    .line 499
    iput-boolean p1, p0, Lcom/android/settings/core/BasePreferenceController;->mPrefVisibility:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 310
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 315
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public abstract getAvailabilityStatus()I
.end method

.method public getAvailabilityStatusForControl()I
    .locals 1

    .line 615
    iget-boolean v0, p0, Lcom/android/settings/core/BasePreferenceController;->mIsForWork:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    return p0
.end method

.method public final getControlErrorCode()Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mControlErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-object p0
.end method

.method public final getControlErrorMessage()Ljava/lang/String;
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mControlErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final getControlId()Ljava/lang/String;
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method public getControlType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getControlUri()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getMetricsCategory()I
    .locals 0

    .line 466
    iget p0, p0, Lcom/android/settings/core/BasePreferenceController;->mMetricsCategory:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSavedPrefVisibility()Z
    .locals 0

    .line 417
    iget-boolean p0, p0, Lcom/android/settings/core/BasePreferenceController;->mPrefVisibility:Z

    return p0
.end method

.method public getSliceType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSliceUri()Landroid/net/Uri;
    .locals 2

    .line 239
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 240
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    .line 243
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    .line 245
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusCode()Ljava/lang/String;
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mStatusCode:Ljava/lang/String;

    return-object p0
.end method

.method protected getWorkProfileUser()Landroid/os/UserHandle;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 369
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/core/BasePreferenceController;->mIsForWork:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    if-nez v0, :cond_1

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/android/settings/core/BasePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 378
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "category"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    .line 382
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0

    .line 373
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final isAvailable()Z
    .locals 4

    .line 275
    iget-boolean v0, p0, Lcom/android/settings/core/BasePreferenceController;->mIsForWork:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v2, 0x1

    .line 281
    iput-boolean v2, p0, Lcom/android/settings/core/BasePreferenceController;->mLastAvailableChecked:Z

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v2

    .line 282
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/core/BasePreferenceController;->mLastAvailable:Z

    return v1
.end method

.method public final isSupported()Z
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUiThread()Z
    .locals 1

    .line 605
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 606
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    .line 605
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final notifyControlCancel()V
    .locals 1

    .line 597
    invoke-static {}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->getInstance()Lcom/samsung/android/settings/cube/CubeCallbackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->notifyControlCancel(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyControlFailure(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;Ljava/lang/String;)V
    .locals 1

    .line 589
    invoke-static {}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->getInstance()Lcom/samsung/android/settings/cube/CubeCallbackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->notifyControlFailure(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyControlSuccess()V
    .locals 1

    .line 579
    invoke-static {}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->getInstance()Lcom/samsung/android/settings/cube/CubeCallbackManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->notifyControlSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public final setControlError(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/android/settings/core/BasePreferenceController;->mControlErrorCode:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    return-void
.end method

.method public final setControlId(Lcom/samsung/android/settings/cube/ControlValue;)V
    .locals 0

    .line 529
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getControlId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/BasePreferenceController;->mControlId:Ljava/lang/String;

    return-void
.end method

.method setForWork(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/android/settings/core/BasePreferenceController;->mIsForWork:Z

    if-eqz p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/BasePreferenceController;->mWorkProfileUser:Landroid/os/UserHandle;

    :cond_0
    return-void
.end method

.method public setMetricsCategory(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/android/settings/core/BasePreferenceController;->mMetricsCategory:I

    return-void
.end method

.method public final setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/android/settings/core/BasePreferenceController;->mStatusCode:Ljava/lang/String;

    return-void
.end method

.method public setUiBlockListener(Lcom/android/settings/core/BasePreferenceController$UiBlockListener;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/android/settings/core/BasePreferenceController;->mUiBlockListener:Lcom/android/settings/core/BasePreferenceController$UiBlockListener;

    return-void
.end method

.method public setUiBlockerFinished(Z)V
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/android/settings/core/BasePreferenceController;->mUiBlockerFinished:Z

    return-void
.end method

.method public final startPopupActivity(Landroid/content/Intent;)V
    .locals 2

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "controlId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateDynamicRawDataToIndex(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SettingsPrefController"

    if-eqz v1, :cond_2

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping updateNonIndexableKeys due to empty key "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping updateNonIndexableKeys, key already in list. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected updatePreferenceVisibilityDelegate(Landroidx/preference/Preference;Z)V
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/android/settings/core/BasePreferenceController;->mUiBlockerFinished:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 488
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/core/BasePreferenceController;->savePrefVisibility(Z)V

    if-nez p2, :cond_1

    const/4 p0, 0x0

    .line 494
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
