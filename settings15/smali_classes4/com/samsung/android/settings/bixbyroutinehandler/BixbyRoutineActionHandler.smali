.class public final Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;


# static fields
.field public static AppFlag:I

.field public static CallOption:I

.field public static ContactFlag:I

.field public static LifeStyleZenState:Z

.field public static MessageOption:F

.field public static app_description:Ljava/lang/String;

.field public static app_exist_list:Ljava/lang/String;

.field public static contact_exist_list:Ljava/lang/String;

.field public static people_summary:Ljava/lang/String;

.field public static repeatedCaller:Z

.field public static sEyeComfortInitialAdaptiveMode:I

.field public static sEyeComfortInitialScheduled:I

.field public static sEyeComfortInitialState:Z

.field public static sEyeComfortInitialType:I

.field public static sEyeComfortInitialValue:I

.field public static sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# instance fields
.field public final mActionInteractors:Ljava/util/List;

.field public mCallback:Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field public mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNetworkCallback:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;

.field public mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

.field public mVpnStateReceiver:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;

.field public mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field public zenModeRepeatCallersPreferenceController:Lcom/android/settings/notification/zen/ZenModeRepeatCallersPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->LifeStyleZenState:Z

    const/4 v1, -0x1

    sput v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    const/high16 v2, -0x40800000    # -1.0f

    sput v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    sput-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->people_summary:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_description:Ljava/lang/String;

    sput v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->AppFlag:I

    sput v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->ContactFlag:I

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    new-instance p0, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/samsung/android/settings/asbase/routine/action/SoundSettingsActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static calculatePeopleSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    sget v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    sget v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    float-to-int v1, v1

    sget-boolean v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    if-ne v1, v5, :cond_0

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    sget-object v6, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-ne v0, v5, :cond_2

    if-ne v1, v5, :cond_2

    sget-boolean v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v2, :cond_3

    const v0, 0x7f142907

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v6, :cond_4

    const v0, 0x7f142906

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v4, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_3
    array-length v2, v1

    if-ge v3, v2, :cond_5

    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120041

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const v0, 0x7f142908

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppFlag()F
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAppFlag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->AppFlag:I

    const-string v2, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->AppFlag:I

    int-to-float v0, v0

    return v0
.end method

.method public static getCallOption()F
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCallOption: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    const-string v2, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    int-to-float v0, v0

    return v0
.end method

.method public static getContactFlag()F
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getContactFlag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->ContactFlag:I

    const-string v2, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->ContactFlag:I

    int-to-float v0, v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static getMessageOption()F
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMessageOption: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    return v0
.end method

.method public static setAppFlag(I)V
    .locals 2

    sput p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->AppFlag:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAppFlag: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->AppFlag:I

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {p0, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static setAppListMigration(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move-object v7, v1

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v8, v3, v6

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    const-string v10, ":0"

    invoke-static {v9, v8, v10}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v7, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-static {v7, v2, v8}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object v7, p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAppListMigration, migration List= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appList= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public static setAppSummary(Landroid/content/Context;)V
    .locals 11

    const-string v0, ":"

    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f1428e9

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_2

    aget-object v8, v1, v6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v10, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1428ea

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1428eb

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1428e8

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    const-string p0, ""

    :goto_2
    sput-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_description:Ljava/lang/String;

    return-void
.end method

.method public static setApp_exist_list(Ljava/util/HashSet;)V
    .locals 5

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    const-string v4, ";"

    invoke-static {v2, v3, v4, v1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setApp_exist_list: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {p0, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCallOption(I)V
    .locals 2

    sput p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->CallOption:I

    const-string/jumbo v0, "setCallOption: "

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContactFlag(I)V
    .locals 2

    sput p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->ContactFlag:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setContactFlag: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->ContactFlag:I

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {p0, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static setContact_exist_list(Ljava/util/List;)V
    .locals 5

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    const-string v4, ","

    invoke-static {v2, v3, v4, v1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setContact_exist_list: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {p0, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMessageOption(I)V
    .locals 2

    const-string/jumbo v0, "setMessageOption: "

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    int-to-float p0, p0

    sput p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->MessageOption:F

    return-void
.end method

.method public static setPeoplesummary(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->calculatePeopleSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->people_summary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x3

    const-string/jumbo v2, "toggle_value"

    const-string v3, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "connect_vpn"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v7, "data_saver_routine"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v7, "routine_font_style_tag"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "sec_touch_sensitivity"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "sec_eye_comfort_shield_routine"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    move v6, v0

    goto :goto_0

    :sswitch_5
    const-string v7, "disconnect_vpn"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_6
    const-string v7, "adaptive_color_tone"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    :cond_6
    move v6, v1

    goto :goto_0

    :sswitch_7
    const-string v7, "accidental_touch_protection"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v7, "sec_unlock_with_biometrics"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_0

    :cond_8
    move v6, v5

    goto :goto_0

    :sswitch_9
    const-string v7, "LifeStyle/DND"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_0

    :cond_9
    move v6, v4

    :goto_0
    packed-switch v6, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object v7, p6

    check-cast v7, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->getCurrentParameterValues(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;)V

    goto :goto_1

    :cond_a
    return-void

    :pswitch_0
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "data_saver_routine"

    new-instance p3, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {p3, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    iget-object p0, p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$0:Landroid/os/Bundle;

    iget-object p2, p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    sget-object p3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p3, p3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance p5, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {p5, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, p5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object p1

    :goto_2
    iget-object p2, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string p4, "default"

    if-ge v4, p2, :cond_c

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p0, p1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_3

    :cond_b
    add-int/2addr v4, v5

    goto :goto_2

    :cond_c
    move-object p0, p4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    move-object p4, p0

    :goto_4
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    const-string p1, "font_style_key"

    const-string p2, ""

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p1, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "font_package_name_key"

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "original_font_style_key"

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "blue_light_filter_opacity"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialValue:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "blue_light_filter"

    invoke-static {p2, p4, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_e

    move p2, v5

    goto :goto_5

    :cond_e
    move p2, v4

    :goto_5
    sput-boolean p2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialState:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p4, "blue_light_filter_type"

    invoke-static {p2, p4, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p5

    xor-int/2addr p5, v5

    const-string v0, "blue_light_filter_scheduled"

    invoke-static {p2, v0, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialScheduled:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p2

    const-string p5, "blue_light_filter_adaptive_mode"

    invoke-static {p1, p5, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialAdaptiveMode:I

    sget-boolean p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialState:Z

    const/4 p2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_f

    move p1, v1

    goto :goto_6

    :cond_f
    move p1, p2

    :goto_6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v2, "blue_light_filter_switch"

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p1

    if-eqz p1, :cond_10

    sget p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialAdaptiveMode:I

    int-to-float p2, p1

    :cond_10
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p5, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result p1

    if-eqz p1, :cond_11

    sget p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialScheduled:I

    int-to-float v1, p1

    :cond_11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    sget p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialType:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    sget p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialValue:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getCurrentParameterValues: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialState:Z

    invoke-static {p1, p3, v3, p2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget p3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialAdaptiveMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialScheduled:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sEyeComfortInitialValue:I

    invoke-static {p1, p2, v3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {p6, p0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    new-instance p3, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-direct {p3, p1}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unregisterNetworkCallback(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unregisterVpnStateReceiver(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    iget-object p1, p1, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->mService:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_12

    iget p4, p1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne p4, v1, :cond_12

    iget-object p1, p1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    goto :goto_7

    :cond_12
    move-object p1, p3

    :goto_7
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    move v4, v5

    :cond_13
    if-nez p1, :cond_14

    goto :goto_8

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getCurrentParameterValues: tag="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", param="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "key_vpn_param"

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {p2, p3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    iget-object p1, p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$0:Landroid/os/Bundle;

    iget-object p3, p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    sget-object p2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p2, p2, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance p5, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {p5, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p3

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->notify()V

    monitor-exit p3

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_4
    const-string/jumbo p0, "sec_touch_sensitivity"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "auto_adjust_touch"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_9

    :cond_15
    const-string p0, "adaptive_color_tone"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "ead_enabled"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_9

    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_off_pocket"

    invoke-static {p0, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    :goto_9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-ne p0, v5, :cond_17

    move v4, v5

    :cond_17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    iget-object p0, p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$0:Landroid/os/Bundle;

    iget-object p2, p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    sget-object p3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p3, p3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    new-instance p5, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {p5, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, p5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p2

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_5
    iget-object p2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez p2, :cond_19

    if-nez p2, :cond_18

    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_18
    iget-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_19
    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;

    invoke-direct {p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;-><init>()V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo p4, "unlock_with_fingerprint"

    invoke-virtual {p3, p4, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "unlock_with_face"

    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object v2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v2

    if-ne v2, v5, :cond_1a

    move v2, v5

    goto :goto_a

    :cond_1a
    move v2, v4

    :goto_a
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v6, 0x100

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p0

    if-ne p0, v5, :cond_1b

    move v4, v5

    :cond_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v5, "fingerprint_default_value"

    invoke-virtual {p1, v5, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v5, "face_default_value"

    invoke-virtual {p1, v5, p0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, p4, p5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "getCurrentParameterValues"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "recovery FP : "

    const-string p2, " perform FP : "

    const-string p4, " recovery Face : "

    invoke-static {p0, v2, p2, v0, p4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " perform Face : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {p6, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    iget-object p1, p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$0:Landroid/os/Bundle;

    iget-object p2, p6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    sget-object p3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->PARAMETER_VALUES:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    iget-object p3, p3, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->a:Ljava/lang/String;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance p5, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {p5, p4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p2

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p2

    return-void

    :catchall_3
    move-exception p0

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x72290020 -> :sswitch_9
        -0x579c6379 -> :sswitch_8
        -0x3eb64d02 -> :sswitch_7
        -0x26a9edc9 -> :sswitch_6
        -0x160b5d2f -> :sswitch_5
        0x8aa233d -> :sswitch_4
        0x2da60931 -> :sswitch_3
        0x4ddbe8f7 -> :sswitch_2
        0x64132145 -> :sswitch_1
        0x66c6ec1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ResponseCallback;)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v1, "data_saver_routine"

    const/4 v2, 0x1

    const-string v3, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    const v4, 0x7f141f4d

    const v5, 0x7f141f4e

    const-string v6, ""

    const v10, 0x7f142e1f

    const v11, 0x7f142e1e

    const/4 v12, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v13, "connect_vpn"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v12, 0x9

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v12, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v13, "routine_font_style_tag"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_0

    :cond_2
    const/4 v12, 0x7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v13, "sec_touch_sensitivity"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_0

    :cond_3
    const/4 v12, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v13, "sec_eye_comfort_shield_routine"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_0

    :cond_4
    const/4 v12, 0x5

    goto :goto_0

    :sswitch_5
    const-string v13, "disconnect_vpn"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_0

    :cond_5
    const/4 v12, 0x4

    goto :goto_0

    :sswitch_6
    const-string v13, "adaptive_color_tone"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_0

    :cond_6
    const/4 v12, 0x3

    goto :goto_0

    :sswitch_7
    const-string v13, "accidental_touch_protection"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_0

    :cond_7
    const/4 v12, 0x2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v13, "sec_unlock_with_biometrics"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_0

    :cond_8
    move v12, v2

    goto :goto_0

    :sswitch_9
    const-string v13, "LifeStyle/DND"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_0

    :cond_9
    const/4 v12, 0x0

    :goto_0
    packed-switch v12, :pswitch_data_0

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object/from16 v6, p6

    check-cast v6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->getParameterLabel(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;)V

    goto :goto_1

    :cond_a
    return-void

    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    const-string v0, "font_style_key"

    invoke-virtual {v9, v0, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    const/4 v0, 0x0

    const-string v1, "blue_light_filter_switch"

    invoke-static {v0, v9, v1}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "blue_light_filter_adaptive_mode"

    invoke-static {v3, v9, v4}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "blue_light_filter_scheduled"

    invoke-virtual {v9, v5, v4}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v4

    if-nez v4, :cond_c

    move v3, v0

    :cond_c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v4, "blue_light_filter_type"

    invoke-virtual {v9, v4, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v4, "blue_light_filter_opacity"

    invoke-virtual {v9, v4, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v1, v1

    if-nez v1, :cond_d

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v1

    const/high16 v5, 0x41200000    # 10.0f

    const v6, 0x7f14252e

    const-string v8, ": "

    if-eqz v1, :cond_f

    float-to-int v1, v3

    if-ne v1, v2, :cond_e

    const v0, 0x7f142378

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f14237e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    const-string v0, "key_vpn_param"

    invoke-virtual {v9, v0, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->getVpnProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->findVpnProfile(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    const-string v2, "getParameterLabel: tag="

    const-string v4, ","

    invoke-static {v2, v8, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_10

    const-string/jumbo v5, "null"

    goto :goto_4

    :cond_10
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_11

    const v0, 0x7f143227

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_11
    iget-object v0, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    :goto_5
    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v1, "toggle_value"

    invoke-virtual {v9, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    goto :goto_6

    :cond_12
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    :goto_6
    return-void

    :pswitch_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v2, "unlock_with_fingerprint"

    invoke-virtual {v9, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "unlock_with_face"

    invoke-virtual {v9, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFingerprint(Landroid/content/Context;)Z

    move-result v4

    const v5, 0x7f1423b3

    const v6, 0x7f1423ba

    const-string v8, " : "

    if-eqz v4, :cond_15

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFace(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_13

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_13
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_14

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_14
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_15
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFingerprint(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_16

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_16
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_18

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_18
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    :goto_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    const-string v0, "getParameterLabel: "

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "messages_options"

    invoke-virtual {v9, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "call_options"

    invoke-virtual {v9, v2, v0}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v2, "app_options"

    invoke-virtual {v9, v2, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v4, "repeat_options"

    invoke-virtual {v9, v4, v3}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "contact_options"

    invoke-virtual {v9, v4, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    float-to-int v1, v1

    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    float-to-int v0, v0

    invoke-static {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setCallOption(I)V

    sput-boolean v3, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-static {v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppListMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    new-instance v0, Ljava/util/ArrayList;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppSummary(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setPeoplesummary(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->people_summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda6;->setResponse(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72290020 -> :sswitch_9
        -0x579c6379 -> :sswitch_8
        -0x3eb64d02 -> :sswitch_7
        -0x26a9edc9 -> :sswitch_6
        -0x160b5d2f -> :sswitch_5
        0x8aa233d -> :sswitch_4
        0x2da60931 -> :sswitch_3
        0x4ddbe8f7 -> :sswitch_2
        0x64132145 -> :sswitch_1
        0x66c6ec1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->NOT_SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "data_saver_routine"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "sec_touch_sensitivity"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "adaptive_color_tone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "accidental_touch_protection"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "sec_unlock_with_biometrics"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/android/settings/datausage/DataUsageUtils;->isRestrictedDataSaver()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportPocketMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFace(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    invoke-interface {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->getSupportTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->isSupported(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;->SUPPORTED:Lcom/samsung/android/sdk/routines/v3/data/SupportStatus;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x579c6379 -> :sswitch_4
        -0x3eb64d02 -> :sswitch_3
        -0x26a9edc9 -> :sswitch_2
        0x2da60931 -> :sswitch_1
        0x64132145 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isSupportedFace(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSupportedFingerprint(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onMigrate(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "command://com.android.settings.command/data_saver_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "1"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->getIntentParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    const-string p0, "0"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->getIntentParam()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-eqz p1, :cond_4

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$ParameterValue;-><init>(Ljava/lang/Boolean;)V

    const-string p1, "data_saver_routine"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->getIntentParam()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/TargetInstanceInfo;->getIntentParam()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    const-string v1, "connect_vpn"

    const-string v2, "data_saver_routine"

    const-string/jumbo v3, "sec_touch_sensitivity"

    const-string v5, "disconnect_vpn"

    const-string v11, "adaptive_color_tone"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const-string v6, ""

    const/4 v14, 0x0

    const-string v12, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    const/16 v16, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v16, 0x9

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v16, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v4, "routine_font_style_tag"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "sec_eye_comfort_shield_routine"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    :goto_0
    move/from16 v16, v4

    goto :goto_1

    :sswitch_5
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/16 v16, 0x4

    goto :goto_1

    :sswitch_6
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/16 v16, 0x3

    goto :goto_1

    :sswitch_7
    const-string v4, "accidental_touch_protection"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_8
    const-string/jumbo v4, "sec_unlock_with_biometrics"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/16 v16, 0x1

    goto :goto_1

    :sswitch_9
    const-string v4, "LifeStyle/DND"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    move/from16 v16, v14

    :goto_1
    packed-switch v16, :pswitch_data_0

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->onPerformAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V

    goto :goto_2

    :cond_a
    return-void

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/datausage/DataUsageUtils;->isSupportDataSaver(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v1, v7}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPerformAction_dataSaverEnabled : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_3

    :cond_b
    const-string v0, "Fail_not_Available"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    :goto_3
    return-void

    :pswitch_1
    const-string v0, "font_package_name_key"

    invoke-virtual {v9, v0, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "default"

    :cond_c
    invoke-static {v7, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyFlipFonts(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto/16 :goto_9

    :cond_d
    const-string v0, "blue_light_filter_switch"

    invoke-virtual {v9, v0, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "blue_light_filter_adaptive_mode"

    invoke-static {v1, v9, v2}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v3

    const-string v4, "blue_light_filter_scheduled"

    invoke-virtual {v9, v4, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v6

    if-nez v6, :cond_e

    const/4 v3, 0x0

    goto :goto_4

    :cond_e
    move v1, v5

    :goto_4
    const-string v5, "blue_light_filter_type"

    invoke-virtual {v9, v5, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v8, 0x40a00000    # 5.0f

    const-string v11, "blue_light_filter_opacity"

    invoke-static {v8, v9, v11}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "blueLightFilterSwitch onPerformAction: "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "blueLightFilterAdaptive onPerformAction: "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "blueLightFilterScheduled onPerformAction: "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "blueLightFilterType onPerformAction: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "blueLightFilterOpacity onPerformAction: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v0, v0

    const-string v1, "blue_light_filter"

    if-nez v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v9, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v6, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    float-to-int v5, v8

    invoke-static {v1, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    float-to-int v3, v3

    if-ne v3, v9, :cond_10

    move v5, v9

    goto :goto_5

    :cond_10
    move v5, v14

    :goto_5
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-ne v3, v9, :cond_11

    move v2, v14

    goto :goto_6

    :cond_11
    move v2, v9

    :goto_6
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-static {v2, v3, v1}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    if-ne v0, v9, :cond_12

    const/16 v0, 0x18

    goto :goto_8

    :cond_12
    const/16 v0, 0x19

    :goto_8
    const-string v2, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    :goto_9
    return-void

    :pswitch_3
    iput-object v10, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mCallback:Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;

    new-instance v2, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-direct {v2, v7}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unregisterNetworkCallback(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unregisterVpnStateReceiver(Landroid/content/Context;)V

    const-string v2, "key_vpn_param"

    invoke-virtual {v9, v2, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->getVpnProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->findVpnProfile(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    if-nez v3, :cond_13

    const-string/jumbo v1, "onPerformAction: no vpn profile"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mCallback:Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    check-cast v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_a

    :cond_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "onPerformAction: registerNetworkCallback"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mNetworkCallback:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;

    if-nez v1, :cond_16

    new-instance v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;

    invoke-direct {v1, v0, v3, v2, v7}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;-><init>(Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;Lcom/android/internal/net/VpnProfile;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mNetworkCallback:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v1, v14}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const-string v2, "connectivity"

    invoke-virtual {v7, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mNetworkCallback:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;

    invoke-virtual {v2, v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string/jumbo v0, "registerNetworkCallback"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_14
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "onPerformAction: disconnecting vpn"

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mCallback:Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    check-cast v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_a

    :cond_15
    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mCallback:Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v1, v13, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    check-cast v0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    :cond_16
    :goto_a
    return-void

    :pswitch_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v2, "toggle_value"

    invoke-virtual {v9, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_adjust_touch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    :cond_17
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ead_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    :cond_18
    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_pocket"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_b
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1a

    if-nez v1, :cond_19

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_19
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_1a
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string/jumbo v0, "onPerformReverseAction can not be started because PPP isn\'t registered"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :cond_1b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "fingerprint_default_value"

    invoke-virtual {v9, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "unlock_with_fingerprint"

    invoke-virtual {v9, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "face_default_value"

    invoke-virtual {v9, v4, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v5, "unlock_with_face"

    invoke-virtual {v9, v5, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v5, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v5, :cond_1c

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1c
    iget-object v5, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v5, :cond_1d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_c

    :cond_1d
    const-string v5, "There is no fingerprint."

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v14

    :goto_c
    if-eqz v3, :cond_1e

    goto :goto_e

    :cond_1e
    if-eqz v2, :cond_20

    if-eqz v5, :cond_1f

    goto :goto_d

    :cond_1f
    move v5, v14

    goto :goto_e

    :cond_20
    :goto_d
    const/4 v5, 0x1

    :goto_e
    const/16 v2, 0x3e9

    if-nez v5, :cond_21

    const-string v0, "fingerprint was removed after registered action"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v2, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :cond_21
    invoke-virtual {v0, v7, v3}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unlockWithFingerprint(Landroid/content/Context;Z)V

    iget-object v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v3, :cond_22

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_22
    iget-object v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v3, :cond_23

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_f

    :cond_23
    const-string v3, "There is no face."

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v14

    :goto_f
    if-eqz v1, :cond_24

    goto :goto_11

    :cond_24
    if-eqz v4, :cond_26

    if-eqz v3, :cond_25

    goto :goto_10

    :cond_25
    move v3, v14

    goto :goto_11

    :cond_26
    :goto_10
    const/4 v3, 0x1

    :goto_11
    if-nez v3, :cond_27

    const-string v0, "face was removed after registered action"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v2, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :cond_27
    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unlockWithFace(Landroid/content/Context;Z)V

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    if-nez v1, :cond_28

    invoke-static/range {p1 .. p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    :cond_28
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->setLifeStyleZenModeoff()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPerformAction KEY_DND_STATE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "dnd_switch"

    invoke-virtual {v9, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "messages_options"

    invoke-virtual {v9, v1, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v3, "call_options"

    invoke-virtual {v9, v3, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v4, "app_options"

    invoke-virtual {v9, v4, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "repeat_options"

    invoke-virtual {v9, v5, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v5, "contact_options"

    invoke-virtual {v9, v5, v6}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "appBypass_flag"

    invoke-virtual {v9, v8, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const-string v11, "exception_contactflag"

    invoke-virtual {v9, v11, v15}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getNumber(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const-string/jumbo v11, "onPerformAction: DND_state true"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPerformAction: before_message_option "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPerformAction: before_call_option "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPerformAction: before_repeat_option "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPerformAction: before_app_list "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPerformAction: before_contact_list "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPerformAction: before_app_flag "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onPerformAction: before_contact_flag "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    sput-boolean v11, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->LifeStyleZenState:Z

    float-to-int v1, v1

    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setMessageOption(I)V

    float-to-int v1, v3

    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setCallOption(I)V

    sput-boolean v2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    float-to-int v1, v8

    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppFlag(I)V

    float-to-int v1, v9

    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContactFlag(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-static {v4}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setAppListMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setApp_exist_list(Ljava/util/HashSet;)V

    new-instance v1, Ljava/util/ArrayList;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->setContact_exist_list(Ljava/util/List;)V

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    iget-object v2, v1, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c:Lcom/samsung/android/sdk/routines/v3/internal/RoutineInfoManagerImpl;

    if-nez v2, :cond_29

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/internal/RoutineInfoManagerImpl;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c:Lcom/samsung/android/sdk/routines/v3/internal/RoutineInfoManagerImpl;

    :cond_29
    iget-object v1, v1, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->c:Lcom/samsung/android/sdk/routines/v3/internal/RoutineInfoManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://com.samsung.android.app.routines.routineinfoprovider/routine_info/action/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v2, p4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2a

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string/jumbo v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_15

    :goto_12
    move-object v2, v0

    goto :goto_13

    :catchall_0
    move-exception v0

    goto :goto_12

    :goto_13
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v2

    :cond_2a
    const/4 v3, 0x0

    :goto_15
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2b
    if-eqz v3, :cond_2c

    iget-object v1, v3, Lcom/samsung/android/sdk/routines/v3/data/RoutineInfo;->a:Ljava/lang/String;

    if-eqz v1, :cond_2c

    move-object v6, v1

    :cond_2c
    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    if-nez v1, :cond_2d

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    :cond_2d
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "scheme"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v4}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getCallOption()F

    move-result v5

    float-to-int v5, v5

    if-eqz v5, :cond_30

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2f

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2e

    const/4 v5, 0x4

    goto :goto_16

    :cond_2e
    const/4 v5, 0x3

    goto :goto_16

    :cond_2f
    const/4 v5, 0x2

    goto :goto_16

    :cond_30
    const/4 v5, 0x1

    :goto_16
    invoke-virtual {v4, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->repeatedCaller:Z

    invoke-virtual {v4, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRSHandler:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getMessageOption()F

    move-result v5

    float-to-int v5, v5

    if-eqz v5, :cond_33

    const/4 v7, 0x1

    if-eq v5, v7, :cond_32

    const/4 v7, 0x2

    if-eq v5, v7, :cond_31

    const/4 v7, 0x4

    goto :goto_17

    :cond_31
    const/4 v7, 0x3

    goto :goto_17

    :cond_32
    const/4 v7, 0x2

    goto :goto_17

    :cond_33
    const/4 v7, 0x1

    :goto_17
    invoke-virtual {v4, v7}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->app_exist_list:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowAppsToBypassDnd(Ljava/lang/String;)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getAppFlag()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/service/notification/ZenPolicy$Builder;->setAppBypassDndFlag(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->contact_exist_list:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowExceptionContacts(Ljava/lang/String;)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getContactFlag()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/service/notification/ZenPolicy$Builder;->setExceptionContactsFlag(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v4

    new-instance v5, Landroid/app/AutomaticZenRule;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_34

    :goto_18
    move-object/from16 v17, v6

    goto :goto_19

    :cond_34
    iget-object v6, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1414d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    :goto_19
    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v16, v5

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v23}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    invoke-virtual {v5, v4}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v3, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    new-instance v3, Landroid/service/notification/Condition;

    const-string v4, "ZenRuleTest Rule"

    invoke-direct {v3, v1, v4, v2}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mRuleId:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    move-object v1, v10

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72290020 -> :sswitch_9
        -0x579c6379 -> :sswitch_8
        -0x3eb64d02 -> :sswitch_7
        -0x26a9edc9 -> :sswitch_6
        -0x160b5d2f -> :sswitch_5
        0x8aa233d -> :sswitch_4
        0x2da60931 -> :sswitch_3
        0x4ddbe8f7 -> :sswitch_2
        0x64132145 -> :sswitch_1
        0x66c6ec1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v1, "data_saver_routine"

    const-string/jumbo v2, "sec_touch_sensitivity"

    const-string v3, "adaptive_color_tone"

    const/4 v4, 0x1

    const/4 v10, 0x0

    const-string v5, ""

    const-string v6, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    const/4 v11, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v12, "connect_vpn"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v11, 0x9

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v11, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v12, "routine_font_style_tag"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    const/4 v11, 0x7

    goto :goto_0

    :sswitch_3
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    const/4 v11, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v12, "sec_eye_comfort_shield_routine"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    const/4 v11, 0x5

    goto :goto_0

    :sswitch_5
    const-string v12, "disconnect_vpn"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_0

    :cond_5
    const/4 v11, 0x4

    goto :goto_0

    :sswitch_6
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_0

    :cond_6
    const/4 v11, 0x3

    goto :goto_0

    :sswitch_7
    const-string v12, "accidental_touch_protection"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_0

    :cond_7
    const/4 v11, 0x2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v12, "sec_unlock_with_biometrics"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_0

    :cond_8
    move v11, v4

    goto :goto_0

    :sswitch_9
    const-string v12, "LifeStyle/DND"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_0

    :cond_9
    move v11, v10

    :goto_0
    packed-switch v11, :pswitch_data_0

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    move-object/from16 v6, p6

    check-cast v6, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->onPerformReverseAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;JLcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;)V

    goto :goto_1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/datausage/DataUsageUtils;->isSupportDataSaver(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v2, v7}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v1, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPerformReverseAction_dataSaverEnabled : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :pswitch_1
    const-string/jumbo v0, "original_font_style_key"

    invoke-virtual {v9, v0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v7, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyFlipFonts(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    const-string v0, "font_package_name_key"

    invoke-virtual {v9, v0, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->applyFlipFonts(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_2
    const/4 v1, 0x0

    const-string v2, "blue_light_filter_switch"

    invoke-static {v1, v9, v2}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v5, "blue_light_filter_adaptive_mode"

    invoke-static {v3, v9, v5}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v8

    const-string v11, "blue_light_filter_scheduled"

    invoke-static {v1, v9, v11}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v12

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBlueLightFilterAdaptiveMode()Z

    move-result v13

    if-nez v13, :cond_c

    move v8, v1

    goto :goto_2

    :cond_c
    move v3, v12

    :goto_2
    const-string v12, "blue_light_filter_type"

    invoke-static {v1, v9, v12}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v1

    const/high16 v13, 0x40a00000    # 5.0f

    const-string v14, "blue_light_filter_opacity"

    invoke-static {v13, v9, v14}, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND$$ExternalSyntheticOutline0;->m(FLcom/samsung/android/sdk/routines/v3/data/ParameterValues;Ljava/lang/String;)F

    move-result v9

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "blueLightFilterSwitch onPerformReverseAction: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "blueLightFilterAdaptive onPerformReverseAction: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "blueLightFilterScheduled onPerformReverseAction: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "blueLightFilterType onPerformReverseAction: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "blueLightFilterOpacity onPerformReverseAction: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    float-to-int v3, v3

    invoke-static {v6, v11, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    float-to-int v6, v9

    invoke-static {v3, v14, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    float-to-int v1, v1

    invoke-static {v3, v12, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    float-to-int v2, v2

    const-string v3, "blue_light_filter"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    float-to-int v1, v8

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-static {v1, v3, v0}, Lcom/android/settings/DefaultRingtonePreference$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    if-ne v2, v4, :cond_d

    const/16 v1, 0x18

    goto :goto_3

    :cond_d
    const/16 v1, 0x19

    :goto_3
    const-string v2, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_6

    :pswitch_3
    new-instance v1, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-direct {v1, v7}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unregisterNetworkCallback(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unregisterVpnStateReceiver(Landroid/content/Context;)V

    const-string v1, "key_vpn_param"

    invoke-virtual {v9, v1, v5}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPerformReverseAction: tag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/settings/vpn/bixby/RoutineUtils;->getVpnProfileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->findVpnProfile(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    if-nez v2, :cond_e

    const-string/jumbo v0, "onPerformReverseAction: disconnecting vpn"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    goto/16 :goto_6

    :cond_e
    if-eqz v1, :cond_f

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_4

    :cond_f
    move v4, v10

    :goto_4
    const-string/jumbo v1, "onPerformReverseAction: connecting vpn, lockdown="

    invoke-static {v1, v6, v4}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->connect(Lcom/android/internal/net/VpnProfile;Z)Z

    goto/16 :goto_6

    :pswitch_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v4, "toggle_value"

    invoke-virtual {v9, v4, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_adjust_touch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ead_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_11
    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "screen_off_pocket"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :pswitch_5
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_13

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_12
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_13
    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_14

    const-string/jumbo v0, "onPerformReverseAction can not be started because PPP isn\'t registered"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "fingerprint_default_value"

    invoke-virtual {v9, v2, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "face_default_value"

    invoke-virtual {v9, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v3, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_15
    iget-object v3, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_16

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0, v7, v2}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unlockWithFingerprint(Landroid/content/Context;Z)V

    goto :goto_5

    :cond_16
    const-string v2, "There is no fingerprint."

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v2, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_17
    iget-object v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_18

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unlockWithFace(Landroid/content/Context;Z)V

    goto :goto_6

    :cond_18
    const-string v0, "There is no face."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPerformReverseAction KEY_DND_STATE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "dnd_switch"

    invoke-virtual {v9, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v3, v2}, Lcom/samsung/android/sdk/routines/v3/data/ParameterValues;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v10, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->LifeStyleZenState:Z

    iget-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    if-nez v1, :cond_19

    invoke-static/range {p1 .. p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    :cond_19
    iget-object v0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mZenModeBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->setLifeStyleZenModeoff()V

    :cond_1a
    :goto_6
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;Z)V

    move-object/from16 v1, p6

    check-cast v1, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72290020 -> :sswitch_9
        -0x579c6379 -> :sswitch_8
        -0x3eb64d02 -> :sswitch_7
        -0x26a9edc9 -> :sswitch_6
        -0x160b5d2f -> :sswitch_5
        0x8aa233d -> :sswitch_4
        0x2da60931 -> :sswitch_3
        0x4ddbe8f7 -> :sswitch_2
        0x64132145 -> :sswitch_1
        0x66c6ec1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 11

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v0, 0x0

    const/16 v4, 0x3e8

    const v5, 0x7f141f48

    const-string v6, "Error"

    const-string v7, "Action not executed due to some reason"

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_0
    move v10, v9

    goto :goto_1

    :sswitch_0
    const-string v10, "connect_vpn"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_1
    const-string v10, "data_saver_routine"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v10, "sec_eye_comfort_shield_routine"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x3

    goto :goto_1

    :sswitch_3
    const-string v10, "disconnect_vpn"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v10, "sec_unlock_with_biometrics"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x1

    goto :goto_1

    :sswitch_5
    const-string v10, "LifeStyle/DND"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_0

    :cond_5
    move v10, v0

    :goto_1
    packed-switch v10, :pswitch_data_0

    move-object v10, p0

    iget-object v0, v10, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    invoke-interface {v4}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->getSupportTagList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v0, v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v8

    :pswitch_0
    const v0, 0x7f142694

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    invoke-direct {v1, v8, v0, v8}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v1

    :pswitch_1
    const/16 v0, 0x64

    if-eq v3, v0, :cond_8

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    invoke-direct {v0, v6, v7, v8}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v0

    :cond_8
    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f14238c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f142385

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    invoke-direct {v2, v1, v0, v8}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v2

    :pswitch_2
    if-eq v3, v4, :cond_a

    const/16 v0, 0x3e9

    if-eq v3, v0, :cond_9

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onRequestErrorDialogContents: tag="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",errorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f143224

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    invoke-direct {v2, v1, v0, v8}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v2

    :cond_9
    const v0, 0x7f142822

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    invoke-direct {v1, v8, v0, v8}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v1

    :cond_a
    const v0, 0x7f142823

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    invoke-direct {v1, v8, v0, v8}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v1

    :pswitch_4
    if-eq v3, v9, :cond_c

    if-eq v3, v4, :cond_b

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    invoke-direct {v0, v6, v7, v8}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v0

    :cond_b
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/notification/zen/lifestyle/LifeStyleDND;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x8000000

    invoke-static {p1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;-><init>(Landroid/app/PendingIntent;)V

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    const-string v2, "Action not performed"

    const-string v3, "Currently your account deactivated. Want to activate your account?"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v0

    :cond_c
    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    const-string v1, "This Action not available"

    invoke-direct {v0, v8, v1, v8}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x72290020 -> :sswitch_5
        -0x579c6379 -> :sswitch_4
        -0x160b5d2f -> :sswitch_3
        0x8aa233d -> :sswitch_2
        0x64132145 -> :sswitch_1
        0x66c6ec1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;
    .locals 10

    const-string/jumbo v0, "sec_touch_sensitivity"

    const-string v1, "adaptive_color_tone"

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "default_selection"

    const-string v4, "label_off"

    const-string v5, "label_on"

    const-string/jumbo v6, "title"

    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_2
    const-string v9, "accidental_touch_protection"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, v7

    goto :goto_0

    :sswitch_3
    const-string v9, "LifeStyle/DND"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    move v8, v2

    :goto_0
    packed-switch v8, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mActionInteractors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;

    invoke-interface {v0}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->getSupportTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/bixbyroutinehandler/interactor/ActionInteractor;->onRequestTemplateContents(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x7f14121e

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f14121d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f141ff9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const p0, 0x7f142334

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f142336

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notified_ead_camera_use_routine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f142335

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    const p0, 0x7f142164

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f142163

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {v6, p0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const v0, 0x7f141f4e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f141f4d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "description"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    return-object p1

    :pswitch_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "Action Title"

    invoke-virtual {p0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Option1"

    invoke-virtual {p0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Option2"

    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/template/ToggleTemplate;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/routines/v3/template/UiTemplate;-><init>(Landroid/os/Bundle;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x72290020 -> :sswitch_3
        -0x3eb64d02 -> :sswitch_2
        -0x26a9edc9 -> :sswitch_1
        0x2da60931 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final unlockWithFace(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unlockWithFace : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :goto_0
    return-void
.end method

.method public final unlockWithFingerprint(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unlockWithFingerprint : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->isSupportedFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :goto_0
    return-void
.end method

.method public final unregisterNetworkCallback(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mNetworkCallback:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;

    if-eqz v0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mNetworkCallback:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    const-string/jumbo v0, "unregisterNetworkCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mNetworkCallback:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;

    :cond_1
    return-void
.end method

.method public final unregisterVpnStateReceiver(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnStateReceiver:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnStateReceiver:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;

    const-string p0, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    const-string/jumbo p1, "unregisterVpnStateReceiver"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
