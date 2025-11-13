.class public final Lcom/android/settings/datausage/lib/BillingCycleRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final networkService:Landroid/os/INetworkManagementService;

.field public final telephonyRepository:Lcom/android/settings/network/telephony/TelephonyRepository;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    const-string v1, "asInterface(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/network/telephony/TelephonyRepository;

    invoke-direct {v1, p1}, Lcom/android/settings/network/telephony/TelephonyRepository;-><init>(Landroid/content/Context;)V

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/lib/BillingCycleRepository;->networkService:Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/settings/datausage/lib/BillingCycleRepository;->telephonyRepository:Lcom/android/settings/network/telephony/TelephonyRepository;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/lib/BillingCycleRepository;->userManager:Landroid/os/UserManager;

    return-void
.end method
