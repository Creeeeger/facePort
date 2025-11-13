.class public abstract Lcom/android/compose/animation/scene/SwipeDetectorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DefaultSwipeDetector:Lcom/android/compose/animation/scene/PassthroughSwipeDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/PassthroughSwipeDetector;

    invoke-direct {v0}, Lcom/android/compose/animation/scene/PassthroughSwipeDetector;-><init>()V

    sput-object v0, Lcom/android/compose/animation/scene/SwipeDetectorKt;->DefaultSwipeDetector:Lcom/android/compose/animation/scene/PassthroughSwipeDetector;

    return-void
.end method
