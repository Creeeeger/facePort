.class public Lcom/sec/ims/ImsManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final IMS_API_VERSION:I = 0x2

.field private static final IMS_PLATFORM_VERSION:I = 0xebf0

.field public static final INTENT_ACTION_IMSSERVICE_RESTART:Ljava/lang/String; = "com.sec.ims.imsmanager.RESTART"

.field public static final INTENT_ACTION_RCS_ENABLE:Ljava/lang/String; = "android.intent.action.RCS_ENABLE"

.field public static final INTENT_PARAM_IPME_ENABLE:Ljava/lang/String; = "IPME_ENABLE"

.field public static final INTENT_PARAM_RCS_ENABLE:Ljava/lang/String; = "RCS_ENABLE"

.field public static final INTENT_PARAM_RCS_ENABLE_TYPE:Ljava/lang/String; = "action_type"

.field public static final INTENT_VALUE_RCS_ENABLE_TYPE_ALL_RCS:Ljava/lang/String; = "ALL_RCS"

.field public static final INTENT_VALUE_RCS_ENABLE_TYPE_IPME:Ljava/lang/String; = "IPME"

.field static final LOG_TAG:Ljava/lang/String; = "legacyImsManager"

.field private static final SERVICE_NAME:Ljava/lang/String; = "secims"

.field public static final VOLTE:Ljava/lang/String; = "volte"


# instance fields
.field private final mAutoConfigurationListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IAutoConfigurationListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmcRegListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDialogListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IDialogEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEpdgListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IEpdgListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

.field mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

.field private final mImSessionListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/im/IImSessionListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

.field private final mOngoingFtEventListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/ft/IImsOngoingFtEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private final mRegListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartReceiver:Landroid/content/BroadcastReceiver;

.field private final mRttListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IRttEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBound:Z

.field private final mSimMobilityStatusListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/ISimMobilityStatusListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/volte2/IImsVideoListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/ims/ImsManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetImsService(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/IImsService;
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monConnectService(Lcom/sec/ims/ImsManager;Lcom/sec/ims/IImsService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsManager;->onConnectService(Lcom/sec/ims/IImsService;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/ims/ImsManager;->mServiceBound:Z

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    new-instance v1, Lcom/sec/ims/ImsManager$2;

    invoke-direct {v1, p0}, Lcom/sec/ims/ImsManager$2;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/ims/ImsManager;->mServiceBound:Z

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    new-instance v0, Lcom/sec/ims/ImsManager$2;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$2;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/ims/ImsManager;->mServiceBound:Z

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    new-instance v0, Lcom/sec/ims/ImsManager$2;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$2;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    iput p3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    return-void
.end method

.method public static getImsApiVersion()I
    .locals 2

    const-string v0, "legacyImsManager"

    const-string v1, "Current IMS API Version is 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0
.end method

.method private getImsService()Lcom/sec/ims/IImsService;
    .locals 1

    const-string v0, "secims"

    invoke-direct {p0, v0}, Lcom/sec/ims/ImsManager;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;

    move-result-object p0

    return-object p0
.end method

.method public static getImsVersion()I
    .locals 2

    const-string v0, "legacyImsManager"

    const-string v1, "Current IMS Platform Version is 60400"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xebf0

    return v0
.end method

.method private getSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    const-string p0, "Failed to getService "

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "legacyImsManager"

    if-eqz v1, :cond_1

    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1
    const-string p0, "Failed to reflect method getService"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private onConnectService(Lcom/sec/ims/IImsService;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsManager;->registerPreviousListeners(Lcom/sec/ims/IImsService;)V

    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    invoke-interface {p0}, Lcom/sec/ims/ImsManager$ConnectionListener;->onConnected()V

    :cond_0
    return-void
.end method

.method private registerPreviousListeners(Lcom/sec/ims/IImsService;)V
    .locals 4

    const-string v0, "registerPreviousListeners:  mRegListeners:"

    monitor-enter p0

    :try_start_0
    const-string v1, "legacyImsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mDialogListeners:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mVideoListeners:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mImSessionListeners:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mOngoingFtEventListeners:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mAutoConfigurationListener:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mSimMobilityStatusListeners:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mEpdgListeners:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCmcRegListeners:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IDialogEventListener;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v2, v1}, Lcom/sec/ims/IImsService;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/im/IImSessionListener;

    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IAutoConfigurationListener;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ISimMobilityStatusListener;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IEpdgListener;

    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_8
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_f
    monitor-exit p0

    return-void

    :goto_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public changeEPDGAudioPath(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "changeEPDGAudioPath: "

    invoke-static {p1, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->changeAudioPathForSlot(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public connectService()V
    .locals 4

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register Receiver for Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/ims/ImsManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$1;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "com.sec.ims.imsmanager.RESTART"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/ims/ImsManager;->onConnectService(Lcom/sec/ims/IImsService;)V

    return-void
.end method

.method public deregisterAdhocProfile(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "deregisterAdhocProfile: id "

    invoke-static {p1, v2, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "deregisterAdhocProfile: Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->deregisterAdhocProfileByPhoneId(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deregisterProfile(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "legacyImsManager"

    const-string p1, "Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/IImsService;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disconnectService()V
    .locals 4

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "legacyImsManager["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterReceiver "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/ims/ImsManager$ConnectionListener;->onDisconnected()V

    :cond_1
    return-void
.end method

.method public doDump()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "]"

    const-string v2, "Not initialized."

    invoke-static {v0, p0, v1, v2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->dump()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableIpme(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "]"

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableIpme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/ims/ImsManager;->enableRcs(Z)V

    return-void
.end method

.method public enableRcs(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "]"

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableRcs: "

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->enableRcsByPhoneId(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableService(Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "enableService: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "enableService: not connected."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/IImsService;->enableServiceByPhoneId(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableVoLte(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "enableVoLte: "

    const-string v1, "legacyImsManager"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "enableVoLte: not connected."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->enableVoLte(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public finishDmConfig(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "finishDmConfig"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->finishDmConfig(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCallCount()[I
    .locals 4

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "legacyImsManager["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "]"

    const-string v3, "Not initialized."

    invoke-static {v0, p0, v2, v3}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 p0, -0x1

    :try_start_0
    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->getCallCount(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public getCallCount(I)[I
    .locals 3

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "legacyImsManager["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "]"

    const-string v2, "Not initialized."

    invoke-static {p1, p0, v0, v2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->getCallCount(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getCmcCallInfo"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "getCmcCallInfo: Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method public getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getConfigValues"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method public getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getCurrentProfile"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "fail to get profiles"

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getCurrentProfile(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getCurrentProfile"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "fail to get profiles"

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getEpsFbCallCount(I)I
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "legacyImsManager["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "]"

    const-string v3, "getEpsFbCallCount"

    invoke-static {p1, v1, v2, v3}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p1

    const/4 v1, -0x1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v2, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->getEpsFbCallCount(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getLastDialogEvent()Lcom/sec/ims/DialogEvent;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getLastDialogEvent"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method public getNrSaCallCount(I)I
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "legacyImsManager["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "]"

    const-string v3, "getNrSaCallCount"

    invoke-static {p1, v1, v2, v3}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p1

    const/4 v1, -0x1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v2, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->getNrSaCallCount(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getPhoneId()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    return p0
.end method

.method public getRcsProfileType()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getRcsProfileType"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v4}, Lcom/sec/ims/IImsService;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "fail to get profile"

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getRegistrationInfo"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "getRegistrationInfo: Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getRegistrationInfoByServiceType"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "getRegistrationInfoByServiceType: Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method public getRttMode()I
    .locals 4

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "legacyImsManager["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "]"

    const-string v3, "Not initialized."

    invoke-static {v0, p0, v2, v3}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->getRttMode(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public getVideocallType()I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "getVideocallType"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->getVideocallType()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public hasCrossSimImsService(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "legacyImsManager"

    const-string p1, "Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->hasCrossSimImsService(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public hasVoLteSim()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "hasVoLteSim"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->hasVoLteSimByPhoneId(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isCmcEmergencyCallSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "isCmcEmergencyCallSupported"

    const-string v1, "legacyImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->isCmcEmergencyCallSupported(I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "isCmcEmergencyCallSupported: Not initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public isCmcEmergencyNumber(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "isCmcEmergencyNumber"

    const-string v1, "legacyImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isCmcEmergencyNumber: Not initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->isCmcEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "isCmcPotentialEmergencyNumber"

    const-string v1, "legacyImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isCmcPotentialEmergencyNumber: Not initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isCrossSimCallingRegistered(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "legacyImsManager"

    const-string p1, "Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCrossSimCallingRegistered(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public isCrossSimCallingSupported()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "legacyImsManager"

    const-string v1, "Not initialized."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/ims/IImsService;->isCrossSimCallingSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "legacyImsManager"

    const-string p1, "Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public isCrossSimPermanentBlocked()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "legacyImsManager"

    const-string v0, "Not initialized."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->isCrossSimPermanentBlocked(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public isForbidden()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "isForbidden"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->isForbiddenByPhoneId(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isIpmeEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isIpmeEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/ims/ImsManager;->isRcsEnabled()Z

    move-result p0

    return p0
.end method

.method public isNonVerifiedMno(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->isNonVerifiedMno(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public isQSSSuccessAuthAndLogin()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "isQSSSuccessAuthAndLogin"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "isQSSSuccessAuthAndLogin: Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->isQSSSuccessAuthAndLogin(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public isRcsEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/ims/ImsManager;->isRcsEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabled(Z)Z
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "]"

    const-string v1, "isRcsEnabled: version "

    const-string v2, "legacyImsManager["

    new-instance v3, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v4, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "rcs_user_setting"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v4, :cond_0

    move v6, v4

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "isRcsEnabled: rcs_user_setting is not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_0
    move v6, v5

    :goto_0
    if-nez p1, :cond_1

    return v6

    :cond_1
    :try_start_1
    const-string p1, "root/vers/version"

    invoke-virtual {v3, p1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v7, "true"

    const-string v8, "info/completed"

    invoke-virtual {v3, v8}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " autoConfigComplete "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    move v3, v5

    goto :goto_1

    :catch_3
    move-exception v1

    move p1, v5

    move v3, p1

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isRcsEnabled: AutoConfiguration is not completed."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    if-eqz v6, :cond_2

    if-eqz v3, :cond_3

    if-lez p1, :cond_2

    goto :goto_3

    :cond_2
    move v4, v5

    :cond_3
    :goto_3
    return v4
.end method

.method public isRttCall(I)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "legacyImsManager["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "]"

    const-string v2, "Not initialized."

    invoke-static {p1, p0, v0, v2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->isRttCall(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public isServiceAvailable(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "isServiceAvailable: "

    invoke-static {v2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "isServiceAvailable: not connected."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1, p0}, Lcom/sec/ims/IImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isServiceAvailable(Ljava/lang/String;I)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "isServiceAvailable: "

    const-string v4, ", "

    invoke-static {p2, v2, p1, v4, v0}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "isServiceAvailable: not connected."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/IImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isServiceEnabled(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "isServiceEnabled: "

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.sec.ims.settings/imsswitch"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "simslot"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "legacyImsManager"

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v1, v4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v0, "isServiceEnabled: false due to IllegalArgumentException"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_3
    :goto_1
    :try_start_3
    const-string v0, "isServiceEnabled: not found"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :goto_2
    if-eqz p0, :cond_5

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
.end method

.method public isSupportVoWiFiDisable5GSA()Z
    .locals 3

    const-string v0, "isSupportVoWiFiDisable5GSA"

    const-string v1, "legacyImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isSupportVoWiFiDisable5GSA: Not initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->isSupportVoWiFiDisable5GSA(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isVoLteEnabled()Z
    .locals 9

    const-string v0, "isVoLteEnabled: "

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://com.sec.ims.settings/imsswitch"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "simslot"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v1, "volte"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "]"

    const-string v3, "legacyImsManager["

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "name"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "enabled"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v4, v7

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isVoLteEnabled: false due to IllegalArgumentException"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    :cond_3
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isVoLteEnabled: not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v4

    :goto_2
    if-eqz v1, :cond_5

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p0
.end method

.method public isVolteEnabledFromNetwork()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "isVolteEnabledFromNetwork"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "isVolteEnabledFromNetwork: Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->isVolteEnabledFromNetwork(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public isVolteSupportECT()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "isVolteSupportECT"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "isVolteSupportECT: Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->isVolteSupportEctByPhoneId(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public newCmcMediaRecorder()Lcom/sec/ims/CmcMediaRecorder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "legacyImsManager"

    const-string v0, "newCmcMediaRecorder: not connected."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/sec/ims/CmcMediaRecorder;

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-direct {v1, v0, p0}, Lcom/sec/ims/CmcMediaRecorder;-><init>(Lcom/sec/ims/IImsService;I)V

    return-object v1
.end method

.method public registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "registerAdhocProfile"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "registerAdhocProfile: Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "registerAutoConfigurationListener"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "listener is null."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "Not initialized."

    invoke-static {v0, v1, v3, v2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized registerCmcRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerCmcRegistrationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, p1, v0}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerDialogEventListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v0, p1}, Lcom/sec/ims/IImsService;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public registerDmValueListener(Lcom/sec/ims/ImsManager$DmConfigEventRelay;)V
    .locals 2

    const-string v0, "]"

    const-string v1, "legacyImsManager["

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {p1, p0, v0, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    invoke-interface {p1, p0}, Lcom/sec/ims/IImsService;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "listener is null"

    invoke-static {p1, p0, v0, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerEpdgListener(Lcom/sec/ims/IEpdgListener;)V
    .locals 3

    const-string v0, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    const-string v1, "legacyImsManager"

    const-string v2, "registerEpdgListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "legacyImsManager"

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "registerImSessionListener"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "listener is null."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "Not initialized."

    invoke-static {v0, v1, v3, v2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "registerImsOngoingFtEventListener"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v2, "Not initialized."

    invoke-static {v0, v1, v3, v2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "registerImsOngoingFtEventListener : wrong instance or null"

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerImsRegistrationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, -0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerImsRegistrationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "listener is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not initialized."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IImsService;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public registerProfile(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "legacyImsManager"

    const-string p1, "Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->registerProfileByPhoneId(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerRttEventListener(Lcom/sec/ims/IRttEventListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerDialogEventListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v0, p1}, Lcom/sec/ims/IImsService;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerSimMobilityStatusListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, -0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/ImsManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "registerSimMobilityStatusListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "listener is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not initialized."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IImsService;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public sendDeregister(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "sendDeregister"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-static {p1, p0, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->sendDeregister(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendIidToken(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "sendIidToken"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->sendIidToken(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "sendMsisdnNumber"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->sendMsisdnNumber(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sendRttMessage: "

    invoke-static {v2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "setRttMode: not connected."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->sendRttMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "sendRttSessionModifyRequest: "

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "sendRttSessionModifyRequest: not connected."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/ims/IImsService;->sendRttSessionModifyRequest(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sendRttSessionModifyResponse: "

    invoke-static {v2, v0, p2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "sendRttSessionModifyResponse: not connected."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/ims/IImsService;->sendRttSessionModifyResponse(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendTryRegister()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "sendTryRegister"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "sendTryRegister: Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->sendTryRegisterByPhoneId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendTryRegisterCms(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendTryRegisterCms"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sendTryRegisterCms: Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->sendTryRegisterCms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendUpdateRegister()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "sendInitialRegister"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-static {v0, p0, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    const-string v5, "mmtel"

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/ims/IImsService;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "sendVerificationCode"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->sendVerificationCode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setActiveMsisdn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setActiveMsisdn: msisdn "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "setActiveMsisdn: Not initialized."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/ims/IImsService;->setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public setAutomaticMode(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setAutomaticMode: "

    invoke-static {v2, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "setAutomaticMode: not connected."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->setAutomaticMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCrossSimPermanentBlocked(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "legacyImsManager"

    const-string p1, "Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->setCrossSimPermanentBlocked(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setEmergencyPdnInfo: intfName "

    invoke-static {v2, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "setEmergencyPdnInfo: Not initialized."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/sec/ims/IImsService;->setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setNrInterworkingMode(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "legacyImsManager"

    const-string p1, "Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->setNrInterworkingMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setRttMode(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setRttMode: "

    invoke-static {p1, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "setRttMode: not connected."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/ims/IImsService;->setRttMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVideocallType(I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setVideocallType: "

    invoke-static {p1, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->setVideocallType(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public startDmConfig()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "startDmConfig"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/ims/IImsService;->startDmConfig(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public startLocalRingBackTone(III)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "startLocalRingBackTone: "

    const-string v4, ", "

    invoke-static {p1, p2, v2, v4, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "Not initialized."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/ims/IImsService;->startLocalRingBackTone(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-static {p0, v3, p2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "startLocalRingBackTone has Error "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public stopLocalRingBackTone()I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "stopLocalRingBackTone:"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v1, "Not initialized."

    invoke-static {v0, p0, v3, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->stopLocalRingBackTone()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-static {p0, v3, v4}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "stopLocalRingBackTone has Error "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public suspendRegister(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "legacyImsManager["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "]"

    const-string v1, "SuspendRegi Error. ImsService null."

    invoke-static {p1, p0, v0, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->suspendRegister(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "transferCall msisdn : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dialogId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "Not initialized."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/ims/IImsService;->transferCall(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 2

    const-string v0, "triggerAutoConfigurationForApp"

    const-string v1, "legacyImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Not initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->triggerAutoConfigurationForApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized unRegisterEpdgListener(Lcom/sec/ims/IEpdgListener;)V
    .locals 3

    const-string v0, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    const-string v1, "legacyImsManager"

    const-string v2, "unRegisterEpdgListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->unRegisterEpdgListener(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_4
    const-string p1, "legacyImsManager"

    const-string v0, "Not initialized or token null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "unregisterAutoConfigurationListener"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "listener is null."

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized or token null."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v2, p1, p0}, Lcom/sec/ims/IImsService;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public declared-synchronized unregisterCmcRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregisterCmcRegistrationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, p1, v0}, Lcom/sec/ims/IImsService;->unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not initialized or token null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregisterDialogEventListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v0, p1}, Lcom/sec/ims/IImsService;->unregisterDialogEventListenerByToken(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not initialized or token null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public unregisterDmValueListener(Lcom/sec/ims/ImsManager$DmConfigEventRelay;)V
    .locals 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "legacyImsManager["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "]"

    const-string v1, "Not initialized."

    invoke-static {p1, p0, v0, v1}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    invoke-interface {p1, p0}, Lcom/sec/ims/IImsService;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "unregisterImSessionListener"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "listener is null."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->unregisterImSessionListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized or token null."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "unregisterImsOngoingFtEventListener"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "listener is null."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->unregisterImsOngoingFtListener(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "legacyImsManager"

    const-string p1, "Not initialized or token null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregisterImsRegistrationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, -0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 2

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "listener is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not initialized or token null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterRttEventListener(Lcom/sec/ims/IRttEventListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregisterDialogEventListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v0, p1}, Lcom/sec/ims/IImsService;->unregisterRttEventListener(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not initialized or token null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;)V
    .locals 4

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    const-string v2, "legacyImsManager["

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unregisterSimMobilityStatusListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listener is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, -0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/ImsManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 2

    const-string v0, "legacyImsManager["

    const-string v1, "legacyImsManager["

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "listener is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v1, p1, p2}, Lcom/sec/ims/IImsService;->unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Not initialized or token null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public updateConfigValues(Landroid/content/ContentValues;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "updateConfigValues"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1, p0}, Lcom/sec/ims/IImsService;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public updateConfigValues(Landroid/content/ContentValues;I)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    const-string v4, "updateConfigValues"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string p2, "Not initialized."

    invoke-static {p1, p0, v3, p2}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/ims/IImsService;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "legacyImsManager["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "updateRegistration: profile "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    const-string v0, "updateRegistration: Not initialized."

    invoke-static {p1, p0, v3, v0}, Lcom/sec/ims/ImsManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/ims/IImsService;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method
