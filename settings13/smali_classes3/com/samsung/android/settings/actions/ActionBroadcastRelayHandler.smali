.class public Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;
.super Ljava/lang/Object;
.source "ActionBroadcastRelayHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mRelays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmRelays(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearAndRegisterExpireMessage(Landroid/content/Context;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 79
    iput v1, v0, Landroid/os/Message;->what:I

    .line 80
    new-instance v1, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$1;-><init>(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;Landroid/content/Context;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$2;-><init>(Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Landroid/os/Handler;

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->sInstance:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    invoke-direct {v0}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->sInstance:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    .line 35
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->sInstance:Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;

    return-object v0
.end method

.method private getOrCreateRelay(Landroid/net/Uri;)Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;-><init>(Landroid/net/Uri;)V

    .line 57
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/Context;Landroid/net/Uri;Landroid/content/IntentFilter;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->clearAndRegisterExpireMessage(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler;->getOrCreateRelay(Landroid/net/Uri;)Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/settings/actions/ActionBroadcastRelayHandler$BroadcastRelay;->register(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method
