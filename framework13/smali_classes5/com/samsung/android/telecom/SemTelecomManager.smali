.class public Lcom/samsung/android/telecom/SemTelecomManager;
.super Ljava/lang/Object;
.source "SemTelecomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;,
        Lcom/samsung/android/telecom/SemTelecomManager$Extra;,
        Lcom/samsung/android/telecom/SemTelecomManager$Event;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CALLER:Ljava/lang/String; = "caller"

.field public static final blacklist CAUSE:Ljava/lang/String; = "cause"

.field public static final blacklist EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final blacklist KEYCODE_INVALID:I = -0x1

.field public static final blacklist KEY_CODE:Ljava/lang/String; = "key_code"

.field public static final blacklist REASON:Ljava/lang/String; = "reason"

.field private static final blacklist SERVICE_DEATH:Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

.field private static final blacklist TAG:Ljava/lang/String; = "SemTelecomManager"

.field private static blacklist sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSamsungTelecomServiceOverride:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 619
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    .line 624
    new-instance v0, Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;-><init>(Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient-IA;)V

    sput-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->SERVICE_DEATH:Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/telecom/SemTelecomManager;-><init>(Landroid/content/Context;Lcom/samsung/android/internal/telecom/ISamsungTelecomService;)V

    .line 635
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/internal/telecom/ISamsungTelecomService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "samsungTelecomServiceImpl"    # Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 642
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    iput-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 646
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 648
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mSamsungTelecomServiceOverride:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    .line 649
    return-void
.end method

.method private blacklist getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    .locals 5

    .line 1140
    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mSamsungTelecomServiceOverride:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    if-eqz v0, :cond_0

    .line 1141
    return-object v0

    .line 1143
    :cond_0
    sget-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    if-nez v0, :cond_2

    .line 1144
    const-string/jumbo v0, "samsung_telecom"

    .line 1145
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1144
    invoke-static {v0}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 1146
    .local v0, "temp":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    sget-object v1, Lcom/samsung/android/telecom/SemTelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_0
    sget-object v2, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1149
    :try_start_1
    sput-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    .line 1150
    invoke-interface {v0}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/telecom/SemTelecomManager;->SERVICE_DEATH:Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1153
    goto :goto_0

    .line 1151
    :catch_0
    move-exception v2

    .line 1152
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_2
    sput-object v3, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    .line 1155
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1157
    .end local v0    # "temp":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    return-object v0
.end method

.method public static blacklist hasSamsungTelecomSystemFeature()Z
    .locals 3

    .line 1180
    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->isSupportHeadlessDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1181
    .local v0, "hasSamsungTelecomSystemFeature":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSamsungTelecomSystemFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemTelecomManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return v0
.end method

.method private static blacklist isSupportHeadlessDevice()Z
    .locals 1

    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist resetServiceCache()V
    .locals 4

    .line 1168
    sget-object v0, Lcom/samsung/android/telecom/SemTelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_0
    sget-object v1, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    if-eqz v1, :cond_0

    .line 1170
    invoke-interface {v1}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/telecom/SemTelecomManager;->SERVICE_DEATH:Lcom/samsung/android/telecom/SemTelecomManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1171
    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/telecom/SemTelecomManager;->sSamsungTelecomService:Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    .line 1173
    :cond_0
    monitor-exit v0

    .line 1174
    return-void

    .line 1173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist acceptRingingCall()V
    .locals 5

    .line 989
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 990
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 992
    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 993
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 992
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    goto :goto_0

    .line 994
    :catch_0
    move-exception v1

    .line 995
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#acceptRingingCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acceptRingingCall(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .line 1018
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 1019
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 1021
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 1022
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1021
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    goto :goto_0

    .line 1023
    :catch_0
    move-exception v1

    .line 1024
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#acceptRingingCall - keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1028
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acceptRingingCall(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "reason"    # Landroid/os/Bundle;

    .line 1048
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 1049
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_1

    .line 1051
    const/4 v1, -0x1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1053
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1051
    :cond_0
    move-object v2, p1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 1052
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1051
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    goto :goto_2

    .line 1054
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#acceptRingingCall - reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return-void
.end method

.method public blacklist acceptRingingCallWithVideoState(I)V
    .locals 7
    .param p1, "videoState"    # I

    .line 1074
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v6

    .line 1075
    .local v6, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v6, :cond_0

    .line 1077
    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 1078
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1077
    move-object v0, v6

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCallWithVideoState(IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    goto :goto_0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemTelecomManager"

    const-string v2, "Error calling ISamsungTelecomService#acceptRingingCallWithVideoState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acceptRingingCallWithVideoState(II)V
    .locals 7
    .param p1, "videoState"    # I
    .param p2, "keyCode"    # I

    .line 1100
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v6

    .line 1101
    .local v6, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v6, :cond_0

    .line 1103
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 1104
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1103
    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCallWithVideoState(IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    goto :goto_0

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling ISamsungTelecomService#acceptRingingCallWithVideoState - keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemTelecomManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acceptRingingCallWithVideoState(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "videoState"    # I
    .param p2, "reason"    # Landroid/os/Bundle;

    .line 1126
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v6

    .line 1127
    .local v6, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v6, :cond_1

    .line 1129
    const/4 v2, -0x1

    .line 1130
    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    goto :goto_0

    .line 1132
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1130
    :cond_0
    move-object v3, p2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 1131
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1129
    move-object v0, v6

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->acceptRingingCallWithVideoState(IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    goto :goto_2

    .line 1133
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling ISamsungTelecomService#acceptRingingCallWithVideoState - reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemTelecomManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return-void
.end method

.method public blacklist addConferenceParticipants(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 764
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 765
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 768
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 767
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->addConferenceParticipants(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    goto :goto_0

    .line 769
    :catch_0
    move-exception v1

    .line 770
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#addConferenceParticipants"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist endCall()V
    .locals 5

    .line 896
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 897
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 899
    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 900
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 899
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->endCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    goto :goto_0

    .line 901
    :catch_0
    move-exception v1

    .line 902
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#endCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist endCall(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .line 927
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 928
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 930
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 931
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 930
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->endCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    goto :goto_0

    .line 932
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#endCall - keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist endCall(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "reason"    # Landroid/os/Bundle;

    .line 959
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 960
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_1

    .line 962
    const/4 v1, -0x1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 964
    :catch_0
    move-exception v1

    goto :goto_1

    .line 962
    :cond_0
    move-object v2, p1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 963
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 962
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->endCall(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    goto :goto_2

    .line 965
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#endCall - reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return-void
.end method

.method public blacklist getAllowedPhoneAccountInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 691
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 692
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 694
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 695
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->getAllowedPhoneAccountInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 695
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    return-object v1

    .line 696
    :catch_0
    move-exception v1

    .line 697
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#getAllowedPhoneAccountInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public blacklist getAllowedPhoneAccountInfo(ZZ)Ljava/util/List;
    .locals 4
    .param p1, "includeRegisteredAccounts"    # Z
    .param p2, "includeSimSubscriptionAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 718
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 722
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->getAllowedPhoneAccountInfos(ZZLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 722
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    return-object v1

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#getAllowedPhoneAccountInfos"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getAllowedPhoneAccounts(ZZ)Ljava/util/List;
    .locals 4
    .param p1, "includeRegisteredAccounts"    # Z
    .param p2, "includeSimSubscriptionAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/telecom/SemPhoneAccount;",
            ">;"
        }
    .end annotation

    .line 741
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 742
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 745
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 746
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->getAllowedPhoneAccounts(ZZLjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 746
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    return-object v1

    .line 747
    :catch_0
    move-exception v1

    .line 748
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#getAllowedPhoneAccounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getAllowedSelfManagedPhoneAccounts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "14.0"
    .end annotation

    .line 666
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 667
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 670
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->getAllowedSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 670
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    return-object v1

    .line 671
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#getAllowedSelfManagedPhoneAccounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public blacklist silenceRinger()V
    .locals 5

    .line 797
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 798
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 800
    const/4 v1, -0x1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 801
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 800
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->silenceRinger(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    goto :goto_0

    .line 802
    :catch_0
    move-exception v1

    .line 803
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SemTelecomManager"

    const-string v3, "Error calling ISamsungTelecomService#silenceRinger"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist silenceRinger(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .line 830
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 831
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_0

    .line 833
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 834
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 833
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->silenceRinger(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    goto :goto_0

    .line 835
    :catch_0
    move-exception v1

    .line 836
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#silenceRinger - keyCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist silenceRinger(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "reason"    # Landroid/os/Bundle;

    .line 864
    invoke-direct {p0}, Lcom/samsung/android/telecom/SemTelecomManager;->getSamsungTelecomService()Lcom/samsung/android/internal/telecom/ISamsungTelecomService;

    move-result-object v0

    .line 865
    .local v0, "service":Lcom/samsung/android/internal/telecom/ISamsungTelecomService;
    if-eqz v0, :cond_1

    .line 867
    const/4 v1, -0x1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 869
    :catch_0
    move-exception v1

    goto :goto_1

    .line 867
    :cond_0
    move-object v2, p1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    .line 868
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/telecom/SemTelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 867
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/internal/telecom/ISamsungTelecomService;->silenceRinger(ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    goto :goto_2

    .line 870
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ISamsungTelecomService#silenceRinger - reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemTelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return-void
.end method
