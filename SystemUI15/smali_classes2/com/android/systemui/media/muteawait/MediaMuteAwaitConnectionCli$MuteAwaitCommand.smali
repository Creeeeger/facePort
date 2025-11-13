.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli$MuteAwaitCommand;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli$MuteAwaitCommand;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 9

    new-instance v7, Landroid/media/AudioDeviceAttributes;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x1

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v1, 0x2

    const-string v3, "address"

    move-object v0, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string/jumbo v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli$MuteAwaitCommand;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;->audioManager:Landroid/media/AudioManager;

    filled-new-array {v8}, [I

    move-result-object v1

    sget-object v5, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCliKt;->TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManager;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    :cond_0
    const-string v0, "cancel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionCli;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v7}, Landroid/media/AudioManager;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    goto :goto_0

    :cond_1
    const-string p0, "Must specify `start` or `cancel`; was "

    invoke-static {p1, p0, p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
