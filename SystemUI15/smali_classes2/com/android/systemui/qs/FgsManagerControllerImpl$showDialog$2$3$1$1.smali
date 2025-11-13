.class public final synthetic Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3$1$1;->$tmp0:Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3$1$1;->$tmp0:Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;

    check-cast p0, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$hasNewChanges$1$dialogDismissedEvents$1$listener$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$hasNewChanges$1$dialogDismissedEvents$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const-string v2, "ForegroundServicesRepositoryImpl"

    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
