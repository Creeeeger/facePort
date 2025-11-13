.class public Lcom/android/internal/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;,
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    }
.end annotation


# static fields
.field private static final blacklist CALL_CONNECTED:I = 0x2

.field private static final blacklist CALL_DISCONNECTED:I = 0x1

.field private static final blacklist DEBUG:Z

.field private static final blacklist EMERGENCY_CALL_STATE_ACTIVE:I = 0x2

.field private static final blacklist EMERGENCY_CALL_STATE_CONNECTING:I = 0x1

.field private static final blacklist EMERGENCY_CALL_STATE_ECBM:I = 0x3

.field private static final blacklist EMERGENCY_CALL_STATE_NONE:I = 0x0

.field public static final blacklist GPS_ENC_NONE:I = 0x0

.field public static final blacklist GPS_ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final blacklist GPS_ENC_SUPL_UCS2:I = 0x3

.field public static final blacklist GPS_ENC_SUPL_UTF8:I = 0x2

.field public static final blacklist GPS_ENC_UNKNOWN:I = -0x1

.field public static final blacklist GPS_NI_NEED_NOTIFY:I = 0x1

.field public static final blacklist GPS_NI_NEED_VERIFY:I = 0x2

.field public static final blacklist GPS_NI_PRIVACY_OVERRIDE:I = 0x4

.field public static final blacklist GPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final blacklist GPS_NI_RESPONSE_DENY:I = 0x2

.field public static final blacklist GPS_NI_RESPONSE_IGNORE:I = 0x4

.field public static final blacklist GPS_NI_RESPONSE_NORESP:I = 0x3

.field public static final blacklist GPS_NI_TYPE_EMERGENCY_SUPL:I = 0x4

.field public static final blacklist GPS_NI_TYPE_UMTS_CTRL_PLANE:I = 0x3

.field public static final blacklist GPS_NI_TYPE_UMTS_SUPL:I = 0x2

.field public static final blacklist GPS_NI_TYPE_VOICE:I = 0x1

.field private static final blacklist INTENT_CALL_STATE:Ljava/lang/String; = "com.samsung.rcs.CALL_STATE_CHANGED"

.field private static final blacklist INTENT_ECBM_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final blacklist NI_EXTRA_CMD_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final blacklist NI_EXTRA_CMD_RESPONSE:Ljava/lang/String; = "response"

.field public static final blacklist NI_INTENT_KEY_DEFAULT_RESPONSE:Ljava/lang/String; = "default_resp"

.field public static final blacklist NI_INTENT_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final blacklist NI_INTENT_KEY_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final blacklist NI_INTENT_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final blacklist NI_INTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final blacklist NI_RESPONSE_EXTRA_CMD:Ljava/lang/String; = "send_ni_response"

.field private static final blacklist TAG:Ljava/lang/String; = "GpsNetInitiatedHandler"

.field private static greylist mIsHexInput:Z


# instance fields
.field private final blacklist mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private volatile blacklist mCallEndElapsedRealtimeMillis:J

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEmergencyCallListener:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

.field private blacklist mEmergencyCallState:I

.field private volatile blacklist mEmergencyExtensionMillis:J

.field private volatile blacklist mIsInEmergencyCall:Z

.field private volatile blacklist mIsLocationEnabled:Z

.field private volatile blacklist mIsSuplEsEnabled:Z

.field private final blacklist mIzatServiceEnabled:Z

.field private final blacklist mLocationManager:Landroid/location/LocationManager;

.field private final blacklist mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private blacklist mNiNotificationBuilder:Landroid/app/Notification$Builder;

.field private volatile blacklist mNumOfEmergencyCalls:I

.field private blacklist mPlaySounds:Z

.field private blacklist mPopupImmediately:Z

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIzatServiceEnabled(Lcom/android/internal/location/GpsNetInitiatedHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIzatServiceEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/location/GpsNetInitiatedHandler;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallEndElapsedRealtimeMillis(Lcom/android/internal/location/GpsNetInitiatedHandler;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEmergencyCallState(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInEmergencyCall(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumOfEmergencyCalls(Lcom/android/internal/location/GpsNetInitiatedHandler;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misEmergencyCallActive(Lcom/android/internal/location/GpsNetInitiatedHandler;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->isEmergencyCallActive(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetEmergencyState(Lcom/android/internal/location/GpsNetInitiatedHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyState(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 59
    const-string v0, "GpsNetInitiatedHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netInitiatedListener"    # Landroid/location/INetInitiatedListener;
    .param p3, "isSuplEsEnabled"    # Z

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    .line 140
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    .line 141
    iput-wide v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 144
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v2, "qcom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIzatServiceEnabled:Z

    .line 145
    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNumOfEmergencyCalls:I

    .line 146
    iput v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    .line 254
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$1;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v2, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener-IA;)V

    iput-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallListener:Lcom/android/internal/location/GpsNetInitiatedHandler$EmergencyCallListener;

    .line 328
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    .line 330
    if-eqz p2, :cond_1

    .line 333
    iput-object p2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 336
    invoke-virtual {p0, p3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 337
    const-string/jumbo v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->updateLocationMode()V

    .line 339
    nop

    .line 340
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 344
    new-instance v2, Lcom/android/internal/location/GpsNetInitiatedHandler$2;

    invoke-direct {v2, p0}, Lcom/android/internal/location/GpsNetInitiatedHandler$2;-><init>(Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    .line 355
    .local v2, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.location.MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    if-nez v1, :cond_0

    .line 359
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 331
    .end local v2    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "netInitiatedListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist decodeGSMPackedString([B)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # [B

    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, "PADDING_CHAR":C
    array-length v1, p0

    .line 662
    .local v1, "lengthBytes":I
    mul-int/lit8 v2, v1, 0x8

    div-int/lit8 v2, v2, 0x7

    .line 669
    .local v2, "lengthSeptets":I
    rem-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_0

    .line 670
    if-lez v1, :cond_0

    .line 671
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 672
    add-int/lit8 v2, v2, -0x1

    .line 677
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "decoded":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 681
    const-string v4, "GpsNetInitiatedHandler"

    const-string v5, "Decoding of GSM packed string failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v3, ""

    .line 685
    :cond_1
    return-object v3
.end method

.method private static greylist decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 3
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z
    .param p2, "coding"    # I

    .line 729
    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 735
    .local v0, "input":[B
    packed-switch p2, :pswitch_data_0

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for NI text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GpsNetInitiatedHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-object p0

    .line 743
    :pswitch_0
    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 740
    :pswitch_1
    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 737
    :pswitch_2
    invoke-static {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 730
    .end local v0    # "input":[B
    :cond_1
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist decodeUCS2String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .line 703
    const-string v0, ""

    .line 705
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 710
    nop

    .line 711
    return-object v0

    .line 707
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method static blacklist decodeUTF8String([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    .line 690
    const-string v0, ""

    .line 692
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 697
    nop

    .line 698
    return-object v0

    .line 694
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private static blacklist getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 785
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 779
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;
    .locals 5
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "message":Ljava/lang/String;
    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 595
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 598
    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const-string/jumbo v4, "notif_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    const-string/jumbo v4, "timeout"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    const-string v4, "default_resp"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateIntent, title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GpsNetInitiatedHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    return-object v0
.end method

.method private static blacklist getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 770
    const v0, 0x10405c1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 771
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 772
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 770
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "message":Ljava/lang/String;
    return-object v0
.end method

.method private static blacklist getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 754
    const v0, 0x10405c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 755
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 756
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 754
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "ticker":Ljava/lang/String;
    return-object v0
.end method

.method private static blacklist getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    .param p1, "context"    # Landroid/content/Context;

    .line 763
    const v0, 0x10405c3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method

.method private blacklist handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 5
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 460
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    const-string v1, "GpsNetInitiatedHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in handleNi () : needNotify: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " needVerify: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " privacyOverride: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mPopupImmediately: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mInEmergency: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v0

    const-string v2, "RemoteException in sendNiResponse"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v4, 0x4

    invoke-interface {v0, v3, v4}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_3

    .line 479
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-eqz v0, :cond_2

    .line 481
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_1

    .line 484
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 489
    :cond_3
    :goto_1
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v0, :cond_5

    .line 491
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    goto :goto_2

    .line 493
    :catch_1
    move-exception v0

    .line 494
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist handleNiInEs(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 5
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 502
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    const-string v1, "GpsNetInitiatedHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in handleNiInEs () : niType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " notificationId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    iget v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 518
    .local v0, "isNiTypeES":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v3

    if-eq v0, v3, :cond_2

    .line 520
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-interface {v3, v4, v2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 522
    :catch_0
    move-exception v2

    .line 523
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in sendNiResponse"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 526
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 528
    :goto_2
    return-void
.end method

.method private blacklist isEmergencyCallActive(I)Z
    .locals 2
    .param p1, "callState"    # I

    .line 612
    iget v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyCallState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 576
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openNiDialog, notifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GpsNetInitiatedHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 583
    return-void
.end method

.method private blacklist setEmergencyState(Z)V
    .locals 4
    .param p1, "eState"    # Z

    .line 618
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 619
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "config_string"

    if-eqz p1, :cond_0

    .line 620
    const-string v2, "EMERGENCY_STATE=TRUE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_0
    const-string v2, "EMERGENCY_STATE=FALSE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string/jumbo v3, "set_emergency_state"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 625
    return-void
.end method

.method private declared-synchronized blacklist setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 7
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 535
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 537
    monitor-exit p0

    return-void

    .line 540
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "message":Ljava/lang/String;
    sget-boolean v3, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GpsNetInitiatedHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNiNotification, notifyId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local p0    # "this":Lcom/android/internal/location/GpsNetInitiatedHandler;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 549
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080ab1

    .line 551
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    .line 552
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 553
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 554
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    .line 555
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    .line 559
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    if-eqz v3, :cond_3

    .line 560
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 562
    :cond_3
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 565
    :goto_0
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 566
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 567
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 569
    const/4 v3, 0x0

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    .line 533
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local p1    # "notif":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static blacklist stringToByteArray(Ljava/lang/String;Z)[B
    .locals 5
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "isHex"    # Z

    .line 631
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p1, :cond_0

    div-int/lit8 v0, v0, 0x2

    .line 632
    .local v0, "length":I
    :cond_0
    new-array v1, v0, [B

    .line 635
    .local v1, "output":[B
    if-eqz p1, :cond_1

    .line 637
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 639
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 637
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 643
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 645
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 649
    :cond_2
    return-object v1
.end method


# virtual methods
.method public blacklist getInEmergency()Z
    .locals 2

    .line 402
    iget-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    move-result v0

    return v0
.end method

.method public blacklist getInEmergency(J)Z
    .locals 7
    .param p1, "emergencyExtensionMillis"    # J

    .line 415
    iget-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, p1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 419
    .local v0, "isInEmergencyExtension":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v3

    .line 420
    .local v3, "isInEmergencyCallback":Z
    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result v4

    .line 421
    .local v4, "isInEmergencySmsMode":Z
    iget-boolean v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsInEmergencyCall:Z

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public blacklist getLocationEnabled()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    return v0
.end method

.method public blacklist getSuplEsEnabled()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    return v0
.end method

.method public greylist handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 2
    .param p1, "notif"    # Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    .line 432
    sget-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in handleNiNotification () : notificationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsSuplEsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsLocationEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiInEs(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0

    .line 442
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNi(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 456
    :goto_0
    return-void
.end method

.method public blacklist setEmergencyExtensionSeconds(I)V
    .locals 3
    .param p1, "emergencyExtensionSeconds"    # I

    .line 426
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 427
    return-void
.end method

.method public blacklist setSuplEsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 368
    iput-boolean p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    .line 369
    return-void
.end method

.method public blacklist updateLocationMode()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    .line 380
    return-void
.end method
