.class public final Lcom/android/systemui/navigationbar/NavBarHelper$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavBarHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$3;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$3;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcherRotation:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    invoke-interface {v1, v0}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateRotationWatcherState(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
