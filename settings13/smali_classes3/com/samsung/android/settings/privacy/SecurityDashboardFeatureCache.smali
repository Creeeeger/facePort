.class public Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;
.super Ljava/lang/Object;
.source "SecurityDashboardFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache$SecurityDashboardFeatureCacheHelper;
    }
.end annotation


# static fields
.field private static mSecurityDashboardFeatureCache:Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

.field private static misFMMMetaDataPresent:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->mSecurityDashboardFeatureCache:Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache$SecurityDashboardFeatureCacheHelper;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->mSecurityDashboardFeatureCache:Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    .line 21
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->initFeatureSupport(Landroid/content/Context;)V

    .line 23
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->mSecurityDashboardFeatureCache:Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    return-object p0
.end method


# virtual methods
.method public initFeatureSupport(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isFMMMetaDataPresent(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->setFMMMetaDataExists(Z)V

    return-void
.end method

.method public isFMMMetaDataExists()Z
    .locals 0

    .line 31
    sget-boolean p0, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->misFMMMetaDataPresent:Z

    return p0
.end method

.method public setFMMMetaDataExists(Z)V
    .locals 0

    .line 35
    sput-boolean p1, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->misFMMMetaDataPresent:Z

    return-void
.end method
