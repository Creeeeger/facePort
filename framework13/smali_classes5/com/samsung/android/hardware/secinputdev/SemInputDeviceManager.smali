.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;
.super Ljava/lang/Object;
.source "SemInputDeviceManager.java"


# static fields
.field public static final blacklist CLEAR_COVER_CLOSED:I = 0x3

.field public static final blacklist CLEAR_COVER_OPENED:I = 0x0

.field public static final blacklist DEVID_DEFAULT_TSP:I = 0x1

.field public static final blacklist DEVID_EXTRA_TSP:I = 0x2

.field public static final blacklist DEVID_KEY:I = 0x15

.field public static final blacklist DEVID_KEYBOARD:I = 0x1f

.field public static final blacklist DEVID_SPEN:I = 0xb

.field public static final blacklist DEVID_TSP_MAX:I = 0x3

.field public static final blacklist EAR_DETECT_DISABLE:I = 0x0

.field public static final blacklist EAR_DETECT_HIGH_SENSE_ENABLE:I = 0x3

.field public static final blacklist EAR_DETECT_LOW_SENSE_ENABLE:I = 0x1

.field public static final blacklist EXTERNAL_NOISE_DEX:I = 0x1

.field public static final blacklist FOD_PRESS_FAST_MODE_DISABLE:I = 0x0

.field public static final blacklist FOD_PRESS_FAST_MODE_ENABLE:I = 0x1

.field public static final blacklist FOD_STRICT_MODE_DISABLE:I = 0x0

.field public static final blacklist FOD_STRICT_MODE_ENABLE:I = 0x1

.field public static final blacklist FORCE_OFF:I = 0x15

.field public static final blacklist FORCE_ON:I = 0x16

.field public static final blacklist KEY_BACK:I = 0x9e

.field public static final blacklist KEY_EMERGENCY:I = 0x2a0

.field public static final blacklist KEY_HOME:I = 0xac

.field public static final blacklist KEY_HOT:I = 0xfc

.field public static final blacklist KEY_MICMUTE:I = 0xf8

.field public static final blacklist KEY_POWER:I = 0x74

.field public static final blacklist KEY_RECENT:I = 0xfe

.field public static final blacklist KEY_VOLUMEDOWN:I = 0x72

.field public static final blacklist KEY_VOLUMEUP:I = 0x73

.field public static final blacklist LCD_DOZE1:I = 0x3

.field public static final blacklist LCD_DOZE2:I = 0x4

.field public static final blacklist LCD_EARLY_EVENT:Z = false

.field public static final blacklist LCD_LATE_EVENT:Z = true

.field public static final blacklist LCD_NONE:I = 0x0

.field public static final blacklist LCD_OFF:I = 0x1

.field public static final blacklist LCD_ON:I = 0x2

.field public static final blacklist MODE_DISABLE:I = 0x0

.field public static final blacklist MODE_ENABLE:I = 0x1

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_HIGH:I = 0x2

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_LOW:I = 0x0

.field public static final blacklist MOTION_CONTROL_AIVF_THRESHOLD_TO_MID:I = 0x1

.field public static final blacklist MOTION_CONTROL_ALL_SIP_IS_DISABLED:I = 0xc

.field public static final blacklist MOTION_CONTROL_ALL_SIP_IS_ENABLED:I = 0xb

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_EVENT:Ljava/lang/String; = "AIVF_EVENT"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_SENSITIVITY:Ljava/lang/String; = "AIVF_SENSITIVITY"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_THRESHOLD:Ljava/lang/String; = "AIVF_THRESHOLD"

.field public static final blacklist MOTION_CONTROL_TYPE_AIVF_VOLUME:Ljava/lang/String; = "AIVF_VOLUME"

.field public static final blacklist MOTION_CONTROL_TYPE_ALL:Ljava/lang/String; = "ALL"

.field public static final blacklist MOTION_ENABLE_TYPE_AIVF:Ljava/lang/String; = "AIVF"

.field public static final blacklist MOTION_ENABLE_TYPE_PALM:Ljava/lang/String; = "PALM"

.field public static final blacklist MOTION_ERROR_TYPE_NOT_LOADED_SERVICE:I = -0x2

.field public static final blacklist MOTION_ERROR_TYPE_NOT_SUPPORT_HARDWARE:I = -0x1

.field public static final blacklist MOTION_ERROR_TYPE_NOT_SUPPORT_MOTION:I = -0x3

.field public static final blacklist MOTION_ERROR_TYPE_NULL_STRING:I = -0x4

.field public static final blacklist MOTION_TYPE_AIVF:I = 0x5

.field public static final blacklist MOTION_TYPE_AWD:I = 0x6

.field public static final blacklist MOTION_TYPE_EAR_DETECTION:I = 0x3

.field public static final blacklist MOTION_TYPE_GRIP_FILTER:I = 0x4

.field public static final blacklist MOTION_TYPE_NONE:I = 0x0

.field public static final blacklist MOTION_TYPE_PALM_MUTE:I = 0x1

.field public static final blacklist MOTION_TYPE_PALM_SWIPE:I = 0x2

.field public static final blacklist MOTION_TYPE_RAWDATA_ALWAYS_ON:I = 0x7

.field public static final blacklist RESULT_NG:I = -0x1

.field public static final blacklist RESULT_OK:I = 0x0

.field public static final blacklist RESULT_STR_NA:Ljava/lang/String; = "NA"

.field public static final blacklist RESULT_STR_NG:Ljava/lang/String; = "NG"

.field public static final blacklist SERVICE_SHUTDOWN:I = -0x1

.field public static final blacklist SPEN_MODE_NONE:I = 0x0

.field public static final blacklist SPEN_MODE_POGO_KEYBOARD:I = 0x2

.field public static final blacklist SPEN_MODE_SPEN_COVER:I = 0x1

.field public static final blacklist SUPPORT_AOT:I = 0x1

.field public static final blacklist SUPPORT_INPUT_MONITOR:I = 0x10000

.field public static final blacklist SUPPORT_MISCALIBRATION:I = 0x200

.field public static final blacklist SUPPORT_MULTICALIBRATION:I = 0x400

.field public static final blacklist SUPPORT_OPENSHORT:I = 0x100

.field public static final blacklist SUPPORT_PRESSURE:I = 0x2

.field public static final blacklist SUPPORT_PROX_LP_SCAN_ENABLED:I = 0x40

.field public static final blacklist SUPPORT_RAWDATA_MOTION_AIVF:I = 0x200000

.field public static final blacklist SUPPORT_RAWDATA_MOTION_PALM:I = 0x100000

.field public static final blacklist SUPPORT_RR120:I = 0x4

.field public static final blacklist SUPPORT_SYSINPUT_ENABLED:I = 0x20

.field public static final blacklist SUPPORT_VRR:I = 0x8

.field public static final blacklist SUPPORT_WIRELESS_TX:I = 0x10

.field public static final blacklist SYNC_CHANGED_30_TO_60:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemInputDeviceManager"


# instance fields
.field private blacklist service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "SemInputDeviceManager"

    if-nez p1, :cond_0

    .line 134
    const-string v1, "ISemInputDeviceManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 137
    :cond_0
    const-string v1, "SemInputDeviceManager ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 139
    return-void
.end method


# virtual methods
.method public blacklist clearHwParam(I)I
    .locals 4
    .param p1, "devid"    # I

    .line 839
    const/4 v0, -0x1

    .line 841
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 842
    const-string v1, "clearHwParam: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return v0

    .line 847
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->clearHwParam(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 850
    goto :goto_0

    .line 848
    :catch_0
    move-exception v1

    .line 849
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 853
    const/4 v1, -0x1

    return v1

    .line 856
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist enableMotion(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;

    .line 1362
    const/4 v0, -0x1

    .line 1364
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1365
    const-string v1, "enableMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return v0

    .line 1370
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1373
    goto :goto_0

    .line 1371
    :catch_0
    move-exception v1

    .line 1372
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getAodActiveArea(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 923
    const-string v0, "NG"

    .line 925
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 926
    const-string v1, "getAodActiveArea: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    return-object v0

    .line 931
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getAodActiveArea(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 934
    goto :goto_0

    .line 932
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getFodInfo(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 883
    const-string v0, "NG"

    .line 885
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 886
    const-string v1, "getFodInfo: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-object v0

    .line 891
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getFodInfo(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 894
    goto :goto_0

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getFodPosition(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 903
    const-string v0, "NG"

    .line 905
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 906
    const-string v1, "getFodPosition: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-object v0

    .line 911
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getFodPosition(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 914
    goto :goto_0

    .line 912
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getHwParam(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 963
    const-string v0, "NG"

    .line 965
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 966
    const-string v1, "getHwParam: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-object v0

    .line 971
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getHwParam(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 974
    goto :goto_0

    .line 972
    :catch_0
    move-exception v1

    .line 973
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getKeyPressStateAll()Ljava/lang/String;
    .locals 4

    .line 205
    const-string v0, ""

    .line 207
    .local v0, "keystate":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 208
    const-string v1, "getKeyPressStateAll: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v0

    .line 213
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getLpDump(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 943
    const-string v0, "NG"

    .line 945
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 946
    const-string v1, "getLpDump: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-object v0

    .line 951
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getLpDump(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 954
    goto :goto_0

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getMotionControl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 1422
    const/4 v0, -0x1

    .line 1424
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1425
    const-string v1, "getMotionControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return v0

    .line 1430
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1433
    goto :goto_0

    .line 1431
    :catch_0
    move-exception v1

    .line 1432
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1435
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getProxPowerOff(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 863
    const-string v0, "NG"

    .line 865
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 866
    const-string v1, "getProxPowerOff: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-object v0

    .line 871
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getProxPowerOff(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 874
    goto :goto_0

    .line 872
    :catch_0
    move-exception v1

    .line 873
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 876
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getScrubPosition(I)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I

    .line 795
    const-string v0, "NG"

    .line 797
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 798
    const-string v1, "getScrubPosition: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-object v0

    .line 803
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getScrubPosition(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 806
    goto :goto_0

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getSpenPosition()Ljava/lang/String;
    .locals 4

    .line 1057
    const-string v0, "NG"

    .line 1059
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1060
    const-string v1, "getSpenPosition: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return-object v0

    .line 1065
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getSpenPosition()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1068
    goto :goto_0

    .line 1066
    :catch_0
    move-exception v1

    .line 1067
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist getSupportDevice(I)I
    .locals 4
    .param p1, "devid"    # I

    .line 145
    const/4 v0, -0x1

    .line 147
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 148
    const-string v1, "getSupportDevice: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getSupportDevice(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getTspSupportFeature(I)I
    .locals 4
    .param p1, "devid"    # I

    .line 775
    const/4 v0, 0x0

    .line 777
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 778
    const-string v1, "getTspSupportFeature: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return v0

    .line 783
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getTspSupportFeature(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 786
    goto :goto_0

    .line 784
    :catch_0
    move-exception v1

    .line 785
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 1402
    const/4 v0, -0x1

    .line 1404
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1405
    const-string v1, "isEnableMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return v0

    .line 1410
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1413
    goto :goto_0

    .line 1411
    :catch_0
    move-exception v1

    .line 1412
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist isKeyPressedByKeycode(I)Z
    .locals 4
    .param p1, "keycode"    # I

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "keystate":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 228
    const-string v1, "isKeyPressedByKeycode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v0

    .line 233
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isKeyPressedByKeycode(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist isSupportMotion(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 1342
    const/4 v0, 0x0

    .line 1344
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1345
    const-string v1, "isSupportMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return v0

    .line 1350
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isSupportMotion(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1353
    goto :goto_0

    .line 1351
    :catch_0
    move-exception v1

    .line 1352
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1355
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist registerCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z
    .locals 3
    .param p1, "cb"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v1, "SemInputDeviceManager"

    if-nez v0, :cond_0

    .line 1191
    const-string/jumbo v0, "registerCallback: service is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v0, 0x0

    return v0

    .line 1196
    :cond_0
    if-eqz p1, :cond_1

    .line 1197
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z

    .line 1198
    const-string/jumbo v0, "registerCallback done"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1200
    :cond_1
    const-string/jumbo v0, "registerCallback is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :goto_0
    goto :goto_1

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to call interface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist registerListener(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "client"    # Ljava/lang/String;

    .line 1237
    const/4 v0, 0x0

    .line 1239
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1240
    const-string/jumbo v1, "registerListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return v0

    .line 1245
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1248
    goto :goto_0

    .line 1246
    :catch_0
    move-exception v1

    .line 1247
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1250
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 1278
    const/4 v0, 0x0

    .line 1280
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1281
    const-string/jumbo v1, "registerListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    return v0

    .line 1286
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1289
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v1

    .line 1288
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist runEmergency(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "devid"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 165
    const-string v0, "NG"

    .line 167
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 168
    const-string/jumbo v1, "runEmergency: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v0

    .line 173
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->runEmergency(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 185
    const-string v0, "NG"

    .line 187
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 188
    const-string/jumbo v1, "runEmergencyCurrentTsp: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-object v0

    .line 193
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist sendRawdataTsp(I[I)I
    .locals 4
    .param p1, "devid"    # I
    .param p2, "data"    # [I

    .line 1318
    const/4 v0, -0x1

    .line 1320
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1321
    const-string/jumbo v1, "sendRawdataTsp: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return v0

    .line 1326
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->sendRawdataTsp(I[I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1329
    goto :goto_0

    .line 1327
    :catch_0
    move-exception v1

    .line 1328
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 1332
    const/4 v1, -0x1

    return v1

    .line 1335
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setAodEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 487
    const/4 v0, -0x1

    .line 489
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 490
    const-string/jumbo v1, "setAodEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return v0

    .line 495
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setAodEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 498
    goto :goto_0

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 501
    const/4 v1, -0x1

    return v1

    .line 504
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setAodRect(IIII)I
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 463
    const/4 v0, -0x1

    .line 465
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 466
    const-string/jumbo v1, "setAodRect: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v0

    .line 471
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setAodRect(IIII)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 474
    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 477
    const/4 v1, -0x1

    return v1

    .line 480
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setBrushEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 439
    const/4 v0, -0x1

    .line 441
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 442
    const-string/jumbo v1, "setBrushEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v0

    .line 447
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setBrushEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 450
    goto :goto_0

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 453
    const/4 v1, -0x1

    return v1

    .line 456
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setCoverMode(II)I
    .locals 4
    .param p1, "mode"    # I
    .param p2, "type"    # I

    .line 343
    const/4 v0, -0x1

    .line 345
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 346
    const-string/jumbo v1, "setCoverMode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v0

    .line 351
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setCoverMode(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 354
    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 357
    const/4 v1, -0x1

    return v1

    .line 360
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setEarDetectEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 631
    const/4 v0, -0x1

    .line 633
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 634
    const-string/jumbo v1, "setEarDetectEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return v0

    .line 639
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setEarDetectEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 642
    goto :goto_0

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 645
    const/4 v1, -0x1

    return v1

    .line 648
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setFodEnable(III)I
    .locals 4
    .param p1, "mode"    # I
    .param p2, "pressFast"    # I
    .param p3, "strictMode"    # I

    .line 511
    const/4 v0, -0x1

    .line 513
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 514
    const-string/jumbo v1, "setFodEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return v0

    .line 519
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(III)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 525
    const/4 v1, -0x1

    return v1

    .line 528
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setFodIconVisible(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 535
    const/4 v0, -0x1

    .line 537
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 538
    const-string/jumbo v1, "setFodIconVisible: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v0

    .line 543
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodIconVisible(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 546
    goto :goto_0

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 549
    const/4 v1, -0x1

    return v1

    .line 552
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setFodLpMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 583
    const/4 v0, -0x1

    .line 585
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 586
    const-string v1, "fodLpMode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v0

    .line 591
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodLpMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 594
    goto :goto_0

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 597
    const/4 v1, -0x1

    return v1

    .line 600
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setFodRect(IIII)I
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 559
    const/4 v0, -0x1

    .line 561
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 562
    const-string/jumbo v1, "setFodRect: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return v0

    .line 567
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodRect(IIII)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 570
    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 573
    const/4 v1, -0x1

    return v1

    .line 576
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setFpIntControl(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 679
    const/4 v0, -0x1

    .line 681
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 682
    const-string/jumbo v1, "setFpIntControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return v0

    .line 687
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFpIntControl(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 690
    goto :goto_0

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 693
    const/4 v1, -0x1

    return v1

    .line 696
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setGripData(Ljava/lang/String;)I
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 271
    const/4 v0, -0x1

    .line 273
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 274
    const-string/jumbo v1, "setGripData: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v0

    .line 279
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setGripData(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 285
    const/4 v1, -0x1

    return v1

    .line 288
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setLowSensitivityModeEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 751
    const/4 v0, -0x1

    .line 753
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 754
    const-string/jumbo v1, "setLowSensitivityModeEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return v0

    .line 759
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setLowSensitivityModeEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 762
    goto :goto_0

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 765
    const/4 v1, -0x1

    return v1

    .line 768
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setMotionControl(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 1382
    const/4 v0, -0x1

    .line 1384
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1385
    const-string/jumbo v1, "setMotionControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return v0

    .line 1390
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1393
    goto :goto_0

    .line 1391
    :catch_0
    move-exception v1

    .line 1392
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1395
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist setNoteMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 319
    const/4 v0, -0x1

    .line 321
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 322
    const-string/jumbo v1, "setNoteMode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v0

    .line 327
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setNoteMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 333
    const/4 v1, -0x1

    return v1

    .line 336
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setPocketModeEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 727
    const/4 v0, -0x1

    .line 729
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 730
    const-string/jumbo v1, "setPocketModeEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return v0

    .line 735
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setPocketModeEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 738
    goto :goto_0

    .line 736
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 741
    const/4 v1, -0x1

    return v1

    .line 744
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setProxPowerOff(II)I
    .locals 4
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 815
    const/4 v0, -0x1

    .line 817
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 818
    const-string/jumbo v1, "setProxPowerOff: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return v0

    .line 823
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setProxPowerOff(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 826
    goto :goto_0

    .line 824
    :catch_0
    move-exception v1

    .line 825
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 829
    const/4 v1, -0x1

    return v1

    .line 832
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSingletapEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 607
    const/4 v0, -0x1

    .line 609
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 610
    const-string/jumbo v1, "setSingletapEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return v0

    .line 615
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSingletapEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 618
    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 621
    const/4 v1, -0x1

    return v1

    .line 624
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSipMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 295
    const/4 v0, -0x1

    .line 297
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 298
    const-string/jumbo v1, "setSipMode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v0

    .line 303
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSipMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 309
    const/4 v1, -0x1

    return v1

    .line 312
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSpayEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 391
    const/4 v0, -0x1

    .line 393
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 394
    const-string/jumbo v1, "setSpayEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v0

    .line 399
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpayEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 402
    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 405
    const/4 v1, -0x1

    return v1

    .line 408
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSpenAodEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 1009
    const/4 v0, -0x1

    .line 1011
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1012
    const-string/jumbo v1, "setSpenAodEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return v0

    .line 1017
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpenAodEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1020
    goto :goto_0

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 1023
    const/4 v1, -0x1

    return v1

    .line 1026
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSpenBleChargeMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 1097
    const/4 v0, -0x1

    .line 1099
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1100
    const-string/jumbo v1, "setSpenBleChargeMode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return v0

    .line 1105
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpenBleChargeMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1108
    goto :goto_0

    .line 1106
    :catch_0
    move-exception v1

    .line 1107
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist setSpenCoverType(I)I
    .locals 4
    .param p1, "type"    # I

    .line 1033
    const/4 v0, -0x1

    .line 1035
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1036
    const-string/jumbo v1, "setSpenCoverType: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return v0

    .line 1041
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpenCoverType(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1044
    goto :goto_0

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 1047
    const/4 v1, -0x1

    return v1

    .line 1050
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSpenEnabled(IIZ)I
    .locals 4
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 983
    const/4 v0, -0x1

    .line 985
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 986
    const-string/jumbo v1, "setSpenEnabled: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return v0

    .line 990
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSpenEnabled: devid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",mode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpenEnabled(IIZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 996
    goto :goto_0

    .line 994
    :catch_0
    move-exception v1

    .line 995
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 999
    const/4 v1, -0x1

    return v1

    .line 1002
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSpenLowCurrentMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 1141
    const/4 v0, -0x1

    .line 1143
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1144
    const-string/jumbo v1, "setSpenLowCurrentMode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    return v0

    .line 1149
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpenLowCurrentMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1152
    goto :goto_0

    .line 1150
    :catch_0
    move-exception v1

    .line 1151
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 1155
    const/4 v1, -0x1

    return v1

    .line 1158
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSpenPdctLowSensitivityEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 1117
    const/4 v0, -0x1

    .line 1119
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1120
    const-string/jumbo v1, "setSpenPdctLowSensitivityEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    return v0

    .line 1125
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpenPdctLowSensitivityEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1128
    goto :goto_0

    .line 1126
    :catch_0
    move-exception v1

    .line 1127
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 1131
    const/4 v1, -0x1

    return v1

    .line 1134
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSpenPower(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 1077
    const/4 v0, -0x1

    .line 1079
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1080
    const-string/jumbo v1, "setSpenPower: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return v0

    .line 1085
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpenPower(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1088
    goto :goto_0

    .line 1086
    :catch_0
    move-exception v1

    .line 1087
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist setSpenPowerSavingMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 1165
    const/4 v0, -0x1

    .line 1167
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1168
    const-string/jumbo v1, "setSpenPowerSavingMode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return v0

    .line 1173
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSpenPowerSavingMode(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1176
    goto :goto_0

    .line 1174
    :catch_0
    move-exception v1

    .line 1175
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1178
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 1179
    const/4 v1, -0x1

    return v1

    .line 1182
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setStylusEnable(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 415
    const/4 v0, -0x1

    .line 417
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 418
    const-string/jumbo v1, "setStylusEnable: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v0

    .line 423
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setStylusEnable(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 426
    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 429
    const/4 v1, -0x1

    return v1

    .line 432
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setSyncChanged(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 703
    const/4 v0, -0x1

    .line 705
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 706
    const-string/jumbo v1, "setSyncChanged: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return v0

    .line 711
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setSyncChanged(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 714
    goto :goto_0

    .line 712
    :catch_0
    move-exception v1

    .line 713
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 717
    const/4 v1, -0x1

    return v1

    .line 720
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setTemperature(I)I
    .locals 4
    .param p1, "value"    # I

    .line 367
    const/4 v0, -0x1

    .line 369
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 370
    const-string/jumbo v1, "setTemperature: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v0

    .line 375
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setTemperature(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 381
    const/4 v1, -0x1

    return v1

    .line 384
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setTouchableArea(I)I
    .locals 4
    .param p1, "mode"    # I

    .line 655
    const/4 v0, -0x1

    .line 657
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 658
    const-string/jumbo v1, "setTouchableArea: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v0

    .line 663
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setTouchableArea(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 666
    goto :goto_0

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 669
    const/4 v1, -0x1

    return v1

    .line 672
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setTspEnabled(IIZ)I
    .locals 4
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 245
    const/4 v0, -0x1

    .line 247
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 248
    const-string/jumbo v1, "setTspEnabled: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v0

    .line 252
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTspEnabled: devid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",mode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setTspEnabled(IIZ)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 258
    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-gez v0, :cond_1

    .line 261
    const/4 v1, -0x1

    return v1

    .line 264
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unregisterCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z
    .locals 3
    .param p1, "cb"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1214
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v1, "SemInputDeviceManager"

    if-nez v0, :cond_0

    .line 1215
    const-string/jumbo v0, "unregisterCallback: service is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v0, 0x0

    return v0

    .line 1220
    :cond_0
    if-eqz p1, :cond_1

    .line 1221
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterCallback(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;)Z

    .line 1222
    const-string/jumbo v0, "unregisterCallback done"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    :cond_1
    const-string/jumbo v0, "registerCallback is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    :goto_0
    goto :goto_1

    .line 1226
    :catch_0
    move-exception v0

    .line 1227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to call interface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1230
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist unregisterListener(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "client"    # Ljava/lang/String;

    .line 1257
    const/4 v0, 0x0

    .line 1259
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1260
    const-string/jumbo v1, "unregisterListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return v0

    .line 1265
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1268
    goto :goto_0

    .line 1266
    :catch_0
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1270
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 1298
    const/4 v0, 0x0

    .line 1300
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_0

    .line 1301
    const-string/jumbo v1, "unregisterListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return v0

    .line 1306
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1309
    goto :goto_0

    .line 1307
    :catch_0
    move-exception v1

    .line 1308
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to call interface"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1311
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method
