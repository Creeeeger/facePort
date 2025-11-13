.class public final Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;->this$0:Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p3, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;->$remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable(IIIZ)V
    .locals 0

    iget-object p4, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;->this$0:Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;

    iget p4, p4, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl;->thisDisplayId:I

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;

    iget-object p4, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;->$remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;-><init>(II)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/disableflags/data/repository/DisableFlagsRepositoryImpl$disableFlags$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
