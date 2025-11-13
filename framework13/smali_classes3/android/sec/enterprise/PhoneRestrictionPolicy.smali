.class public Landroid/sec/enterprise/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field public static final blacklist ACTION_ICCID_AVAILABLE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.ICCID_AVAILABLE_INTERNAL"

.field public static final blacklist ACTION_PHONE_READY_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

.field public static final blacklist ACTION_SEND_BLOCKED_MMS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

.field public static final blacklist ACTION_SEND_BLOCKED_SMS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

.field public static final blacklist EXTRA_ORIG_ADDRESS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ORIG_ADDRESS_INTERNAL"

.field public static final blacklist EXTRA_PDU_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PDU_INTERNAL"

.field public static final blacklist EXTRA_SEND_TYPE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SEND_TYPE_INTERNAL"

.field public static final blacklist EXTRA_TIME_STAMP_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TIME_STAMP_INTERNAL"

.field public static final blacklist PERMISSION_RECEIVE_BLOCKED_SMS_MMS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL"

.field public static final blacklist RCS_FEATURE_ALL:I = 0x1

.field public static final blacklist SENDTYPE_GENERIC:I = -0x1

.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const-string v0, "PhoneRestrictionPolicy"

    sput-object v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addNumberOfIncomingCalls()Z
    .locals 3

    .line 87
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 88
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingCalls()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 93
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addNumberOfIncomingCalls returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addNumberOfIncomingSms()Z
    .locals 3

    .line 149
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 150
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfIncomingSms()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 155
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addNumberOfIncomingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addNumberOfOutgoingCalls()Z
    .locals 3

    .line 106
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 107
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingCalls()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 112
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addNumberOfOutgoingCalls returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addNumberOfOutgoingSms()Z
    .locals 3

    .line 168
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 169
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->addNumberOfOutgoingSms()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 174
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addNumberOfOutgoingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canIncomingCall(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialNumber"    # Ljava/lang/String;

    .line 580
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 581
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 582
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 586
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-canIncomingCall returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist canIncomingSms(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 225
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 226
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 231
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-canIncomingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist canOutgoingCall(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialNumber"    # Ljava/lang/String;

    .line 568
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 569
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 574
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-canOutgoingCall returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist canOutgoingSms(Ljava/lang/String;)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 206
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 207
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 212
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-canOutgoingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist decreaseNumberOfOutgoingSms()Z
    .locals 3

    .line 187
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 188
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->decreaseNumberOfOutgoingSms()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 193
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-decreaseNumberOfOutgoingSms returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmergencyCallOnly(Z)Z
    .locals 3
    .param p1, "allAdmins"    # Z

    .line 68
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 69
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->getEmergencyCallOnly(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 74
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getEmergencyCallOnly returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBlockMmsWithStorageEnabled()Z
    .locals 3

    .line 449
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 450
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isBlockMmsWithStorageEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 455
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBlockMmsWithStorageEnabled returning default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isBlockSmsWithStorageEnabled()Z
    .locals 3

    .line 409
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 410
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 411
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isBlockSmsWithStorageEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 415
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBlockSmsWithStorageEnabled returning default value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCopyContactToSimAllowed(I)Z
    .locals 3
    .param p1, "message"    # I

    .line 493
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 494
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 495
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isCopyContactToSimAllowed(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 499
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isCopyContactToSimAllowed returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDataAllowedFromSimSlot(I)Z
    .locals 3
    .param p1, "simSlot"    # I

    .line 592
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 593
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isDataAllowedFromSimSlot(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 598
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isDataAllowedFromSimSlot returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isIncomingCallAllowedFromSimSlot(I)Z
    .locals 3
    .param p1, "simSlot"    # I

    .line 556
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 557
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 562
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isIncomingCallAllowedFromSimSlot returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isIncomingMmsAllowed()Z
    .locals 3

    .line 368
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 369
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isIncomingMmsAllowed()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 374
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isIncomingMmsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isIncomingSmsAllowed()Z
    .locals 3

    .line 284
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 285
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 286
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isIncomingSmsAllowed()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 290
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isIncomingSmsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isIncomingSmsAllowedFromSimSlot(I)Z
    .locals 3
    .param p1, "slotNum"    # I

    .line 508
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 509
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 510
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 514
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isIncomingSmsAllowedFromSimSlot returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isLimitNumberOfSmsEnabled()Z
    .locals 3

    .line 130
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 131
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isLimitNumberOfSmsEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 136
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isLimitNumberOfSmsEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMmsAllowedFromSimSlot(I)Z
    .locals 3
    .param p1, "slotNum"    # I

    .line 532
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 533
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 534
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isMmsAllowedFromSimSlot(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 538
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isMmsAllowedFromSimSlot returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isOutgoingCallAllowedFromSimSlot(I)Z
    .locals 3
    .param p1, "simSlot"    # I

    .line 544
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 545
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 550
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-phoneRestrictionPolicy returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isOutgoingSmsAllowed()Z
    .locals 3

    .line 326
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 327
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingSmsAllowed()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 332
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isOutgoingSmsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isOutgoingSmsAllowedFromSimSlot(I)Z
    .locals 3
    .param p1, "slotNum"    # I

    .line 520
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 521
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0, p1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 526
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isOutgoingSmsAllowedFromSimSlot returning default value "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isSmsPatternCheckRequired()Z
    .locals 3

    .line 242
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 243
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isSmsPatternCheckRequired()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 248
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isSmsPatternCheckRequired returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWapPushAllowed()Z
    .locals 3

    .line 479
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 480
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isWapPushAllowed()Z

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
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isWapPushAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "isSms"    # Z
    .param p2, "pdu"    # [B
    .param p3, "srcAddress"    # Ljava/lang/String;
    .param p4, "sendType"    # I
    .param p5, "timeStamp"    # Ljava/lang/String;
    .param p6, "messageId"    # Ljava/lang/String;
    .param p7, "subId"    # Ljava/lang/String;

    .line 465
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 466
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_0

    .line 467
    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/sec/enterprise/IEDMProxy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_0
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-storeBlockedSmsMms fail to save sms/mms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
