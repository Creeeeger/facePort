.class public Lcom/samsung/android/settings/display/SecDreamSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;,
        Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;,
        Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;
    }
.end annotation


# static fields
.field private static SCREEN_SAVER_CURRENT_COMPONENT:I

.field private static SCREEN_SAVER_ON_OFF:I

.field private static SCREEN_SAVER_PREVIEW:I

.field private static SCREEN_SAVER_SELECT_WHEN_TO_USE:I

.field private static SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddedDreamInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private mBlockListClickEvent:Z

.field private mContext:Landroid/content/Context;

.field private mForceRefreshFromBackend:Z

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private mOldDreamEnabled:Z

.field private final mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

.field private mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field private mScreenSaverObserver:Landroid/database/ContentObserver;

.field private mSkipRemoveAddPreferenceUpdateFromTouch:Z


# direct methods
.method public static synthetic $r8$lambda$bm_zGfbWU8clJB9UHP9S59T_JBo(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->lambda$onCreateOptionsMenu$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlockListClickEvent(Lcom/samsung/android/settings/display/SecDreamSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBlockListClickEvent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecDreamSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBlockListClickEvent(Lcom/samsung/android/settings/display/SecDreamSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBlockListClickEvent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForceRefreshFromBackend(Lcom/samsung/android/settings/display/SecDreamSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mForceRefreshFromBackend:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSkipRemoveAddPreferenceUpdateFromTouch(Lcom/samsung/android/settings/display/SecDreamSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSkipRemoveAddPreferenceUpdateFromTouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshFromBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateOnOffLoggingHelper(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->updateOnOffLoggingHelper()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSCREEN_SAVER_CURRENT_COMPONENT()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_CURRENT_COMPONENT:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetSCREEN_SAVER_PREVIEW()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_PREVIEW:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetSCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/SecDreamSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smlogD(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mForceRefreshFromBackend:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSkipRemoveAddPreferenceUpdateFromTouch:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBlockListClickEvent:Z

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0

    .line 227
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 228
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 229
    invoke-interface {p1, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 230
    new-instance p2, Lcom/samsung/android/settings/display/SecDreamSettings$2;

    invoke-direct {p2, p0, p5}, Lcom/samsung/android/settings/display/SecDreamSettings$2;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p1
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 258
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->screensaver_settings_summary_dock:I

    .line 259
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->screensaver_settings_summary_sleep:I

    .line 260
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->screensaver_settings_summary_either_short:I

    .line 261
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 263
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v4

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 267
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->screensaver_settings_when_to_dream:I

    .line 268
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/display/SecDreamSettings$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$4;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    .line 269
    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/samsung/android/settings/display/SecDreamSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$3;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private initActiveItemAndRefreshIfNeed(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 686
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_2

    .line 689
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 690
    iget-boolean v2, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 696
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v0, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 699
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v0

    .line 703
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 705
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->toDreamInfoString(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 708
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_6
    :goto_2
    return v0
.end method

.method public static isDreamEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 748
    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreateOptionsMenu$0()V
    .locals 1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private static varargs logD(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private refreshFromBackend()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "refreshFromBackend()"

    .line 340
    invoke-static {v2, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    .line 343
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v2}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v2

    .line 344
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 346
    iget-boolean v4, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSkipRemoveAddPreferenceUpdateFromTouch:Z

    if-nez v4, :cond_c

    .line 347
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->initActiveItemAndRefreshIfNeed(Ljava/util/List;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 348
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mForceRefreshFromBackend:Z

    .line 349
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    if-nez v4, :cond_0

    .line 350
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 353
    new-instance v4, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 354
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 358
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 359
    sget v6, Lcom/android/settings/R$string;->sec_screensaver_settings_summary_wo_dock:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 361
    :cond_1
    sget v6, Lcom/android/settings/R$string;->sec_screensaver_settings_summary:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 363
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/settings/R$string;->sec_screensaver_settings_summary_charging:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 367
    :cond_2
    invoke-virtual {v4, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 370
    new-instance v4, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;)V

    .line 371
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 373
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 375
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 376
    new-instance v6, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7, v5}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    .line 377
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 378
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/SecDreamSettings;->toDreamInfoString(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_3

    .line 380
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setLastPreference(Ljava/lang/Boolean;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    :cond_4
    new-instance v2, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    .line 384
    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setDefaultRoundButtonStyle()V

    .line 385
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sec_screen_saver_preview:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v3, Lcom/samsung/android/settings/display/SecDreamSettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$5;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 395
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 396
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v2, :cond_5

    .line 397
    array-length v3, v2

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 398
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 401
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    goto/16 :goto_5

    :cond_6
    move v1, v0

    .line 405
    :goto_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 406
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 407
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v3

    .line 408
    instance-of v4, v2, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    if-eqz v4, :cond_9

    .line 409
    check-cast v2, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    .line 410
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v4}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 411
    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->updateDataChanged()V

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_8

    .line 413
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->-$$Nest$fgetmInfo(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 414
    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setChecked(Z)V

    goto :goto_4

    .line 416
    :cond_8
    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setChecked(Z)V

    goto :goto_4

    .line 419
    :cond_9
    instance-of v3, v2, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    if-eqz v3, :cond_a

    .line 420
    check-cast v2, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;

    .line 421
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v3}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/SecDreamSettings$NoneDreamInfoPreference;->setChecked(Z)V

    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 424
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    if-eqz v0, :cond_d

    .line 425
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 429
    :cond_c
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mSkipRemoveAddPreferenceUpdateFromTouch:Z

    .line 430
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPreviewButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    if-eqz v0, :cond_d

    .line 431
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_d
    :goto_5
    return-void
.end method

.method private registerObserver(Landroid/os/Handler;)V
    .locals 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/samsung/android/settings/display/SecDreamSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$1;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screensaver_components"

    .line 114
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 113
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screensaver_enabled"

    .line 116
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    .line 115
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private toDreamInfoString(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Ljava/lang/String;
    .locals 1

    .line 711
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    .line 712
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 713
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 714
    iget-object v0, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const-string v0, "settings="

    .line 715
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p1, 0x5d

    .line 717
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unregisterObserver()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mScreenSaverObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateOnOffLoggingHelper()V
    .locals 5

    .line 738
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 740
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mOldDreamEnabled:Z

    if-eq v1, v0, :cond_1

    const/16 v1, 0x2f

    .line 741
    sget v2, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_ON_OFF:I

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 742
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mOldDreamEnabled:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x244

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 132
    sget p0, Lcom/android/settings/R$string;->help_url_dreams:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2f

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onActivityCreated(%s)"

    .line 181
    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x30

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x5

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->description_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 188
    sget v1, Lcom/android/settings/R$color;->sec_widget_description_link_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 190
    sget v1, Lcom/android/settings/R$dimen;->sec_body_text_side_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 191
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 192
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 193
    sget v4, Lcom/android/settings/R$dimen;->sec_body_text_top_padding:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 194
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 197
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    sget v1, Lcom/android/settings/R$string;->sec_screensaver_settings_summary:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 200
    :cond_0
    sget v1, Lcom/android/settings/R$string;->sec_screensaver_settings_summary_wo_dock:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$string;->sec_screensaver_settings_summary_charging:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    new-instance p1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 208
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onAttach(%s)"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 139
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "onCreate(%s)"

    .line 149
    invoke-static {v2, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->screensaver_settings_title:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 154
    new-instance p1, Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    .line 155
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDreamSettings;->isDreamEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mOldDreamEnabled:Z

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mAddedDreamInfos:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 160
    sget p1, Lcom/android/settings/R$integer;->screen_saver_preview:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_PREVIEW:I

    .line 161
    sget p1, Lcom/android/settings/R$integer;->screen_saver_select_when_to_use:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE:I

    .line 162
    sget p1, Lcom/android/settings/R$integer;->screen_saver_select_when_to_use_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_SELECT_WHEN_TO_USE_RADIO_BUTTON:I

    .line 163
    sget p1, Lcom/android/settings/R$integer;->screen_saver_on_off:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_ON_OFF:I

    .line 164
    sget p1, Lcom/android/settings/R$integer;->screen_saver_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    sput p0, Lcom/samsung/android/settings/display/SecDreamSettings;->SCREEN_SAVER_CURRENT_COMPONENT:I

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onCreateDialog(%s)"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onCreateOptionsMenu()"

    .line 213
    invoke-static {v2, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v6

    .line 216
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 217
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p2

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {p2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 219
    sget v4, Lcom/android/settings/R$string;->screensaver_settings_when_to_dream:I

    const/4 v5, 0x0

    new-instance v7, Lcom/samsung/android/settings/display/SecDreamSettings$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/display/SecDreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/MenuItem;

    aput-object p1, p2, v0

    .line 221
    iput-object p2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onDestroyView()"

    .line 175
    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onPause()"

    .line 290
    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->unregisterObserver()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onResume()"

    .line 298
    invoke-static {v2, v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 300
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBlockListClickEvent:Z

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mForceRefreshFromBackend:Z

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->refreshFromBackend()V

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mPackageReceiver:Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->registerObserver(Landroid/os/Handler;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onStart()"

    .line 169
    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    return-void
.end method
