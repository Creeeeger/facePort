.class public Lcom/samsung/android/util/DecorCaptionResources;
.super Ljava/lang/Object;
.source "DecorCaptionResources.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DecorCaptionResources"


# instance fields
.field private blacklist mAppResources:Landroid/content/res/Resources;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLocale:Ljava/util/Locale;

.field private blacklist mMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mTmpValue:Landroid/util/TypedValue;

.field private final blacklist mTmpValueLock:Ljava/lang/Object;

.field private blacklist mUseResourcesFromContext:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/util/DecorCaptionResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mTmpValueLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mTmpValue:Landroid/util/TypedValue;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mContext:Landroid/content/Context;

    .line 54
    if-nez p2, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mUseResourcesFromContext:Z

    goto :goto_0

    .line 58
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mUseResourcesFromContext:Z

    .line 61
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mAppResources:Landroid/content/res/Resources;

    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mAppResources:Landroid/content/res/Resources;

    .line 65
    const-string v0, "DecorCaptionResources"

    const-string v1, "The app context dosen\'t exist."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/util/DecorCaptionResources;->updateConfiguration()V

    .line 69
    return-void
.end method

.method private blacklist obtainTempTypedValue()Landroid/util/TypedValue;
    .locals 3

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "tmpValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mTmpValue:Landroid/util/TypedValue;

    if-eqz v2, :cond_0

    .line 230
    move-object v0, v2

    .line 231
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mTmpValue:Landroid/util/TypedValue;

    .line 233
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-nez v0, :cond_1

    .line 235
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    return-object v1

    .line 237
    :cond_1
    return-object v0

    .line 233
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private blacklist releaseTempTypedValue(Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;

    .line 246
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mTmpValueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v1, :cond_0

    .line 248
    iput-object p1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mTmpValue:Landroid/util/TypedValue;

    .line 250
    :cond_0
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateDisplayMetrics()V
    .locals 8

    .line 104
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDisplayMetrics: base config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DecorCaptionResources"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 108
    .local v0, "densityDpi":I
    iget-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 109
    const/16 v0, 0xa0

    .line 111
    iget-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mContext:Landroid/content/Context;

    .line 112
    const-string v3, "desktopmode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 113
    .local v2, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    .line 115
    const/16 v0, 0x118

    .line 118
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDisplayMetrics: isDexEnabled=true, densityDpi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    goto :goto_1

    .line 119
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mUseResourcesFromContext:Z

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 122
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .local v3, "displayId":I
    goto :goto_0

    .line 125
    .end local v3    # "displayId":I
    :cond_2
    const/4 v3, 0x0

    .line 126
    .restart local v3    # "displayId":I
    const-string/jumbo v4, "updateDisplayMetrics: display=null"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v4

    move v0, v4

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDisplayMetrics: displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", densityDpi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_2

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t call getBaseDisplayDensity() on IWindowManager. Remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 119
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayId":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    nop

    .line 136
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iput v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 137
    iget-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 138
    iget-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDisplayMetrics: density="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 144
    .local v2, "activityThread":Landroid/app/ActivityThread;
    const/high16 v3, 0x3f800000    # 1.0f

    .line 145
    .local v3, "dssFactor":F
    if-eqz v2, :cond_4

    .line 146
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getDssScale()F

    move-result v4

    move v3, v4

    .line 149
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/util/DecorCaptionResources;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDisplayMetrics: packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dsf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_5

    .line 152
    iget-object v5, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v3

    const v7, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    iput v6, v5, Landroid/util/DisplayMetrics;->density:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .end local v2    # "activityThread":Landroid/app/ActivityThread;
    .end local v3    # "dssFactor":F
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 154
    :catch_1
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDisplayMetrics: error while getting dsf. e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDisplayMetrics: dst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sdst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method


# virtual methods
.method public blacklist getDensity()F
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public blacklist getDensityDpi()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public blacklist getDimensionPixelSize(I)I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/util/DecorCaptionResources;->obtainTempTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 188
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 189
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 190
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v2, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-direct {p0, v0}, Lcom/samsung/android/util/DecorCaptionResources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 190
    return v1

    .line 192
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 193
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "value":Landroid/util/TypedValue;
    .end local p0    # "this":Lcom/samsung/android/util/DecorCaptionResources;
    .end local p1    # "id":I
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .restart local v0    # "value":Landroid/util/TypedValue;
    .restart local p0    # "this":Lcom/samsung/android/util/DecorCaptionResources;
    .restart local p1    # "id":I
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/samsung/android/util/DecorCaptionResources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    .line 196
    throw v1
.end method

.method public blacklist getLayerDrawable(I)Landroid/graphics/drawable/LayerDrawable;
    .locals 3
    .param p1, "id"    # I

    .line 200
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->createForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVectorDrawable(I)Landroid/graphics/drawable/VectorDrawable;
    .locals 3
    .param p1, "id"    # I

    .line 205
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Landroid/graphics/drawable/VectorDrawable;->createForDensity(Landroid/content/res/Resources;II)Landroid/graphics/drawable/VectorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isNightModeEnabled()Z
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist updateConfiguration()V
    .locals 7

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/util/DecorCaptionResources;->updateDisplayMetrics()V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 76
    .local v0, "activityLocale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 77
    .local v1, "appLocale":Ljava/util/Locale;
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 78
    .local v2, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 79
    .local v3, "sysLocale":Ljava/util/Locale;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sysLocale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appLocale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " activityLocale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DecorCaptionResources"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz v3, :cond_3

    .line 83
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    iput-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched. Get locale from activity config: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_1
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    iput-object v1, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched. Get locale from app config: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 95
    :cond_2
    iput-object v3, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not matched. Get locale from system: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_3
    iput-object v0, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not matched. Get locale from activity config: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/util/DecorCaptionResources;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
