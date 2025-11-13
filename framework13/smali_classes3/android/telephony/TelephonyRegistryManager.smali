.class public Landroid/telephony/TelephonyRegistryManager;
.super Ljava/lang/Object;
.source "TelephonyRegistryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist LISTEN_CODE_CHANGE:J = 0x8cc3350L

.field public static final blacklist SIM_ACTIVATION_TYPE_DATA:I = 0x1

.field public static final blacklist SIM_ACTIVATION_TYPE_VOICE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyRegistryManager"

.field private static final blacklist sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mOpportunisticSubscriptionChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;",
            "Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSubscriptionChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;",
            "Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1309
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 96
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_0

    .line 97
    nop

    .line 98
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 100
    :cond_0
    return-void
.end method

.method private blacklist getEventsFromBitmask(I)Ljava/util/Set;
    .locals 2
    .param p1, "eventMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1081
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1083
    .local v0, "eventList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1084
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 1088
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 1092
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 1096
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 1100
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 1106
    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    .line 1110
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1113
    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    .line 1114
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_7
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_8

    .line 1118
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1121
    :cond_8
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_9

    .line 1122
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1125
    :cond_9
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_a

    .line 1126
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_a
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_b

    .line 1130
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1133
    :cond_b
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_c

    .line 1134
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_c
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_d

    .line 1138
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1141
    :cond_d
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_e

    .line 1142
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1145
    :cond_e
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_f

    .line 1146
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_f
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    .line 1150
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_10
    const/high16 v1, 0x40000

    and-int/2addr v1, p1

    if-eqz v1, :cond_11

    .line 1154
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_11
    const/high16 v1, 0x80000

    and-int/2addr v1, p1

    if-eqz v1, :cond_12

    .line 1158
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_12
    const/high16 v1, 0x100000

    and-int/2addr v1, p1

    if-eqz v1, :cond_13

    .line 1162
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1165
    :cond_13
    const/high16 v1, 0x200000

    and-int/2addr v1, p1

    if-eqz v1, :cond_14

    .line 1166
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_14
    const/high16 v1, 0x400000

    and-int/2addr v1, p1

    if-eqz v1, :cond_15

    .line 1170
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_15
    const/high16 v1, 0x800000

    and-int/2addr v1, p1

    if-eqz v1, :cond_16

    .line 1174
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_16
    const/high16 v1, 0x1000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_17

    .line 1178
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1181
    :cond_17
    const/high16 v1, 0x2000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_18

    .line 1182
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_18
    const/high16 v1, 0x4000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_19

    .line 1186
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_19
    const/high16 v1, 0x8000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1a

    .line 1190
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_1a
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1b

    .line 1194
    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_1b
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1c

    .line 1198
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_1c
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p1

    if-eqz v1, :cond_1d

    .line 1202
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_1d
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1e

    .line 1206
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1208
    :cond_1e
    return-object v0
.end method

.method static synthetic blacklist lambda$listenFromListener$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 254
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$registerTelephonyCallback$1(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 1252
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;[IZ)V
    .locals 11
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "subId"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "telephonyCallback"    # Landroid/telephony/TelephonyCallback;
    .param p7, "events"    # [I
    .param p8, "notifyNow"    # Z

    .line 287
    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p6

    :try_start_1
    iget-object v7, v10, Landroid/telephony/TelephonyCallback;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    nop

    .line 292
    return-void

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p6

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist addCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .locals 6
    .param p1, "logicalSlotIndex"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 1324
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 1327
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1328
    nop

    .line 1329
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1330
    .local v1, "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1331
    const-string v2, "TelephonyRegistryManager"

    const-string v3, "addCarrierPrivilegesCallback: callback already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    monitor-exit v0

    return-void

    .line 1334
    :cond_0
    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

    invoke-direct {v2, p3, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;-><init>(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;Ljava/util/concurrent/Executor;)V

    .line 1336
    .local v2, "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p3, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    :try_start_1
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 1341
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 1342
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1338
    invoke-interface {v3, p1, v2, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->addCarrierPrivilegesCallback(ILcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    nop

    .line 1346
    .end local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    :try_start_2
    monitor-exit v0

    .line 1347
    return-void

    .line 1343
    .restart local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .restart local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    :catch_0
    move-exception v3

    .line 1344
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .end local p1    # "logicalSlotIndex":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    throw v4

    .line 1346
    .end local v1    # "existing":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .restart local p1    # "logicalSlotIndex":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1325
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback and executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 176
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "TelephonyRegistryManager"

    const-string v1, "addOnOpportunisticSubscriptionsChangedListener listener already present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 184
    :cond_0
    new-instance v0, Landroid/telephony/TelephonyRegistryManager$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/TelephonyRegistryManager$2;-><init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    .line 196
    .local v0, "callback":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnOpportunisticSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    nop

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v1

    .line 202
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 116
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "TelephonyRegistryManager"

    const-string v1, "addOnSubscriptionsChangedListener listener already present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 120
    :cond_0
    new-instance v0, Landroid/telephony/TelephonyRegistryManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/TelephonyRegistryManager$1;-><init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 131
    .local v0, "callback":Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;
    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    nop

    .line 139
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 137
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist clearPreciseDataConnectionStates(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1416
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->clearPreciseDataConnectionStates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    nop

    .line 1420
    return-void

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getEventsFromCallback(Landroid/telephony/TelephonyCallback;)Ljava/util/Set;
    .locals 2
    .param p1, "telephonyCallback"    # Landroid/telephony/TelephonyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyCallback;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 945
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 947
    .local v0, "eventList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$ServiceStateListener;

    if-eqz v1, :cond_0

    .line 948
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_0
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;

    if-eqz v1, :cond_1

    .line 952
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_1
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;

    if-eqz v1, :cond_2

    .line 956
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_2
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CellLocationListener;

    if-eqz v1, :cond_3

    .line 960
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_3
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CallStateListener;

    if-eqz v1, :cond_4

    .line 965
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_4
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DataConnectionStateListener;

    if-eqz v1, :cond_5

    .line 969
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_5
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DataActivityListener;

    if-eqz v1, :cond_6

    .line 973
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_6
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$SignalStrengthsListener;

    if-eqz v1, :cond_7

    .line 977
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_7
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CellInfoListener;

    if-eqz v1, :cond_8

    .line 981
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 984
    :cond_8
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$PreciseCallStateListener;

    if-eqz v1, :cond_9

    .line 985
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_9
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;

    if-eqz v1, :cond_a

    .line 989
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_a
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;

    if-eqz v1, :cond_b

    .line 993
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 996
    :cond_b
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;

    if-eqz v1, :cond_c

    .line 997
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1000
    :cond_c
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$SrvccStateListener;

    if-eqz v1, :cond_d

    .line 1001
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1004
    :cond_d
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;

    if-eqz v1, :cond_e

    .line 1005
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1008
    :cond_e
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DataActivationStateListener;

    if-eqz v1, :cond_f

    .line 1009
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1012
    :cond_f
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;

    if-eqz v1, :cond_10

    .line 1013
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_10
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    if-eqz v1, :cond_11

    .line 1017
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1020
    :cond_11
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;

    if-eqz v1, :cond_12

    .line 1021
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1024
    :cond_12
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;

    if-eqz v1, :cond_13

    .line 1025
    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_13
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    if-eqz v1, :cond_14

    .line 1029
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_14
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;

    if-eqz v1, :cond_15

    .line 1033
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_15
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    if-eqz v1, :cond_16

    .line 1037
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_16
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$RadioPowerStateListener;

    if-eqz v1, :cond_17

    .line 1041
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_17
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CarrierNetworkListener;

    if-eqz v1, :cond_18

    .line 1045
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1048
    :cond_18
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$RegistrationFailedListener;

    if-eqz v1, :cond_19

    .line 1049
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_19
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$CallAttributesListener;

    if-eqz v1, :cond_1a

    .line 1053
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1056
    :cond_1a
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$BarringInfoListener;

    if-eqz v1, :cond_1b

    .line 1057
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1060
    :cond_1b
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;

    if-eqz v1, :cond_1c

    .line 1061
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_1c
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$DataEnabledListener;

    if-eqz v1, :cond_1d

    .line 1065
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_1d
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    if-eqz v1, :cond_1e

    .line 1069
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1072
    :cond_1e
    instance-of v1, p1, Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;

    if-eqz v1, :cond_1f

    .line 1073
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1076
    :cond_1f
    return-object v0
.end method

.method public blacklist listenFromListener(IZZLjava/lang/String;Ljava/lang/String;Landroid/telephony/PhoneStateListener;IZ)V
    .locals 14
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "renounceCoarseLocationAccess"    # Z
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p7, "events"    # I
    .param p8, "notifyNow"    # Z

    .line 249
    move-object/from16 v1, p6

    if-eqz v1, :cond_3

    .line 254
    move-object v2, p0

    move/from16 v3, p7

    :try_start_0
    invoke-direct {p0, v3}, Landroid/telephony/TelephonyRegistryManager;->getEventsFromBitmask(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 257
    .local v0, "eventsList":[I
    const-wide/32 v4, 0x8cc3350

    invoke-static {v4, v5}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    array-length v4, v0

    if-nez v4, :cond_0

    .line 261
    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    move v4, p1

    .line 260
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    goto :goto_1

    .line 262
    :cond_1
    iget-object v4, v1, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 263
    iget-object v4, v1, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v13, v4

    .end local p1    # "subId":I
    .local v4, "subId":I
    goto :goto_2

    .line 265
    .end local v4    # "subId":I
    .restart local p1    # "subId":I
    :cond_2
    :goto_1
    move v13, p1

    .end local p1    # "subId":I
    .local v13, "subId":I
    :goto_2
    :try_start_1
    sget-object v4, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v10, v1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move/from16 v5, p2

    move/from16 v6, p3

    move v7, v13

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object v11, v0

    move/from16 v12, p8

    invoke-interface/range {v4 .. v12}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;[IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    .end local v0    # "eventsList":[I
    nop

    .line 270
    return-void

    .line 267
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v13    # "subId":I
    .restart local p1    # "subId":I
    :catch_1
    move-exception v0

    move v13, p1

    .line 268
    .end local p1    # "subId":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v13    # "subId":I
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v13    # "subId":I
    .restart local p1    # "subId":I
    :cond_3
    move-object v2, p0

    move/from16 v3, p7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyActiveDataSubIdChanged(I)V
    .locals 2
    .param p1, "activeDataSubId"    # I

    .line 818
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyActiveDataSubIdChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    nop

    .line 822
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyAllowedNetworkTypesChanged(IIIJ)V
    .locals 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "reason"    # I
    .param p4, "allowedNetworkType"    # J

    .line 919
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyAllowedNetworkTypesChanged(IIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    nop

    .line 925
    return-void

    .line 921
    :catch_0
    move-exception v0

    .line 923
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "barringInfo"    # Landroid/telephony/BarringInfo;

    .line 867
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyBarringInfoChanged(IILandroid/telephony/BarringInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    nop

    .line 872
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 870
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallForwardingChanged(IZ)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "callForwardInd"    # Z

    .line 472
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    nop

    .line 477
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallQualityChanged(IILandroid/telephony/CallQuality;I)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "callQuality"    # Landroid/telephony/CallQuality;
    .param p4, "networkType"    # I

    .line 529
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallQualityChanged(Landroid/telephony/CallQuality;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    nop

    .line 534
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 532
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallStateChanged(IIILjava/lang/String;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I
    .param p4, "incomingNumber"    # Ljava/lang/String;

    .line 358
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    nop

    .line 363
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCallStateChangedForAllSubscriptions(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 376
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallStateForAllSubs(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    nop

    .line 381
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 379
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierNetworkChange(IZ)V
    .locals 2
    .param p1, "subscriptionId"    # I
    .param p2, "active"    # Z

    .line 339
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierNetworkChangeWithSubId(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    nop

    .line 344
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 342
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierNetworkChange(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 313
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierNetworkChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    nop

    .line 318
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCarrierPrivilegesChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 3
    .param p1, "logicalSlotIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1383
    .local p2, "privilegedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "privilegedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1389
    :try_start_0
    invoke-static {p2}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1390
    .local v0, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/AudioPort$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/AudioPort$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 1391
    .local v1, "uids":[I
    sget-object v2, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v2, p1, v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierPrivilegesChanged(ILjava/util/List;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    .end local v0    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "uids":[I
    nop

    .line 1395
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1384
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "privilegedPackageNames and privilegedUids must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyCarrierServiceChanged(ILjava/lang/String;I)V
    .locals 2
    .param p1, "logicalSlotIndex"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1407
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierServiceChanged(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    nop

    .line 1411
    return-void

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCellInfoChanged(ILjava/util/List;)V
    .locals 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 806
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    nop

    .line 810
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyCellLocation(ILandroid/telephony/CellIdentity;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/telephony/CellIdentity;

    .line 790
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/telephony/CellIdentity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    nop

    .line 795
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 793
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataActivationStateChanged(III)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "activationState"    # I

    .line 641
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySimActivationStateChangedForPhoneId(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    nop

    .line 647
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 645
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataActivityChanged(II)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "dataActivityType"    # I

    .line 488
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivityForSubscriber(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    nop

    .line 493
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 491
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "preciseState"    # Landroid/telephony/PreciseDataConnectionState;

    .line 509
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionForSubscriber(IILandroid/telephony/PreciseDataConnectionState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    nop

    .line 515
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDataEnabled(IIZI)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "enabled"    # Z
    .param p4, "reason"    # I

    .line 901
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataEnabled(IIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    nop

    .line 906
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 904
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDisconnectCause(IIII)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "cause"    # I
    .param p4, "preciseCause"    # I

    .line 775
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisconnectCause(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    nop

    .line 780
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 778
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 699
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisplayInfoChanged(IILandroid/telephony/TelephonyDisplayInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    nop

    .line 704
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 702
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyEmergencyNumberList(II)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I

    .line 545
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyEmergencyNumberList(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    nop

    .line 550
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 548
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 714
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyImsDisconnectCause(ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    nop

    .line 719
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 936
    .local p3, "linkCapacityEstimateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LinkCapacityEstimate;>;"
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyLinkCapacityEstimateChanged(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    nop

    .line 941
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 939
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyMessageWaitingChanged(IIZ)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "msgWaitingInd"    # Z

    .line 456
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChangedForPhoneId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    nop

    .line 461
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyOpportunisticSubscriptionInfoChanged()V
    .locals 2

    .line 402
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOpportunisticSubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    nop

    .line 407
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 405
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 561
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOutgoingEmergencyCall(IILandroid/telephony/emergency/EmergencyNumber;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    nop

    .line 566
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 564
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;

    .line 577
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOutgoingEmergencySms(IILandroid/telephony/emergency/EmergencyNumber;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    nop

    .line 582
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 580
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 2
    .param p1, "phoneCapability"    # Landroid/telephony/PhoneCapability;

    .line 609
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    nop

    .line 614
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 612
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 884
    .local p3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPhysicalChannelConfigForSubscriber(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    nop

    .line 889
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 887
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyPreciseCallState(IIIII)V
    .locals 6
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "ringCallPreciseState"    # I
    .param p4, "foregroundCallPreciseState"    # I
    .param p5, "backgroundCallPreciseState"    # I

    .line 753
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseCallState(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    nop

    .line 759
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 757
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyRadioPowerStateChanged(III)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "radioPowerState"    # I

    .line 595
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyRadioPowerStateChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    nop

    .line 600
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 598
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .locals 8
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p4, "chosenPlmn"    # Ljava/lang/String;
    .param p5, "domain"    # I
    .param p6, "causeCode"    # I
    .param p7, "additionalCauseCode"    # I

    .line 850
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyRegistrationFailed(IILandroid/telephony/CellIdentity;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    nop

    .line 855
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyServiceStateChanged(IILandroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .line 419
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    nop

    .line 424
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 422
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySignalStrengthChanged(IILandroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 437
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    nop

    .line 442
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 440
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySrvccStateChanged(II)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .line 730
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySrvccStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    nop

    .line 735
    return-void

    .line 731
    :catch_0
    move-exception v0

    .line 733
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifySubscriptionInfoChanged()V
    .locals 2

    .line 389
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    nop

    .line 394
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 392
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyUserMobileDataStateChanged(IIZ)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Z

    .line 680
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    nop

    .line 685
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 683
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyVoiceActivationStateChanged(III)V
    .locals 2
    .param p1, "slotIndex"    # I
    .param p2, "subId"    # I
    .param p3, "activationState"    # I

    .line 661
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySimActivationStateChangedForPhoneId(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    nop

    .line 667
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 665
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerTelephonyCallback(ZZLjava/util/concurrent/Executor;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V
    .locals 12
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "subId"    # I
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/telephony/TelephonyCallback;
    .param p8, "notifyNow"    # Z

    .line 1246
    move-object/from16 v9, p7

    if-eqz v9, :cond_0

    .line 1249
    move-object v10, p3

    invoke-virtual {v9, p3}, Landroid/telephony/TelephonyCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 1250
    nop

    .line 1252
    move-object v11, p0

    invoke-virtual {p0, v9}, Landroid/telephony/TelephonyRegistryManager;->getEventsFromCallback(Landroid/telephony/TelephonyCallback;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/TelephonyRegistryManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 1250
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/telephony/TelephonyRegistryManager;->listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;[IZ)V

    .line 1253
    return-void

    .line 1247
    :cond_0
    move-object v11, p0

    move-object v10, p3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "telephony service is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 1355
    if-eqz p1, :cond_2

    .line 1358
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sCarrierPrivilegeCallbacks:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1359
    nop

    .line 1360
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1361
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 1362
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;

    .line 1363
    .local v2, "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    if-nez v2, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1365
    :cond_1
    :try_start_1
    sget-object v3, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v4, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeCarrierPrivilegesCallback(Lcom/android/internal/telephony/ICarrierPrivilegesCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    nop

    .line 1369
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    :try_start_2
    monitor-exit v0

    .line 1370
    return-void

    .line 1366
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .restart local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    :catch_0
    move-exception v3

    .line 1367
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .end local p1    # "callback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    throw v4

    .line 1369
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;>;"
    .end local v2    # "wrapper":Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/telephony/TelephonyRegistryManager;
    .restart local p1    # "callback":Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1356
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 216
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/Map;

    .line 221
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 220
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 222
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mOpportunisticSubscriptionChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 227
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 150
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/Map;

    .line 155
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 154
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V

    .line 156
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager;->mSubscriptionChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .line 161
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterTelephonyCallback(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/telephony/TelephonyCallback;
    .param p5, "notifyNow"    # Z

    .line 1262
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v9, p5

    invoke-direct/range {v1 .. v9}, Landroid/telephony/TelephonyRegistryManager;->listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;[IZ)V

    .line 1264
    return-void
.end method
