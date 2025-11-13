.class public final Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    const-string p1, "SoundCraft.wearable.GWStubServiceRequester"

    const-string v0, "onBindingDied"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SoundCraft.wearable.GWStubServiceRequester"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->messenger:Landroid/os/Messenger;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->execute()V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;

    :try_start_0
    sget p2, Lkotlin/Result;->$r8$clinit:I

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SoundCraft.wearable.GWStubServiceRequester"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/stub/GWStubServiceRequester;->messenger:Landroid/os/Messenger;

    return-void
.end method
