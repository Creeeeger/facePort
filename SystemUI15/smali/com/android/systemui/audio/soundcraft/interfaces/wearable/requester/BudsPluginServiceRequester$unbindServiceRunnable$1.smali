.class final Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$unbindServiceRunnable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$unbindServiceRunnable$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$unbindServiceRunnable$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    sget v0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const-string v0, "SoundCraft.wearable.BudsPluginServiceRequester"

    const-string/jumbo v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->serviceConnection:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
