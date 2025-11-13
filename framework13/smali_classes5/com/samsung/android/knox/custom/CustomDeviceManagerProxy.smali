.class public Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;
.super Ljava/lang/Object;
.source "CustomDeviceManagerProxy.java"


# static fields
.field public static final greylist DESTINATION_ADDRESS:I = 0x14c

.field public static final greylist KEYBOARD_MODE_NORMAL:I = 0x0

.field public static final greylist KEYBOARD_MODE_PREDICTION_OFF:I = 0x1

.field public static final greylist KEYBOARD_MODE_SETTINGS_OFF:I = 0x2

.field public static final greylist NOTIFICATIONS_ALL:I = 0x1f

.field public static final greylist NOTIFICATIONS_BATTERY_FULL:I = 0x2

.field public static final greylist NOTIFICATIONS_BATTERY_LOW:I = 0x1

.field public static final greylist NOTIFICATIONS_NITZ_SET_TIME:I = 0x10

.field public static final greylist NOTIFICATIONS_SAFE_VOLUME:I = 0x4

.field public static final greylist NOTIFICATIONS_STATUS_BAR:I = 0x8

.field public static final greylist SENSOR_ACCELEROMETER:I = 0x2

.field public static final greylist SENSOR_ALL:I = 0x7f

.field public static final greylist SENSOR_GYROSCOPE:I = 0x1

.field public static final greylist SENSOR_LIGHT:I = 0x4

.field public static final greylist SENSOR_MAGNETIC:I = 0x20

.field public static final greylist SENSOR_ORIENTATION:I = 0x8

.field public static final greylist SENSOR_PRESSURE:I = 0x40

.field public static final greylist SENSOR_PROXIMITY:I = 0x10

.field public static final greylist SOURCE_ADDRESS:I = 0x14b

.field private static final greylist TAG:Ljava/lang/String; = "CustomDeviceManagerProxy"

.field public static final greylist VOLUME_CONTROL_STREAM_DEFAULT:I = 0x0

.field public static final greylist VOLUME_CONTROL_STREAM_MUSIC:I = 0x3

.field public static final greylist VOLUME_CONTROL_STREAM_NOTIFICATION:I = 0x4

.field public static final greylist VOLUME_CONTROL_STREAM_RING:I = 0x2

.field public static final greylist VOLUME_CONTROL_STREAM_SYSTEM:I = 0x1

.field private static greylist mProxy:Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static greylist getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;
    .locals 1

    .line 151
    sget-object v0, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    .line 154
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomDeviceManagerProxy;

    return-object v0
.end method


# virtual methods
.method public greylist getKeyboardMode()I
    .locals 3

    .line 530
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 531
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getKeyboardMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 536
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getKeyboardMode returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getProKioskHideNotificationMessages()I
    .locals 3

    .line 238
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 239
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getProKioskHideNotificationMessages()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 244
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getProKioskHideNotificationMessages returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getProKioskNotificationMessagesState()Z
    .locals 3

    .line 210
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 211
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getProKioskNotificationMessagesState()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 216
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getProKioskNotificationMessagesState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getProKioskState()Z
    .locals 3

    .line 182
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 183
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getProKioskState()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 188
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getProKioskState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getSensorDisabled()I
    .locals 3

    .line 349
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 350
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getSensorDisabled()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 355
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getSensorDisabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getToastEnabledState()Z
    .locals 3

    .line 293
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 294
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getToastEnabledState()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 299
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getToastEnabledState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getToastGravity()I
    .locals 3

    .line 455
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 456
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 457
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getToastGravity()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 461
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getToastGravity returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getToastGravityEnabledState()Z
    .locals 3

    .line 429
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 430
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityEnabledState()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 435
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getToastGravityEnabledState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getToastGravityXOffset()I
    .locals 3

    .line 479
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 480
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityXOffset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 485
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getToastGravityXOffset returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getToastGravityYOffset()I
    .locals 3

    .line 503
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 504
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getToastGravityYOffset()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 509
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getToastGravityYOffset returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getToastShowPackageNameState()Z
    .locals 3

    .line 320
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 321
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getToastShowPackageNameState()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 326
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getToastShowPackageNameState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getUsbNetAddress(I)Ljava/lang/String;
    .locals 3
    .param p1, "addressType"    # I

    .line 575
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 576
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 577
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 581
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getUsbNetAddress() FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getUsbNetStateInternal()Z
    .locals 3

    .line 560
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 561
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 562
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getUsbNetStateInternal()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 566
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getUsbNetStateInternal() FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getVolumeButtonRotationState()Z
    .locals 3

    .line 402
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 403
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getVolumeButtonRotationState()Z

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
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getVolumeButtonRotationState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getVolumeControlStream()I
    .locals 3

    .line 266
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 267
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getVolumeControlStream()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 272
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getVolumeControlStream returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getVolumePanelEnabledState()Z
    .locals 3

    .line 376
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 377
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getVolumePanelEnabledState()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 382
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getVolumePanelEnabledState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getWifiState()Z
    .locals 3

    .line 545
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 546
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getWifiState()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 551
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomDeviceManagerProxy"

    const-string v2, "PXY-getWifiState() FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
