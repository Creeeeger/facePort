.class public final synthetic Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileController$Callback;->onManagedProfileRemoved()V

    goto :goto_0

    :cond_0
    return-void
.end method
