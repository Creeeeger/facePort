.class public final Lcom/android/systemui/util/RingerModeLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final filter:Landroid/content/IntentFilter;

.field private final getter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private initialSticky:Z

.field private final receiver:Lcom/android/systemui/util/RingerModeLiveData$receiver$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/RingerModeLiveData;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/util/RingerModeLiveData;->executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/util/RingerModeLiveData;->getter:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/util/RingerModeLiveData;->filter:Landroid/content/IntentFilter;

    new-instance p1, Lcom/android/systemui/util/RingerModeLiveData$receiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/RingerModeLiveData$receiver$1;-><init>(Lcom/android/systemui/util/RingerModeLiveData;)V

    iput-object p1, p0, Lcom/android/systemui/util/RingerModeLiveData;->receiver:Lcom/android/systemui/util/RingerModeLiveData$receiver$1;

    return-void
.end method

.method public static final synthetic access$getGetter$p(Lcom/android/systemui/util/RingerModeLiveData;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/RingerModeLiveData;->getter:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$setInitialSticky$p(Lcom/android/systemui/util/RingerModeLiveData;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/RingerModeLiveData;->initialSticky:Z

    return-void
.end method


# virtual methods
.method public final getInitialSticky()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/RingerModeLiveData;->initialSticky:Z

    return p0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onActive()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/util/RingerModeLiveData;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/util/RingerModeLiveData;->receiver:Lcom/android/systemui/util/RingerModeLiveData$receiver$1;

    iget-object v2, p0, Lcom/android/systemui/util/RingerModeLiveData;->filter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/systemui/util/RingerModeLiveData;->executor:Ljava/util/concurrent/Executor;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/util/RingerModeLiveData;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/util/RingerModeLiveData$onActive$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/RingerModeLiveData$onActive$1;-><init>(Lcom/android/systemui/util/RingerModeLiveData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInactive()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/RingerModeLiveData;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/util/RingerModeLiveData;->receiver:Lcom/android/systemui/util/RingerModeLiveData$receiver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
