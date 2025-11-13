.class public Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;
.super Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityDashboardAppSecurityPreferenceController"


# instance fields
.field protected mDPLastScannedTime:J

.field protected mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field protected mDpSecurityInfo:I

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected mGppHarmfulAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/safetynet/HarmfulAppsData;",
            ">;"
        }
    .end annotation
.end field

.field protected mGppLastScanTime:J

.field protected mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field private mHandler:Landroid/os/Handler;

.field private mIsAppSecuritySupported:Z

.field protected mIsDPSupported:Z

.field protected mIsDeviceProtectionElapsed:Z

.field protected mIsGPPSupported:Z

.field protected mIsGppEnabled:Z

.field private mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

.field protected onCompleteListenerCheckGPPAndGetStatus:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener;"
        }
    .end annotation
.end field

.field private onCompleteListenerGetHarmfulApps:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AbpZCMjijuFcQtotXEL2d79Rhoc(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->lambda$new$0(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J09h0UiLC097mjNERpdmimePQ1E(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->lambda$new$1(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d0X20dX7ADrf_sA_DPFL9tGSg_Y(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->lambda$getDPInfo$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f1RMGD39ZsogwxOwsgi6qavrOb4(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->lambda$getDPInfo$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mLyPWq89SZ0ZpEslg-97GYgTyNU(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->lambda$getDPInfo$3(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    new-instance p2, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->onCompleteListenerGetHarmfulApps:Lcom/google/android/gms/tasks/OnCompleteListener;

    new-instance p2, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->onCompleteListenerCheckGPPAndGetStatus:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getDeviceProtectionSecurityInfo(Landroid/content/Context;)I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsDPSupported:Z

    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result p2

    if-eqz p2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isGoogleServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsGPPSupported:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsDPSupported:Z

    if-eqz p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsAppSecuritySupported:Z

    return-void
.end method

.method private synthetic lambda$getDPInfo$2(Ljava/lang/Integer;)V
    .locals 9

    const-string v0, "key_app_security"

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "key_device_protection"

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setAppSecuritySummary()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsDeviceProtectionElapsed:Z

    iget-wide v5, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPLastScannedTime:J

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setDPSummary(ZJILcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    if-eqz p1, :cond_3

    const-string v0, "DP"

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v1, v0, v2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setupStatus(Z)V

    :cond_3
    return-void
.end method

.method private lambda$getDPInfo$3(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPLastScannedTime:J

    sget-object p2, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLastScanTimeAsync: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPLastScannedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->DEVICE_PROTECTION_DEEPLINK_URI:Landroid/net/Uri;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "dc_security_status"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "key_status"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const-string/jumbo v1, "scan_needed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsDeviceProtectionElapsed:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDpSecurityInfo:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsDeviceProtectionElapsed:Z

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p2, v0, :cond_2

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_3

    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    if-nez p2, :cond_5

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :cond_5
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getStatusForDeviceProtectionMenu returned status = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DeviceProtectionUtils"

    invoke-static {v0, p2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private lambda$getDPInfo$4(Ljava/lang/Integer;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDeviceProtectionSecurityInfoAsync: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;Ljava/lang/Integer;)V

    sget-object p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->DEVICE_PROTECTION_DEEPLINK_URI:Landroid/net/Uri;

    new-instance p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda0;)V

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private lambda$new$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/common/api/Response;->zza:Lcom/google/android/gms/common/api/Result;

    check-cast v0, Lcom/google/android/gms/internal/safetynet/zzaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/safetynet/zzaa;->zzb:Lcom/google/android/gms/safetynet/zzd;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/safetynet/zzd;->zzb:[Lcom/google/android/gms/safetynet/HarmfulAppsData;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object p1, p1, Lcom/google/android/gms/common/api/Response;->zza:Lcom/google/android/gms/common/api/Result;

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzaa;

    iget-object p1, p1, Lcom/google/android/gms/internal/safetynet/zzaa;->zzb:Lcom/google/android/gms/safetynet/zzd;

    if-nez p1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_2

    :cond_2
    iget-wide v1, p1, Lcom/google/android/gms/safetynet/zzd;->zza:J

    :goto_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsGppEnabled:Z

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppHarmfulAppList:Ljava/util/List;

    iput-wide v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppLastScanTime:J

    const-string v3, "key_app_security"

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "key_google_play_protection"

    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_3
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setAppSecuritySummary()V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setGPPSummary(ZLjava/util/List;J)V

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    if-eqz p1, :cond_6

    const-string v0, "GPP"

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v4, v0, v1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setupStatus(Z)V

    :cond_6
    return-void
.end method

.method private lambda$new$1(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;

    iget-object p1, p1, Lcom/google/android/gms/common/api/Response;->zza:Lcom/google/android/gms/common/api/Result;

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzad;

    iget-object v0, p1, Lcom/google/android/gms/internal/safetynet/zzad;->zza:Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/common/api/Status;->zzc:I

    if-gtz v0, :cond_0

    iget-boolean p1, p1, Lcom/google/android/gms/internal/safetynet/zzad;->zzb:Z

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->onCompleteListenerGetHarmfulApps:Lcom/google/android/gms/tasks/OnCompleteListener;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lcom/google/android/gms/safetynet/SafetyNetClient;

    new-instance v3, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/common/api/GoogleApi$Settings;-><init>(Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;Landroid/os/Looper;)V

    sget-object v3, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {v2, p1, v3, v0, v5}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    sget-object p1, Lcom/google/android/gms/safetynet/SafetyNet;->SafetyNetApi:Lcom/google/android/gms/internal/safetynet/zzae;

    iget-object v0, v2, Lcom/google/android/gms/common/api/GoogleApi;->zai:Lcom/google/android/gms/common/api/internal/zabv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/safetynet/zzn;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/safetynet/zzn;-><init>(Lcom/google/android/gms/common/api/internal/zabv;)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabv;->zaa:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Lcom/google/android/gms/common/api/internal/zaq;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    iput-boolean v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaq:Z

    iget-object v1, v0, Lcom/google/android/gms/common/api/GoogleApi;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zae;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/internal/zae;-><init>(Lcom/google/android/gms/internal/safetynet/zzn;)V

    iget-object v3, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zaq;

    new-instance v4, Lcom/google/android/gms/common/api/internal/zach;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v4, v2, v1, v0}, Lcom/google/android/gms/common/api/internal/zach;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/internal/zaq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/internal/zaq;-><init>(Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;)V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/internal/zap;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/common/internal/zap;-><init>(Lcom/google/android/gms/internal/safetynet/zzn;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zaq;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    iget-object p1, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    new-instance v1, Lcom/google/android/gms/tasks/zzj;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/tasks/zzj;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object p0, p1, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzj;)V

    iget-object v2, p1, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean p0, p1, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-nez p0, :cond_3

    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p1, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_4

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    sget-object p1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsGppEnabled:Z

    const-string p1, "key_app_security"

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "key_google_play_protection"

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-le v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setAppSecuritySummary()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    const-wide/16 v3, 0x0

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setGPPSummary(ZLjava/util/List;J)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    if-eqz p1, :cond_8

    const-string v0, "GPP"

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p1, v2, v0, v3}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setMenuStatus(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setupStatus(Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method private setAppSecuritySummary()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14292d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsGppEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppHarmfulAppList:Ljava/util/List;

    iget-wide v2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mGppLastScanTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setGPPSummary(ZLjava/util/List;J)V

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsDeviceProtectionElapsed:Z

    iget-wide v6, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPLastScannedTime:J

    iget v8, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDpSecurityInfo:I

    iget-object v9, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mDPMenuStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setDPSummary(ZJILcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setSummaryColor()V

    return-void
.end method

.method private setDPSummary(ZJILcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "dMMMMyyyy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p4, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f142951

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eq p5, p4, :cond_2

    if-nez p1, :cond_1

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-eqz p1, :cond_1

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f142975    # 1.96941E38f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "shared_pref_security_dashboard"

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo p2, "shared_pref_key_device_protection_threat_count"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f14295a

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const p5, 0x7f120058

    invoke-virtual {p3, p5, p1, p4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setSummaryColor()V

    return-void
.end method

.method private setGPPSummary(ZLjava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/google/android/gms/safetynet/HarmfulAppsData;",
            ">;J)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f142975    # 1.96941E38f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dMMMMyyyy"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const p4, 0x7f14295a

    invoke-virtual {p2, p4, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f120058

    invoke-virtual {p3, v1, p4, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f142950

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->setSummaryColor()V

    return-void
.end method

.method private setSummaryColor()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0607b9

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->seslSetSummaryColor(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0607b8

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->seslSetSummaryColor(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0607b7

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->seslSetSummaryColor(IZ)V

    :goto_0
    return-void
.end method

.method private updateMenuStatus()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsGPPSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->onCompleteListenerCheckGPPAndGetStatus:Lcom/google/android/gms/tasks/OnCompleteListener;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v2, Lcom/google/android/gms/safetynet/SafetyNetClient;

    new-instance v3, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/common/api/GoogleApi$Settings;-><init>(Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;Landroid/os/Looper;)V

    sget-object v3, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    const/16 v4, 0x1069

    new-instance v5, Lcom/google/android/gms/safetynet/zzm;

    invoke-direct {v5, v2}, Lcom/google/android/gms/safetynet/zzm;-><init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V

    iput-object v5, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->zaa:Lcom/google/android/gms/common/api/internal/RemoteCall;

    new-instance v5, Lcom/google/android/gms/common/api/internal/zacv;

    iget-object v6, v0, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->zac:[Lcom/google/android/gms/common/Feature;

    invoke-direct {v5, v0, v6, v3, v4}, Lcom/google/android/gms/common/api/internal/zacv;-><init>(Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;[Lcom/google/android/gms/common/Feature;ZI)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/common/api/GoogleApi;->zae(ILcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    new-instance v3, Lcom/google/android/gms/tasks/zzj;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/tasks/zzj;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object v1, v0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzj;)V

    iget-object v1, v0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-nez v2, :cond_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsDPSupported:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->getDPInfo()V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "security_dashboard_status"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->updateMenuStatus()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsAppSecuritySupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDPInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;)V

    sget-object p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->DEVICE_PROTECTION_DEEPLINK_URI:Landroid/net/Uri;

    new-instance p0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController$$ExternalSyntheticLambda1;Landroid/content/Context;)V

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_app_security"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2348

    const v1, 0xdae4

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->isControllable()Z

    move-result p0

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

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setDefaultSummary()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsDPSupported:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140cac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsGPPSupported:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1409b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1410be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setSummary(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0607b7

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->seslSetSummaryColor(IZ)V

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->mIsAppSecuritySupported:Z

    if-nez p0, :cond_0

    const-string p0, "key_app_security"

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardAppSecurityPreferenceController;->updateMenuStatus()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
