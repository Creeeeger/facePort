.class public Lcom/samsung/android/settings/security/SecIccLockManager;
.super Ljava/lang/Object;
.source "SecIccLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;,
        Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;,
        Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChangeLoader:Z

.field private mContext:Landroid/content/Context;

.field private mErrorMessage:Ljava/lang/String;

.field private mIccLockMode:I

.field private mIccToState:Z

.field private mMenuController:Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mSetLoader:Z

.field private mSlotIndex:I

.field private mSubscriptionId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/samsung/android/settings/security/SecIccLockManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChangeLoader(Lcom/samsung/android/settings/security/SecIccLockManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mChangeLoader:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetLoader(Lcom/samsung/android/settings/security/SecIccLockManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSetLoader:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$miccLockChanged(Lcom/samsung/android/settings/security/SecIccLockManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/security/SecIccLockManager;->iccLockChanged(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$miccPinChanged(Lcom/samsung/android/settings/security/SecIccLockManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/security/SecIccLockManager;->iccPinChanged(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/settings/security/SecIccLockManager;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p1

    .line 82
    invoke-interface {p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getFirstSlotIndex()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setSimInformation(I)V

    return-void
.end method

.method private iccLockChanged(ZI)V
    .locals 3

    .line 295
    sget-object p2, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccLockChanged: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 297
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string p2, "CscFeature_LockScreen_SupportToastSimUnlockSuccess"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 298
    iget-boolean p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->toggleSimPin(Z)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isCTCSlot1()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sim_lock_failed:I

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM"

    const-string v2, "UIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sim_lock_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 310
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    return-void
.end method

.method private iccPinChanged(ZI)V
    .locals 3

    .line 240
    sget-object p2, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iccPinChanged: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isCTCSlot1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sim_change_failed:I

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM"

    const-string v2, "UIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sim_change_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isCTCSlot1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->ruim_change_succeeded:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sim_change_succeeded:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 260
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    return-void
.end method

.method private isLockedByMdm(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v0

    .line 374
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    const-string p1, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    const-string v3, "isSimLockedByAdmin"

    invoke-static {p0, p1, v3, v2}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 378
    sget-object p1, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLockedByAdmin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private toggleSimPin(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 316
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sim_pin_enabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sim_pin_disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private updateMenu()V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mMenuController:Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;

    if-eqz p0, :cond_0

    .line 202
    invoke-interface {p0}, Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;->updateMenu()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getIccLockMode()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    return p0
.end method

.method public getIccLockRetryNumber()I
    .locals 4

    const-string v0, "gsm.sim.state"

    .line 125
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ABSENT"

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "isemtelephony"

    .line 130
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    iget v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISemTelephony;->getSimPinRetryForSubscriber(I)I

    move-result v2

    .line 133
    sget-object v0, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  SubId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 136
    sget-object v0, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccLockRetryNumber : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2
.end method

.method public getIccToState()Z
    .locals 0

    .line 156
    iget-boolean p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    return p0
.end method

.method public getNewPin()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    return-object p0
.end method

.method public getPin()Ljava/lang/String;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    return-object p0
.end method

.method public getSlotIndex()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    return p0
.end method

.method public getSystemProperties(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 385
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 386
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ","

    .line 389
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 392
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p3

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    return-object p3

    .line 398
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 399
    array-length p1, p0

    add-int/lit8 v0, p2, 0x1

    if-ge p1, v0, :cond_4

    return-object p3

    .line 402
    :cond_4
    aget-object p1, p0, p2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p3

    .line 405
    :cond_5
    aget-object p0, p0, p2

    return-object p0

    :cond_6
    :goto_0
    return-object p3
.end method

.method public iccMenuEnabled()Z
    .locals 9

    .line 331
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    sget-object p0, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    const-string v0, "Airplane Mode"

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 336
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 337
    sget-object p0, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    const-string v0, "INVALID_SUB_ID"

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isLockedByMdm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    sget-object p0, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    const-string v0, "Utils.EDM_TRUE"

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 353
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    const-string v2, "gsm.sim.state"

    const-string v3, "UNKNOWN"

    invoke-virtual {p0, v2, v0, v3}, Lcom/samsung/android/settings/security/SecIccLockManager;->getSystemProperties(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v2, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 355
    iget v3, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    if-nez v3, :cond_3

    const-string v3, "phone1_on"

    goto :goto_0

    :cond_3
    const-string v3, "phone2_on"

    :goto_0
    const/4 v4, 0x1

    .line 354
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 357
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril.ICC_TYPE"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    const-string v6, "0"

    invoke-static {v3, v5, v6}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    sget-object v5, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slot ID :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "phone mode :"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "sim type :"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "state prop :"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PUK_REQUIRED"

    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "PIN_REQUIRED"

    .line 361
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "PERM_DISABLED"

    .line 362
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 363
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    return v4

    :cond_6
    :goto_2
    return v1
.end method

.method public isCTCSlot1()Z
    .locals 0

    .line 323
    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEuicc()Z
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccCardInfo;

    .line 413
    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->getSlotIndex()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    if-ne v2, v3, :cond_0

    .line 414
    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 420
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEuicc() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isIccLockEnabled()Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    move-result p0

    return p0
.end method

.method public isPersoEnabled()Z
    .locals 4

    const-string v0, "isemtelephony"

    .line 106
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISemTelephony;->getIccUsimPersoEnabledForSubId(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 114
    sget-object v0, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPersoEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "slotIdx"

    .line 452
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    .line 453
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 454
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->setSimInformation(I)V

    const-string v0, "iccMode"

    .line 456
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const-string v0, "pinCode"

    .line 457
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    const-string v0, "errorStr"

    .line 458
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    const-string v0, "iccToState"

    .line 459
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    .line 462
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    const-string v0, "newPinCode"

    .line 468
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    .line 471
    :goto_0
    sget-object p1, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icc to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 425
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    const-string v1, "slotIdx"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const-string v1, "iccMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 431
    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPinDialog;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPinDialog;->getEditText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pinCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    const-string v1, "errorStr"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    const-string v1, "iccToState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const/4 v1, 0x3

    const-string v2, "oldPinCode"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    const-string v0, "newPinCode"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetIccLockData()V
    .locals 2

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    .line 190
    iput v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    .line 191
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mChangeLoader:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSetLoader:Z

    .line 192
    iput-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    .line 193
    sget-object p0, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    const-string v0, "resetIccLockData()"

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setIccLockMode(I)V
    .locals 2

    .line 143
    iput p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    .line 144
    sget-object p1, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICC MODE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIccToState(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    return-void
.end method

.method public setMenuController(Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mMenuController:Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;

    return-void
.end method

.method public setNewPin(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    return-void
.end method

.method public setOldPin(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    return-void
.end method

.method public setSimInformation(I)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 89
    iput p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 91
    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    .line 92
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 93
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 94
    sget-object p1, Lcom/samsung/android/settings/security/SecIccLockManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set SIM Info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public tryChangeIccLockState()V
    .locals 4

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSetLoader:Z

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    .line 269
    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;

    iget-boolean v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;-><init>(Lcom/samsung/android/settings/security/SecIccLockManager;ZLjava/lang/String;Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public tryChangePin()V
    .locals 4

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mChangeLoader:Z

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    .line 214
    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;-><init>(Lcom/samsung/android/settings/security/SecIccLockManager;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
