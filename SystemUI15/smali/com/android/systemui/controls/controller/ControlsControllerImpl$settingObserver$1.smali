.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-boolean p2, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userChanging:Z

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$settingObserver$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->resetFavorites()V

    :cond_1
    :goto_0
    return-void
.end method
