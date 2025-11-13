.class public Lcom/samsung/android/knox/ContainerProxy;
.super Ljava/lang/Object;
.source "ContainerProxy.java"


# static fields
.field public static final greylist CATEGORY_CORE:Ljava/lang/String; = "core"

.field static final greylist COMMAND_BASE:Ljava/lang/String; = "knox.container.proxy.COMMAND_"

.field public static final greylist COMMAND_FOCUSED_USER_CHANGED:Ljava/lang/String; = "knox.container.proxy.COMMAND_FOCUSED_USER_CHANGED"

.field public static final greylist COMMAND_LEGACY_ENFORCE_PASSWORD:Ljava/lang/String; = "knox.container.proxy.COMMAND_ENFORCE_PASSWORD"

.field public static final greylist COMMAND_LEGACY_RESET_PASSWORD:Ljava/lang/String; = "knox.container.proxy.COMMAND_RESET_PASSWORD"

.field public static final greylist COMMAND_LOCK_PROFILE:Ljava/lang/String; = "knox.container.proxy.COMMAND_LOCK_PROFILE"

.field public static final greylist COMMAND_MANUAL_LOCK:Ljava/lang/String; = "knox.container.proxy.COMMAND_MANUAL_LOCK"

.field public static final greylist COMMAND_SWITCH_PROFILE:Ljava/lang/String; = "knox.container.proxy.COMMAND_SWITCH_PROFILE"

.field public static final greylist COMMAND_UPDATE_SWITCHER_NOTIFICATION:Ljava/lang/String; = "knox.container.proxy.COMMAND_UPDATE_SWITCHER_NOTIFICATION"

.field static final greylist EVENT_BASE:Ljava/lang/String; = "knox.container.proxy.EVENT_"

.field public static final greylist EVENT_DUAL_DAR_TRIAL_LICENSE_EXPIRED:Ljava/lang/String; = "knox.container.proxy.EVENT_DUAL_DAR_TRIAL_LICENSE_EXPIRED"

.field public static final greylist EVENT_FINGERPRINT_CHANGE:Ljava/lang/String; = "knox.container.proxy.EVENT_FINGERPRINT_CHANGE"

.field public static final greylist EVENT_HOME_SHOWN:Ljava/lang/String; = "knox.container.proxy.EVENT_HOME_SHOWN"

.field public static final greylist EVENT_LOCK_TIMEOUT:Ljava/lang/String; = "knox.container.proxy.EVENT_LOCK_TIMEOUT"

.field public static final greylist EVENT_NOTIFY_ACTIVITY_DRAWN:Ljava/lang/String; = "knox.container.proxy.EVENT_ACTIVITY_DRAWN"

.field public static final greylist EVENT_UCM_TRIAL_LICENSE_EXPIRED:Ljava/lang/String; = "knox.container.proxy.EVENT_UCM_TRIAL_LICENSE_EXPIRED"

.field private static final greylist EXTRA_BASE:Ljava/lang/String; = "knox.container.proxy.EXTRA_"

.field public static final greylist EXTRA_CALLING_PID:Ljava/lang/String; = "knox.container.proxy.EXTRA_CALLING_PID"

.field public static final greylist EXTRA_CALLING_UID:Ljava/lang/String; = "knox.container.proxy.EXTRA_CALLING_UID"

.field public static final greylist EXTRA_COMPONENT_NAME:Ljava/lang/String; = "knox.container.proxy.EXTRA_COMPONENT_NAME"

.field public static final greylist EXTRA_CONTAINER_OWNER:Ljava/lang/String; = "knox.container.proxy.EXTRA_CONTAINER_OWNER"

.field public static final greylist EXTRA_FLAGS:Ljava/lang/String; = "knox.container.proxy.EXTRA_FLAGS"

.field public static final greylist EXTRA_FLAG_DISABLE_IMMEDIATELY_LOCK:Ljava/lang/String; = "knox.container.proxy.EXTRA_FLAG_DISABLE_IMMEDIATELY_LOCK"

.field public static final greylist EXTRA_FLAG_IS_CUSTOM_CONTAINER:Ljava/lang/String; = "knox.container.proxy.EXTRA_FLAG_IS_CUSTOM_CONTAINER"

.field public static final greylist EXTRA_FROM_HOME_KEY:Ljava/lang/String; = "knox.container.proxy.EXTRA_FROM_HOME_KEY"

.field public static final greylist EXTRA_HOME_SCREEN_WALLPAPER:Ljava/lang/String; = "knox.container.proxy.EXTRA_KNOX_HOME_SCREEN_WALLPAPER"

.field public static final greylist EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final greylist EXTRA_KEY:Ljava/lang/String; = "knox.container.proxy.EXTRA_KEY"

.field public static final greylist EXTRA_KNOX_LICENSE_RESULT_CODE:Ljava/lang/String; = "knox.container.proxy.EXTRA_KNOX_LICENSE_RESULT_CODE"

.field public static final greylist EXTRA_KNOX_LICENSE_RESULT_TYPE:Ljava/lang/String; = "knox.container.proxy.EXTRA_KNOX_LICENSE_RESULT_TYPE"

.field public static final greylist EXTRA_MULTIWINDOWRECORD:Ljava/lang/String; = "knox.container.proxy.EXTRA_MULTIWINDOWRECORD"

.field public static final greylist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "knox.container.proxy.EXTRA_PACKAGE_NAME"

.field public static final greylist EXTRA_RESOLVE_INFO:Ljava/lang/String; = "knox.container.proxy.EXTRA_RESOLVE_INFO"

.field public static final greylist EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final greylist EXTRA_SHOW_WHEN_LOCKED:Ljava/lang/String; = "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

.field public static final greylist EXTRA_TASK_ID:Ljava/lang/String; = "knox.container.proxy.EXTRA_TASK_ID"

.field public static final greylist EXTRA_USERID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final greylist EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final greylist EXTRA_USER_INFO:Ljava/lang/String; = "knox.container.proxy.EXTRA_USER_INFO"

.field public static final greylist EXTRA_VALUE:Ljava/lang/String; = "knox.container.proxy.EXTRA_VALUE"

.field public static final greylist POLICY_ADD_USER_RESTRICTION:Ljava/lang/String; = "knox.container.proxy.POLICY_ADD_USER_RESTRICTION"

.field public static final greylist POLICY_ADMIN_LOCK:Ljava/lang/String; = "knox.container.proxy.POLICY_ADMIN_LOCK"

.field public static final greylist POLICY_ADMIN_UNLOCK:Ljava/lang/String; = "knox.container.proxy.POLICY_ADMIN_UNLOCK"

.field static final greylist POLICY_BASE:Ljava/lang/String; = "knox.container.proxy.POLICY_"

.field public static final greylist POLICY_CLEAR_USER_RESTRICTION:Ljava/lang/String; = "knox.container.proxy.POLICY_CLEAR_USER_RESTRICTION"

.field public static final greylist POLICY_DEVICE_COMPROMISE:Ljava/lang/String; = "knox.container.proxy.POLICY_DEVICE_COMPROMISE"

.field public static final greylist POLICY_KNOX_LICENSE_STATE_CHANGE:Ljava/lang/String; = "knox.container.proxy.POLICY_KNOX_LICENSE_STATE_CHANGE"

.field public static final greylist POLICY_REVERT_CONTAINER_POLICY:Ljava/lang/String; = "knox.container.proxy.POLICY_REVERT_CONTAINER_POLICY"

.field public static final greylist POLICY_SDCARD_POLICY_CHANGED:Ljava/lang/String; = "knox.container.proxy.POLICY_SDCARD_POLICY_CHANGED"

.field public static final greylist RESULT_FAILED:I = 0x1

.field public static final greylist RESULT_FAILED_NO_PROFILE:I = 0x3

.field public static final greylist RESULT_FAILED_OPNOTSUPP:I = 0x2

.field public static final greylist RESULT_SERVICE_NOT_FOUND:I = 0x63

.field public static final greylist RESULT_SUCCESS:I = 0x0

.field private static final greylist TAG:Ljava/lang/String; = "KnoxService::ContainerProxy"

.field public static final greylist TEST_BASE:Ljava/lang/String; = "knox.container.proxy.TEST_"

.field private static greylist _instance:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/ContainerProxy;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist getService()Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ContainerProxy;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_0

    const-string v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/ContainerProxy;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/ContainerProxy;->_instance:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method

.method public static greylist sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "knox.container.proxy.COMMAND_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCommand() not a command type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxService::ContainerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "core"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knox/ContainerProxy;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "knox.container.proxy.EVENT_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent() not a event type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxService::ContainerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "core"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knox/ContainerProxy;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "knox.container.proxy.POLICY_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPolicyUpdate() not a policy type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxService::ContainerProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "core"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knox/ContainerProxy;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static greylist sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/ContainerProxy;->getService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/ContainerProxy;->getService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/ISemPersonaManager;->sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
