.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;
.super Landroid/app/TaskStackListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callback:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->callback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onTaskFocusChanged(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLargeCoverScreenNavigation()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    iget-object v0, p2, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;-><init>(ILcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
