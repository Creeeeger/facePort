.class public final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;
.super Landroid/service/controls/IControlsProviderInfoSubscriber$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $consumer:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;->$consumer:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/service/controls/IControlsProviderInfoSubscriber$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNext(Landroid/os/IBinder;Landroid/service/controls/ControlsProviderInfo;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$bindAndLoad$ps$1;->$consumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
