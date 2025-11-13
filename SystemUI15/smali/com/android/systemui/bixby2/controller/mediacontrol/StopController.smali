.class public final Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;
.super Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/StopController$Companion;

.field private static final NOISY_INTENT_DENIED_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/StopController$Companion;

    const-string v0, "com.netease.cloudmusic"

    const-string v1, "com.kugou.android"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;->NOISY_INTENT_DENIED_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;-><init>()V

    return-void
.end method

.method private final isAllowedAppReceiveNoisyIntent(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;->NOISY_INTENT_DENIED_LIST:[Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public action()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 2

    sget-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaInfo()Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->isMediaActive:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->isMediaControlActive(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;->isAllowedAppReceiveNoisyIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/mediacontrol/StopController;->stopMedia()V

    :cond_0
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x1

    const-string/jumbo v1, "success"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x2

    const-string v1, "NoMediaExists"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final stopMedia()V
    .locals 6

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object v3, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType;->Companion:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;

    invoke-virtual {v3}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, p0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v3}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
