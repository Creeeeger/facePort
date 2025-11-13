.class public final synthetic Lcom/android/systemui/navigationbar/NavBarHelper$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavBarHelper$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavBarHelper$4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavBarHelper$4;

    iput p2, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavBarHelper$4;

    iget p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper$4$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper$4;->this$0:Lcom/android/systemui/navigationbar/NavBarHelper;

    iput p0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcherRotation:I

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    invoke-interface {v1, p0}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateRotationWatcherState(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
