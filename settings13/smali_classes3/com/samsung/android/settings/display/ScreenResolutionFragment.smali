.class public Lcom/samsung/android/settings/display/ScreenResolutionFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ScreenResolutionFragment.java"


# instance fields
.field private mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

.field private mMainTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenChangeState:Z

.field private mScreenResolution:I

.field private mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

.field private mStrBtnFHD:Ljava/lang/String;

.field private mStrBtnHD:Ljava/lang/String;

.field private mStrBtnWQHD:Ljava/lang/String;

.field private mSubTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmApplyButton(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/widget/SecButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mController:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenChangeState(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenResolutionButton(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmScreenChangeState(Lcom/samsung/android/settings/display/ScreenResolutionFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUnsupportedMessage(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->getUnsupportedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mControllers:Ljava/util/List;

    return-void
.end method

.method private buildItemDataInfo()V
    .locals 14

    .line 336
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->screen_resolution_hd:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->screen_resolution_fhd:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    .line 341
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->screen_resolution_wqhd:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    .line 344
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 345
    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 352
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 354
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 355
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/16 v5, 0x4d2

    .line 356
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v2

    const-string v5, "%d"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    const v7, 0x3fe38e39

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    .line 362
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    .line 366
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->screen_resolution_hd_px:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 372
    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->screen_resolution_fhd_px:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 373
    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->screen_resolution_wqhd_px:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 375
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    .line 376
    invoke-virtual {v9, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    const/16 v10, 0x5a0

    if-ne v1, v10, :cond_4

    if-eqz v3, :cond_2

    if-nez v5, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-eqz v3, :cond_3

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    .line 382
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v7, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v12, v7, v10

    double-to-int v3, v12

    int-to-long v12, v3

    invoke-virtual {v9, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v12, v6

    mul-double/2addr v10, v12

    double-to-int v5, v10

    int-to-long v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v7, v10

    double-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {v9, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double/2addr v12, v10

    double-to-int v7, v12

    int-to-long v7, v7

    invoke-virtual {v9, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v0

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    const-string p0, "ScreenResolutionFragment"

    const-string v0, "getInitialDisplaySize() exception!!!"

    .line 347
    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getUnsupportedMessage()Ljava/lang/String;
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 401
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_high_refresh_rate_dynamic_not_supported_in_wqhd:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 403
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_high_refresh_rate_not_supported_in_wqhd:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 3

    const-string v0, "screen_resolution_seekbar"

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    .line 241
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iget v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->buildItemDataInfo()V

    .line 248
    new-instance v0, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->setSubTitleList(Ljava/util/List;)Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->build()Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mItemDataInfo:Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setRadioItemDataInfo(Lcom/samsung/android/settings/widget/RadioItemDataInfo;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setColorFilterEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setDividerEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    .line 257
    new-instance v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->common_apply:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string v0, "screen_resolution_help_description"

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 304
    sget v1, Lcom/android/settings/R$id;->screen_resolution_help_description_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    new-instance v2, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setPreview()V
    .locals 4

    .line 219
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 220
    sget v1, Lcom/android/settings/R$id;->screen_resolution_image_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 224
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    .line 225
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 227
    sget v1, Lcom/android/settings/R$id;->hd_description:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    sget v1, Lcom/android/settings/R$id;->fhd_description:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    sget v1, Lcom/android/settings/R$id;->wqhd_description:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 232
    sget v1, Lcom/android/settings/R$id;->screen_resolution_desc_image:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->screen_resolution_preview_rtl:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    const-string v1, "screen_resolution_seekbar"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mController:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScreenResolutionFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d10

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 185
    sget p0, Lcom/android/settings/R$xml;->sec_screen_resolution:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 122
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->screen_resolution_preview_container:I

    invoke-direct {v0, v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 123
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 125
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->setPreview()V

    .line 128
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v0, "selected_value"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    .line 94
    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mConfiguration:Landroid/content/res/Configuration;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->init()V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->setPreview()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    .line 198
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 157
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    if-eqz v1, :cond_1

    .line 158
    iget v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    .line 160
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$1;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 179
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "selected_value"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "selected_value"

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    .line 209
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method
