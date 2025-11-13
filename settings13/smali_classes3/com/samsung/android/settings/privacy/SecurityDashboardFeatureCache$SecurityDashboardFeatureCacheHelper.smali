.class Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache$SecurityDashboardFeatureCacheHelper;
.super Ljava/lang/Object;
.source "SecurityDashboardFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecurityDashboardFeatureCacheHelper"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache$SecurityDashboardFeatureCacheHelper;->INSTANCE:Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache-IA;)V

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache$SecurityDashboardFeatureCacheHelper;->INSTANCE:Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    return-void
.end method
