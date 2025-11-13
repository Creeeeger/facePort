.class public Landroid/sec/enterprise/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final blacklist NOTIFICATION_MODE_BLOCK_ALL:I = 0x2

.field public static final blacklist NOTIFICATION_MODE_BLOCK_TEXT:I = 0x3

.field public static final blacklist NOTIFICATION_MODE_BLOCK_TEXT_AND_SOUND:I = 0x4

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 62
    const-string v0, "ApplicationPolicy"

    sput-object v0, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAddHomeShorcutRequested()Z
    .locals 3

    .line 95
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 96
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getAddHomeShorcutRequested()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 101
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getAddHomeShorcutRequested returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getApplicationIconFromDb(Ljava/lang/String;I)[B
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "imageData":[B
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 84
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 89
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getApplicationIconFromDb returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "newName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 110
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 115
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getApplicationNameFromDb returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist isAnyApplicationNameChangedAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 123
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isAnyApplicationNameChangedAsUser(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 128
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isAnyApplicationNameChangedAsUser returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist isPackageInAvrWhitelist(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 136
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isPackageInAvrWhitelist(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 141
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isPackageInAvrWhitelist returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
