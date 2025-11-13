.class public Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;
.super Ljava/lang/Object;
.source "BixbyRoutineActionHandler.java"

# interfaces
.implements Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;


# static fields
.field private static CallOption:I = 0x0

.field private static LifeStyleZenState:Z = false

.field private static MessageOption:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

.field private static app_description:Ljava/lang/String;

.field private static app_exist_list:Ljava/lang/String;

.field private static contact_exist_list:Ljava/lang/String;

.field private static people_summary:Ljava/lang/String;

.field private static repeatedCaller:Z

.field private static sEyeComfortDialogIsShowing:Z

.field private static sEyeComfortInitialScheduled:I

.field private static sEyeComfortInitialState:Z

.field private static sEyeComfortInitialStateStored:Z

.field private static sEyeComfortInitialType:I

.field private static sEyeComfortInitialValue:I

.field private static sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# instance fields
.field private mActionInteractors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEyeComfortInstanceId:J

.field private mEyeComfortSelectedOption:Z

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

.field private mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field private zenModePeoplePreferenceController:Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;

.field private zenModePriorityCallsPreferenceController:Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;

.field private zenModePriorityMessagesPreferenceController:Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;

.field private zenModeRepeatCallersPreferenceController:Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    const/4 v0, 0x0

    .line 113
    sput-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->LifeStyleZenState:Z

    const/4 v1, -0x1

    .line 114
    sput v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 115
    sput v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    .line 116
    sput-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    const-string v1, ""

    .line 117
    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->people_summary:Ljava/lang/String;

    .line 118
    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_description:Ljava/lang/String;

    .line 120
    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    .line 121
    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    .line 390
    sput-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortDialogIsShowing:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 394
    iput-wide v1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortInstanceId:J

    .line 89
    new-instance p0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/SoundSettingsActionInteractor;

    invoke-direct {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/SoundSettingsActionInteractor;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applyFlipFont(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 530
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "samsung.settings.flipfont.APPLY_NEW_FONT"

    .line 531
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.flipfont.FlipFontReceiver"

    .line 532
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ""

    .line 533
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "default"

    :cond_0
    const-string v0, "flipfontName"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 534
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static calculateAppSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 275
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getApp_exist_list()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_zen_items_none_allowed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, ";"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, ":"

    .line 289
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v6, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 290
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 293
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_zen_items_none_allowed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 298
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_zen_items_one_allowed:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 300
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 299
    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 301
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_zen_items_two_allowed:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 303
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    .line 304
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v2

    .line 302
    invoke-virtual {p0, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 305
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_zen_items_more_allowed:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 307
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v3

    .line 308
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v2

    .line 309
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    .line 306
    invoke-virtual {p0, v0, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static calculatePeopleSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 239
    sget v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    .line 240
    sget v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    float-to-int v1, v1

    .line 242
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getRepeatedCaller()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 247
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 248
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-ne v0, v3, :cond_2

    if-ne v1, v3, :cond_2

    .line 249
    sget-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_2
    if-eqz v2, :cond_3

    .line 251
    sget v0, Lcom/android/settings/R$string;->sec_zen_people_summery_allow_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v6, :cond_4

    .line 254
    sget v0, Lcom/android/settings/R$string;->sec_zen_people_summery_allow_all:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v0, :cond_6

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 259
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContact_exist_list()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v5

    .line 260
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 261
    aget-object v3, v1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 264
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->sec_dnd_select_contact:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_6
    sget v0, Lcom/android/settings/R$string;->sec_zen_people_summery_allow_some:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppSummary()Ljava/lang/String;
    .locals 1

    .line 235
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_description:Ljava/lang/String;

    return-object v0
.end method

.method public static getApp_exist_list()Ljava/lang/String;
    .locals 1

    .line 191
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    return-object v0
.end method

.method public static getContact_exist_list()Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    return-object v0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private getFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_0

    .line 510
    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 512
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object p0
.end method

.method private getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    .line 503
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 505
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    .line 97
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLockPatterUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 519
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public static getPeoplesummary()Ljava/lang/String;
    .locals 1

    .line 227
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->people_summary:Ljava/lang/String;

    return-object v0
.end method

.method public static getRepeatedCaller()Z
    .locals 1

    .line 175
    sget-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    return v0
.end method

.method private hasEnrolledFace(Landroid/content/Context;)Z
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 439
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 442
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    const-string p1, "There is no face."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private hasEnrolledFingerprints(Landroid/content/Context;)Z
    .locals 0

    .line 448
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 449
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 452
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    const-string p1, "There is no fingerprint."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isDeletedFaceState(Landroid/content/Context;ZZ)Z
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->hasEnrolledFace(Landroid/content/Context;)Z

    move-result p0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isDeletedFingerprintState(Landroid/content/Context;ZZ)Z
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    move-result p0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEyeComfortDialogShowing()Z
    .locals 1

    .line 397
    sget-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortDialogIsShowing:Z

    return v0
.end method

.method private isSupportedFace(Landroid/content/Context;)Z
    .locals 0

    .line 497
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportedFingerprint(Landroid/content/Context;)Z
    .locals 0

    .line 492
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getFingerprintManager(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setAppSummary(Landroid/content/Context;)V
    .locals 0

    .line 231
    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->calculateAppSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_description:Ljava/lang/String;

    return-void
.end method

.method public static setCallOption(I)V
    .locals 3

    .line 161
    sput p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    .line 162
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setContentResolver(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private setDndSummary(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V
    .locals 6

    const/high16 v0, -0x40800000    # -1.0f

    .line 333
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "messages_options"

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "call_options"

    .line 334
    invoke-virtual {p2, v2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v2, "app_options"

    const-string v3, ""

    .line 335
    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "repeat_options"

    invoke-virtual {p2, v5, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "contact_options"

    .line 337
    invoke-virtual {p2, v5, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    float-to-int v1, v1

    .line 338
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    float-to-int v0, v0

    .line 339
    invoke-static {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setCallOption(I)V

    .line 340
    invoke-static {v4}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setRepeatedCaller(Z)V

    .line 341
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppListMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 342
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 344
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    .line 346
    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppSummary(Landroid/content/Context;)V

    .line 347
    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    return-void
.end method

.method public static setEyeComfortDialogShowing(Z)V
    .locals 0

    .line 401
    sput-boolean p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortDialogIsShowing:Z

    return-void
.end method

.method private static setEyeComfortInitialValues(Landroid/content/Context;)V
    .locals 4

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter_opacity"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialValue:I

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialState:Z

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blue_light_filter_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialType:I

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter_scheduled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialScheduled:I

    .line 409
    sput-boolean v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialStateStored:Z

    return-void
.end method

.method public static setPeoplesummary(Landroid/content/Context;)V
    .locals 0

    .line 223
    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->calculatePeopleSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->people_summary:Ljava/lang/String;

    return-void
.end method

.method public static setRepeatedCaller(Z)V
    .locals 0

    .line 171
    sput-boolean p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    return-void
.end method

.method private setZenModeBackend(Landroid/content/Context;)V
    .locals 0

    .line 131
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void
.end method

.method private unlockWithFace(Landroid/content/Context;Z)V
    .locals 3

    .line 480
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockWithFace : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    if-eqz p2, :cond_1

    .line 485
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_0

    .line 487
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :goto_0
    return-void
.end method

.method private unlockWithFingerprint(Landroid/content/Context;Z)V
    .locals 3

    .line 468
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockWithFingerprint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 473
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCallOption()F
    .locals 2

    .line 166
    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallOption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    int-to-float p0, p0

    return p0
.end method

.method public getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback<",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            ">;)V"
        }
    .end annotation

    .line 541
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v1

    goto :goto_1

    :sswitch_0
    const-string v0, "routine_font_style_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "sec_screen_mode_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "sec_touch_sensitivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "sec_unlock_with_biometrics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "LifeStyle/DND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "sec_eye_comfort_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    const-string v2, "toggle_value"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 551
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    if-nez v0, :cond_6

    .line 552
    new-instance v0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    .line 554
    :cond_6
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    .line 555
    iget-object v2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->getScreenModeRecover()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v2

    :cond_7
    int-to-float v1, v2

    .line 558
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "screen_mode_routine_recover_key"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 559
    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 564
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    .line 565
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 566
    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_2

    .line 578
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    .line 579
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "fingerprint_default_value"

    invoke-virtual {p3, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const-string v2, "face_default_value"

    .line 580
    invoke-virtual {p3, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const-string v2, "unlock_with_fingerprint"

    .line 581
    invoke-virtual {p3, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const-string v2, "unlock_with_face"

    .line 582
    invoke-virtual {p3, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 583
    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    .line 588
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    const-string v1, "font_style_key"

    const-string v2, ""

    .line 589
    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const-string v1, "font_package_name_key"

    .line 590
    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    const-string v1, "original_font_style_key"

    .line 591
    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 592
    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_2

    .line 571
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    .line 572
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 573
    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_2

    .line 544
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->newInstance()Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    move-result-object v0

    const-string v1, "true"

    .line 545
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    .line 546
    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    .line 597
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    .line 598
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    goto :goto_3

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bd049ab -> :sswitch_5
        -0x72290020 -> :sswitch_4
        -0x579c6379 -> :sswitch_3
        0x2da60931 -> :sswitch_2
        0x31869e2d -> :sswitch_1
        0x4ddbe8f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getLifeStyleZenState()Z
    .locals 0

    .line 147
    sget-boolean p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->LifeStyleZenState:Z

    return p0
.end method

.method public getMessageOption()F
    .locals 2

    .line 156
    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageOption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    return p0
.end method

.method public getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;",
            "J",
            "Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 604
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "routine_font_style_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "sec_screen_mode_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "sec_touch_sensitivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "sec_unlock_with_biometrics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "LifeStyle/DND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "sec_eye_comfort_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const-string v0, ""

    const-string v2, "toggle_value"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v1, "font_style_key"

    .line 667
    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 616
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    if-nez v1, :cond_6

    .line 617
    new-instance v1, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    .line 619
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    .line 620
    invoke-virtual {v1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->getScreenModeRoutineItems()Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 621
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "screen_mode_routine_key"

    invoke-virtual {p3, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v2, v2

    .line 622
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->getPositionByValue(I)I

    move-result v2

    .line 623
    invoke-virtual {v1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->getNameStringArrary()[Ljava/lang/String;

    move-result-object v1

    if-ltz v2, :cond_7

    .line 626
    aget-object v0, v1, v2

    .line 628
    :cond_7
    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 657
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContentResolver(Landroid/content/Context;)V

    .line 658
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 660
    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 662
    :cond_8
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 644
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "unlock_with_fingerprint"

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "unlock_with_face"

    .line 645
    invoke-virtual {p3, v2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/settings/R$string;->sec_fingerprint:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    .line 648
    sget v1, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_1

    :cond_9
    sget v1, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 649
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/settings/R$string;->sec_face_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    .line 651
    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_2

    :cond_a
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_3

    .line 633
    :pswitch_4
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParameterLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setDndSummary(Landroid/content/Context;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;)V

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getPeoplesummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getAppSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_3

    .line 607
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 609
    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    goto :goto_3

    .line 611
    :cond_b
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;->setResponse(Ljava/lang/Object;)V

    .line 672
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    .line 673
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V

    goto :goto_4

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bd049ab -> :sswitch_5
        -0x72290020 -> :sswitch_4
        -0x579c6379 -> :sswitch_3
        0x2da60931 -> :sswitch_2
        0x31869e2d -> :sswitch_1
        0x4ddbe8f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getZenModeRepeatCallersPreferenceController()Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->zenModeRepeatCallersPreferenceController:Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;

    return-object p0
.end method

.method public isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 1

    .line 317
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "sec_unlock_with_biometrics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0

    .line 326
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    .line 327
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object p0

    return-object p0

    .line 329
    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0
.end method

.method public onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    .line 679
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "routine_font_style_tag"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "sec_screen_mode_routine"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "sec_touch_sensitivity"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "sec_unlock_with_biometrics"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "LifeStyle/DND"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_0

    :sswitch_5
    const-string v1, "sec_eye_comfort_routine"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    const-string v1, "toggle_value"

    const-string v5, ""

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v1, "font_package_name_key"

    .line 811
    invoke-virtual {v9, v1, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->applyFlipFont(Landroid/content/Context;Ljava/lang/String;)V

    .line 812
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    invoke-interface {v12, v1}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    goto/16 :goto_3

    .line 714
    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    if-nez v1, :cond_6

    .line 715
    new-instance v1, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-direct {v1, v7}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    :cond_6
    const/high16 v1, 0x40800000    # 4.0f

    .line 717
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "screen_mode_routine_key"

    invoke-virtual {v9, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 718
    iget-object v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->setScreenMode(I)V

    .line 719
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.SCREEN_MODE_ROUTINE_ACTION"

    .line 720
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 723
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    invoke-interface {v12, v1}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    goto/16 :goto_3

    .line 799
    :pswitch_2
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v1, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 800
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContentResolver(Landroid/content/Context;)V

    const-string v4, "auto_adjust_touch"

    if-eqz v1, :cond_7

    .line 802
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 804
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 806
    :goto_1
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    invoke-interface {v12, v1}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    goto/16 :goto_3

    .line 764
    :pswitch_3
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_8

    .line 765
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getLockPatterUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 768
    :cond_8
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 769
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    const-string v1, "onPerformReverseAction can not be started because PPP isn\'t registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(I)V

    invoke-interface {v12, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    return-void

    .line 774
    :cond_9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "fingerprint_default_value"

    invoke-virtual {v9, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "unlock_with_fingerprint"

    .line 775
    invoke-virtual {v9, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "face_default_value"

    .line 776
    invoke-virtual {v9, v4, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "unlock_with_face"

    .line 777
    invoke-virtual {v9, v5, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 779
    invoke-direct {v0, v7, v3, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isDeletedFingerprintState(Landroid/content/Context;ZZ)Z

    move-result v2

    const/16 v5, 0x3e9

    if-nez v2, :cond_a

    .line 780
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    const-string v1, "fingerprint was removed after registered action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(I)V

    invoke-interface {v12, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    return-void

    .line 785
    :cond_a
    invoke-direct {v0, v7, v1, v4}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isDeletedFaceState(Landroid/content/Context;ZZ)Z

    move-result v2

    if-nez v2, :cond_b

    .line 786
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    const-string v1, "face was removed after registered action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(I)V

    invoke-interface {v12, v0}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    return-void

    .line 791
    :cond_b
    invoke-direct {v0, v7, v3}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unlockWithFingerprint(Landroid/content/Context;Z)V

    .line 792
    invoke-direct {v0, v7, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unlockWithFace(Landroid/content/Context;Z)V

    .line 794
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    invoke-interface {v12, v1}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    goto/16 :goto_3

    .line 727
    :pswitch_4
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    if-nez v1, :cond_c

    .line 728
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setZenModeBackend(Landroid/content/Context;)V

    .line 730
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->setLifeStyleZenModeoff()V

    .line 731
    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPerformAction KEY_DND_STATE = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v13, "dnd_switch"

    invoke-virtual {v9, v13, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v9, v13, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v4, 0x0

    .line 733
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v14, "messages_options"

    invoke-virtual {v9, v14, v13}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 734
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v14, "call_options"

    invoke-virtual {v9, v14, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v14, "app_options"

    .line 735
    invoke-virtual {v9, v14, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "repeat_options"

    .line 736
    invoke-virtual {v9, v15, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v15, "contact_options"

    .line 737
    invoke-virtual {v9, v15, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "onPerformAction: DND_state true"

    .line 738
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPerformAction: before_message_option "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformAction: before_call_option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformAction: before_repeat_option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformAction: before_app_list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformAction: before_contact_list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 744
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setLifeStyleZenState(Z)V

    float-to-int v2, v13

    .line 745
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    float-to-int v2, v4

    .line 746
    invoke-static {v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setCallOption(I)V

    .line 747
    invoke-static {v6}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setRepeatedCaller(Z)V

    .line 748
    new-instance v2, Ljava/util/HashSet;

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppListMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 749
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    .line 750
    new-instance v2, Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v15, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 751
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    .line 752
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/RoutineSdkProvider;->getInstance()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;->getRoutineInfoManager()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineInfoManager;

    move-result-object v1

    invoke-interface {v1, v7, v10, v11}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineInfoManager;->getRoutineByActionInstanceId(Landroid/content/Context;J)Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 754
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 755
    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 757
    :cond_d
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v1, v5}, Lcom/android/settings/notification/zen/ZenModeBackend;->setLifeStyleZenMode(Ljava/lang/String;)V

    .line 759
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    invoke-interface {v12, v1}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    goto/16 :goto_3

    .line 682
    :pswitch_5
    sget-boolean v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialStateStored:Z

    if-nez v2, :cond_11

    iget-wide v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortInstanceId:J

    cmp-long v2, v10, v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isEyeComfortDialogShowing()Z

    move-result v2

    if-nez v2, :cond_11

    .line 683
    :cond_e
    iput-wide v10, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortInstanceId:J

    .line 685
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortSelectedOption:Z

    .line 687
    sget-boolean v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialStateStored:Z

    if-nez v1, :cond_f

    .line 688
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setEyeComfortInitialValues(Landroid/content/Context;)V

    .line 691
    :cond_f
    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instanceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortInstanceId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " selected option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortSelectedOption:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eye comfort initial state :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialScheduled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialState:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-boolean v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortSelectedOption:Z

    if-eqz v2, :cond_10

    .line 695
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 696
    const-class v3, Lcom/samsung/android/settings/display/bixbyroutines/EyeComfortRoutineActivity;

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 697
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 698
    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 700
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blue_light_filter"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 702
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.bluelightfilter"

    const-string v5, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v3, 0x19

    const-string v4, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    .line 703
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    invoke-virtual {v7, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 707
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performed action set eye comfort state : true "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_11
    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;

    sget-object v2, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Default;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    invoke-interface {v12, v1}, Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult;)V

    .line 817
    :goto_3
    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    .line 818
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V

    goto :goto_4

    :cond_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bd049ab -> :sswitch_5
        -0x72290020 -> :sswitch_4
        -0x579c6379 -> :sswitch_3
        0x2da60931 -> :sswitch_2
        0x31869e2d -> :sswitch_1
        0x4ddbe8f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)V
    .locals 7

    .line 824
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "routine_font_style_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "sec_screen_mode_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "sec_touch_sensitivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "sec_unlock_with_biometrics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "LifeStyle/DND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_0

    :sswitch_5
    const-string v0, "sec_eye_comfort_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "original_font_style_key"

    const-string v1, ""

    .line 900
    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->applyFlipFont(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 847
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    if-nez v0, :cond_6

    .line 848
    new-instance v0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 850
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "screen_mode_routine_recover_key"

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 851
    iget-object v1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mScreenModeRoutineHelper:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->setScreenMode(I)V

    .line 853
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.SCREEN_MODE_ROUTINE_ACTION"

    .line 854
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 889
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "toggle_value"

    invoke-virtual {p3, v3, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 890
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContentResolver(Landroid/content/Context;)V

    const-string v3, "auto_adjust_touch"

    if-eqz v0, :cond_7

    .line 892
    invoke-direct {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 894
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 871
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_8

    .line 872
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getLockPatterUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 875
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 876
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    const-string v1, "onPerformReverseAction can not be started because PPP isn\'t registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "fingerprint_default_value"

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "face_default_value"

    .line 880
    invoke-virtual {p3, v2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 882
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unlockWithFingerprint(Landroid/content/Context;Z)V

    .line 883
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unlockWithFace(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 860
    :pswitch_4
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPerformReverseAction KEY_DND_STATE = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "dnd_switch"

    invoke-virtual {p3, v4, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {p3, v4, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 862
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setLifeStyleZenState(Z)V

    .line 863
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    if-nez v0, :cond_a

    .line 864
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setZenModeBackend(Landroid/content/Context;)V

    .line 866
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->setLifeStyleZenModeoff()V

    goto/16 :goto_2

    .line 827
    :pswitch_5
    iget-wide v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortInstanceId:J

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isEyeComfortDialogShowing()Z

    move-result v0

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialStateStored:Z

    if-eqz v0, :cond_c

    .line 828
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reverse instanceId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortInstanceId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " selected option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mEyeComfortSelectedOption:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContentResolver(Landroid/content/Context;)V

    .line 830
    invoke-direct {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialScheduled:I

    const-string v4, "blue_light_filter_scheduled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 831
    invoke-direct {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialValue:I

    const-string v4, "blue_light_filter_opacity"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 832
    invoke-direct {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialType:I

    const-string v4, "blue_light_filter_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 833
    invoke-direct {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-boolean v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialState:Z

    const-string v4, "blue_light_filter"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 836
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.bluelightfilter"

    const-string v5, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 837
    sget-boolean v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialState:Z

    if-eqz v3, :cond_b

    const/16 v3, 0x18

    goto :goto_1

    :cond_b
    const/16 v3, 0x19

    :goto_1
    const-string v4, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 839
    sput-boolean v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialStateStored:Z

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restored eye comfort initial state :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialScheduled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialState:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 906
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;J)V

    goto :goto_3

    :cond_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bd049ab -> :sswitch_5
        -0x72290020 -> :sswitch_4
        -0x579c6379 -> :sswitch_3
        0x2da60931 -> :sswitch_2
        0x31869e2d -> :sswitch_1
        0x4ddbe8f7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 6

    .line 965
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v2

    goto :goto_1

    :sswitch_0
    const-string v0, "sec_unlock_with_biometrics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "LifeStyle/DND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "sec_eye_comfort_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    const/16 v3, 0x3e8

    const-string v4, "Error"

    const-string v5, "Action not executed due to some reason"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eq p3, v3, :cond_5

    const/16 v0, 0x3e9

    if-eq p3, v0, :cond_4

    .line 1002
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1003
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    .line 997
    :cond_4
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    sget p2, Lcom/android/settings/R$string;->sec_unlock_with_biometrics_not_perform_because_biometrics_data_was_removed_err_msg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0

    .line 994
    :cond_5
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    sget p2, Lcom/android/settings/R$string;->sec_unlock_with_biometrics_not_perform_err_msg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0

    :pswitch_1
    if-eq p3, v2, :cond_7

    if-eq p3, v3, :cond_6

    .line 986
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->setDialogTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    .line 988
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0

    .line 979
    :cond_6
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    const-string p2, "Currently your account deactivated. Want to activate your account?"

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    const-string p2, "Action not performed"

    .line 980
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->setDialogTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    .line 981
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x8000000

    .line 982
    invoke-static {p1, v1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "Activate"

    .line 983
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->setCustomButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    .line 984
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0

    .line 976
    :cond_7
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    const-string p1, "This Action not available"

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0

    .line 968
    :pswitch_2
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->setDialogTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;

    .line 970
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;->build()Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bd049ab -> :sswitch_2
        -0x72290020 -> :sswitch_1
        -0x579c6379 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 4

    .line 913
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "sec_screen_mode_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "sec_touch_sensitivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "LifeStyle/DND"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "sec_eye_comfort_routine"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 954
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    .line 955
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    move-result-object p0

    return-object p0

    .line 957
    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;->emptyContents()Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    move-result-object p0

    return-object p0

    .line 925
    :pswitch_0
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;-><init>()V

    sget p2, Lcom/android/settings/R$string;->sec_screen_mode_setting:I

    .line 926
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    .line 927
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOnLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    .line 928
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOffLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->sec_screen_mode_summary:I

    .line 929
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    .line 930
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setDefaultSelection(Z)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    .line 931
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->build()Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    move-result-object p0

    return-object p0

    .line 943
    :pswitch_1
    sget p0, Lcom/android/settings/R$string;->increase_touch_sensetivity_summary_screen_protectors:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    sget v0, Lcom/android/settings/R$string;->screen_protectors:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 945
    new-instance p2, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    invoke-direct {p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;-><init>()V

    sget v0, Lcom/android/settings/R$string;->increase_touch_sensetivity_title:I

    .line 946
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->routine_switch_on_text:I

    .line 947
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOnLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->routine_switch_off_text:I

    .line 948
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOffLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p1

    .line 949
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    .line 950
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setDefaultSelection(Z)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    .line 951
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->build()Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    move-result-object p0

    return-object p0

    .line 934
    :pswitch_2
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;-><init>()V

    const-string p1, "Action Title"

    .line 935
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    const-string p1, "Option1"

    .line 936
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOnLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    const-string p1, "Option2"

    .line 937
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOffLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    .line 938
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setDefaultSelection(Z)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    .line 939
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->build()Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    move-result-object p0

    return-object p0

    .line 916
    :pswitch_3
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;-><init>()V

    sget p2, Lcom/android/settings/R$string;->sec_eye_comfort_title:I

    .line 917
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->switch_on_text:I

    .line 918
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOnLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->switch_off_text:I

    .line 919
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setOffLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->sec_eye_comfort_description:I

    .line 920
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    .line 921
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->setDefaultSelection(Z)Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;

    move-result-object p0

    .line 922
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate$Builder;->build()Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7bd049ab -> :sswitch_3
        -0x72290020 -> :sswitch_2
        0x2da60931 -> :sswitch_1
        0x31869e2d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAppListMigration(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "/"

    .line 355
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ";"

    .line 356
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 358
    array-length v3, v2

    const/4 v4, 0x0

    move-object v6, v0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v7, v2, v5

    .line 359
    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 360
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":0"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 361
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 364
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v6, p1

    .line 371
    :cond_4
    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppListMigration, migration List= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appList= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public setApp_exist_list(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, ""

    .line 179
    sput-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setApp_exist_list: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setContact_exist_list(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, ""

    .line 195
    sput-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setContact_exist_list: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLifeStyleZenState(Z)V
    .locals 0

    .line 143
    sput-boolean p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->LifeStyleZenState:Z

    return-void
.end method

.method public setMessageOption(I)V
    .locals 2

    .line 151
    sget-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMessageOption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p0, p1

    .line 152
    sput p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    return-void
.end method

.method public setZenModePeoplePreferenceController(Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->zenModePeoplePreferenceController:Lcom/android/settings/notification/zen/LifeStyleZenModePeoplePreferenceController;

    return-void
.end method

.method public setZenModePriorityCallsPreferenceController(Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->zenModePriorityCallsPreferenceController:Lcom/samsung/android/settings/notification/zen/ZenModePriorityCallsPreferenceController;

    return-void
.end method

.method public setZenModePriorityMessagesPreferenceController(Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->zenModePriorityMessagesPreferenceController:Lcom/samsung/android/settings/notification/zen/ZenModePriorityMessagesPreferenceController;

    return-void
.end method

.method public setZenModeRepeatCallersPreferenceController(Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->zenModeRepeatCallersPreferenceController:Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;

    return-void
.end method
