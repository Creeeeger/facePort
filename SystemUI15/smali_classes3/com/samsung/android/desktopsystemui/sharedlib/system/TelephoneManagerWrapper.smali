.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DSU]TelephoneManagerWrapper"

.field private static final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private static final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, -0x1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const-string v1, "[DSU]TelephoneManagerWrapper"

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to getActiveSubscriptionInfoList: subscriptionId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    :cond_2
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to createForSubscriptionId: subscriptionId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getPhoneCount()I
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public in_ecm_mode()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semIsInEmergencyCallbackMode()Z

    move-result p0

    return p0
.end method

.method public setDataEnabled(Z)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TelephoneManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_0
    return-void
.end method
