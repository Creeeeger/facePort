.class public Landroid/sec/enterprise/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/BluetoothPolicy$BluetoothProfile;,
        Landroid/sec/enterprise/BluetoothPolicy$BluetoothUUID;
    }
.end annotation


# static fields
.field public static final blacklist NO_PROFILE:I = -0x1

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const-string v0, "BluetoothPolicy"

    sput-object v0, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 418
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 419
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-bluetoothLog returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist getAllowBluetoothDataTransfer(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .line 235
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 236
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->getAllowBluetoothDataTransfer(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 241
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getAllowBluetoothDataTransfer returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 334
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 335
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 340
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBluetoothDeviceAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isBluetoothEnabled()Z
    .locals 4

    .line 385
    const/4 v0, 0x1

    .line 387
    .local v0, "enabled":Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 388
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothEnabled()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 394
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 393
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBluetoothEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist isBluetoothLogEnabled()Z
    .locals 3

    .line 402
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 403
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothLogEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 408
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBluetoothLogEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .line 283
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 284
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 289
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBluetoothUUIDAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDiscoverableEnabled()Z
    .locals 3

    .line 369
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 370
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isDiscoverableEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 375
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isDiscoverableEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isOutgoingCallsAllowed()Z
    .locals 3

    .line 253
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 254
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingCallsAllowed()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 259
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isOutgoingCallsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isPairingEnabled()Z
    .locals 3

    .line 352
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 353
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isPairingEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 358
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isPairingEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isProfileEnabled(I)Z
    .locals 3
    .param p1, "profile"    # I

    .line 302
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 303
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isProfileEnabled(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 308
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isProfileEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
