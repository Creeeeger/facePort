.class public final Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester;
.super Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final onPluginStateReceived:Lkotlin/jvm/functions/Function1;

.field public final receiver:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester;->onPluginStateReceived:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester$receiver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester$receiver$1;-><init>(Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester;)V

    invoke-direct {p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester;->receiver:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->messenger:Landroid/os/Messenger;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubPluginStateRequester;->receiver:Landroid/os/Messenger;

    iput-object p0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "SoundCraft.wearable.GWStubPluginStateRequester"

    const-string v0, "execute : onFailure"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
