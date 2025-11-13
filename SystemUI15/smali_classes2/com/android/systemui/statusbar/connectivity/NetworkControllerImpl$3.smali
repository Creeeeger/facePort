.class public final Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMobileDataEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->setMobileDataEnabled(Z)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->checkDefaultData()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
