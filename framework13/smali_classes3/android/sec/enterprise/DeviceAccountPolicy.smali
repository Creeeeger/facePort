.class public Landroid/sec/enterprise/DeviceAccountPolicy;
.super Ljava/lang/Object;
.source "DeviceAccountPolicy.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const-string v0, "DeviceAccountPolicy"

    sput-object v0, Landroid/sec/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .line 48
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 49
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1, p2, p3}, Landroid/sec/enterprise/IEDMProxy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 54
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceAccountPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isAccountRemovalAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
