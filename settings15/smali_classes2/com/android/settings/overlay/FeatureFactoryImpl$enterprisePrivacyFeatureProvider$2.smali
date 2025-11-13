.class final Lcom/android/settings/overlay/FeatureFactoryImpl$enterprisePrivacyFeatureProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$enterprisePrivacyFeatureProvider$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/overlay/FeatureFactoryImpl$enterprisePrivacyFeatureProvider$2;

    invoke-direct {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl$enterprisePrivacyFeatureProvider$2;-><init>()V

    sput-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl$enterprisePrivacyFeatureProvider$2;->INSTANCE:Lcom/android/settings/overlay/FeatureFactoryImpl$enterprisePrivacyFeatureProvider$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-class v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-class v5, Landroid/net/VpnManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/VpnManager;

    invoke-static {}, Lcom/android/settings/overlay/FeatureFactory$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;-><init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/net/VpnManager;Landroid/content/res/Resources;)V

    return-object p0
.end method
