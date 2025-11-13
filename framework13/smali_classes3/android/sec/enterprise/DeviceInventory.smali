.class public Landroid/sec/enterprise/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field public static final blacklist DEVICE_INFO_DROPPED_CALL:Ljava/lang/String; = "dropped"

.field public static final blacklist DEVICE_INFO_MISSED_CALL:Ljava/lang/String; = "missed"

.field public static final blacklist DEVICE_INFO_SUCCESS_CALL:Ljava/lang/String; = "success"

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const-string v0, "DeviceInfo"

    sput-object v0, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCallsCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "callType"    # Ljava/lang/String;

    .line 48
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 49
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->addCallsCount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addCallsCount returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist isCallingCaptureEnabled()Z
    .locals 3

    .line 64
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 65
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isCallingCaptureEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 70
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isCallingCaptureEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSMSCaptureEnabled()Z
    .locals 3

    .line 108
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 109
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isSMSCaptureEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 114
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isSMSCaptureEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z

    .line 90
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 91
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 92
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/sec/enterprise/IEDMProxy;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v1, 0x1

    return v1

    .line 97
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-storeCalling returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .line 130
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 131
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-storeSMS returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
