.class public final Lcom/android/systemui/unfold/updates/RotationChangeProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/util/CallbackController;


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final callbackHandler:Landroid/os/Handler;

.field public final context:Landroid/content/Context;

.field public final displayListener:Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationDisplayListener;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final lastRotation:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->displayManager:Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->bgHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->callbackHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationDisplayListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationDisplayListener;-><init>(Lcom/android/systemui/unfold/updates/RotationChangeProvider;)V

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->displayListener:Lcom/android/systemui/unfold/updates/RotationChangeProvider$RotationDisplayListener;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/RotationChangeProvider;->lastRotation:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
