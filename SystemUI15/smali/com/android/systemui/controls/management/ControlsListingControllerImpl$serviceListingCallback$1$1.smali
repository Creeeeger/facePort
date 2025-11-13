.class public final Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newServices:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/management/ControlsListingControllerImpl;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newServices:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newServices:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->updateServices(Ljava/util/List;)V

    return-void
.end method
