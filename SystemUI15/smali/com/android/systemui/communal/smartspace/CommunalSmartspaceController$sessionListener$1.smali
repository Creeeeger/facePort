.class public final Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    iget-object v0, v0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    iget-object p0, p0, Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->onTargetsAvailable(Ljava/util/List;)V

    :cond_1
    return-void
.end method
