.class public final Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method
