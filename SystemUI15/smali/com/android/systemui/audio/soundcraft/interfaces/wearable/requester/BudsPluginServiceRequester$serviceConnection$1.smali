.class public final Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    const-string p1, "SoundCraft.wearable.BudsPluginServiceRequester"

    const-string v0, "onBindingDied"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "SoundCraft.wearable.BudsPluginServiceRequester"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->execute()V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->unbindServiceRunnable:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$sam$java_lang_Runnable$0;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SoundCraft.wearable.BudsPluginServiceRequester"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    return-void
.end method
