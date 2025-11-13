.class public final Lcom/facebook/rebound/SpringSystem;
.super Lcom/facebook/rebound/BaseSpringSystem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/SpringLooper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/rebound/BaseSpringSystem;-><init>(Lcom/facebook/rebound/SpringLooper;)V

    return-void
.end method

.method public static create()Lcom/facebook/rebound/SpringSystem;
    .locals 3

    new-instance v0, Lcom/facebook/rebound/SpringSystem;

    new-instance v1, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;-><init>(Landroid/view/Choreographer;)V

    invoke-direct {v0, v1}, Lcom/facebook/rebound/SpringSystem;-><init>(Lcom/facebook/rebound/SpringLooper;)V

    return-object v0
.end method
