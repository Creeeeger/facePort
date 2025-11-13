.class public Lcom/sec/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsManager$DmConfigEventRelay;,
        Lcom/sec/ims/ImsManager$ConnectionListener;
    }
.end annotation


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
            "Ljava/lang/Object;",
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
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/ims/ImsManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetImsService(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/IImsService;
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monConnectService(Lcom/sec/ims/ImsManager;Lcom/sec/ims/IImsService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsManager;->onConnectService(Lcom/sec/ims/IImsService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V
    .locals 3

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/sec/ims/ImsManager;->mServiceBound:Z

    .line 136
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    .line 137
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    .line 138
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    .line 139
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    .line 140
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    .line 141
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    .line 142
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    .line 143
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    .line 144
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    .line 145
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 147
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    .line 904
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    .line 905
    new-instance v0, Lcom/sec/ims/ImsManager$2;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$2;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    .line 253
    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 255
    iput p3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    return-void
.end method

.method private getImsService()Lcom/sec/ims/IImsService;
    .locals 1

    const-string v0, "secims"

    .line 263
    invoke-direct {p0, v0}, Lcom/sec/ims/ImsManager;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;

    move-result-object p0

    return-object p0
.end method

.method private getSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    :try_start_0
    const-string p0, "android.os.ServiceManager"

    .line 270
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getService"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 271
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "legacyImsManager"

    if-eqz v0, :cond_1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 273
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 275
    check-cast p0, Landroid/os/IBinder;

    return-object p0

    .line 278
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to getService "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "Failed to reflect method getService"

    .line 281
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 290
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 286
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onConnectService(Lcom/sec/ims/IImsService;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 366
    invoke-direct {p0, p1}, Lcom/sec/ims/ImsManager;->registerPreviousListeners(Lcom/sec/ims/IImsService;)V

    .line 367
    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    invoke-interface {p0}, Lcom/sec/ims/ImsManager$ConnectionListener;->onConnected()V

    :cond_0
    return-void
.end method

.method private registerPreviousListeners(Lcom/sec/ims/IImsService;)V
    .locals 4

    .line 296
    monitor-enter p0

    :try_start_0
    const-string v0, "legacyImsManager"

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPreviousListeners:  mRegListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    .line 298
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDialogListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    .line 299
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mVideoListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    .line 300
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mImSessionListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    .line 301
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOngoingFtEventListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    .line 302
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAutoConfigurationListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    .line 303
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSimMobilityStatusListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    .line 304
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mEpdgListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    .line 305
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCmcRegListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 306
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
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

    .line 310
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
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

    .line 316
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v2, v1}, Lcom/sec/ims/IImsService;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 321
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

    .line 322
    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 324
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 327
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

    .line 328
    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 330
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 333
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

    .line 334
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 336
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 339
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

    .line 340
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 342
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 345
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

    .line 346
    invoke-interface {p1, v1}, Lcom/sec/ims/IImsService;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 348
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 351
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

    .line 352
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v1, v2}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 354
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 359
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 361
    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public connectService()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register Receiver for Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Lcom/sec/ims/ImsManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$1;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.ims.imsmanager.RESTART"

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 396
    invoke-direct {p0, v0}, Lcom/sec/ims/ImsManager;->onConnectService(Lcom/sec/ims/IImsService;)V

    return-void
.end method

.method public disconnectService()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    :cond_0
    iget-object p0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    if-eqz p0, :cond_1

    .line 415
    invoke-interface {p0}, Lcom/sec/ims/ImsManager$ConnectionListener;->onDisconnected()V

    :cond_1
    return-void
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;
    .locals 4

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRegistrationInfoByServiceType"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getRegistrationInfoByServiceType: Not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 566
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

    .line 568
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method

.method public hasVoLteSim()Z
    .locals 4

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hasVoLteSim"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Not initialized."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2325
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

    .line 2327
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v3
.end method

.method public isServiceAvailable(Ljava/lang/String;I)Z
    .locals 5

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1092
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "isServiceAvailable: not connected."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1097
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

    .line 1099
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v3
.end method
