.class public final Lcom/android/wm/shell/pip/PipParamsChangedForwarder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mPipParamsChangedListeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final notifyActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/pip/phone/PipController$3;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController$3;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iput-object p1, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mAppActions:Ljava/util/List;

    iput-object p2, v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuActions()V

    goto :goto_0

    :cond_0
    return-void
.end method
