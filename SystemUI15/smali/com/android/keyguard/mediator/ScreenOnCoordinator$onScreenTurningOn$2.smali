.class public final Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onDrawn:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/keyguard/mediator/ScreenOnCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$2;->$onDrawn:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$2;->$onDrawn:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
