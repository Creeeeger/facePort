.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayService;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/dreams/DreamOverlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/dreams/DreamOverlayService;

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/android/systemui/dreams/DreamOverlayService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDestroyed:Z

    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/dreams/DreamOverlayService;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
