.class public final Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mNotificationHandler:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;

.field public final mNotificationKeys:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mNotificationKeys:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/NotificationListener;->addNotificationHandler(Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;)V

    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;Lcom/android/systemui/statusbar/NotificationListener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda2;

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mNotificationKeys:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda2;->onNotificationCountChanged(I)V

    :cond_0
    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$$ExternalSyntheticLambda2;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reportNotificationCountChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mNotificationKeys:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda2;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
