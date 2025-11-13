.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Landroid/media/AudioManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iput-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;->audioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli$start$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli$start$1;-><init>(Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;)V

    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v1, "media-mute-await"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
