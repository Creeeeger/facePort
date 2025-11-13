.class public Lcom/samsung/vekit/Common/Object/KeyFrame;
.super Ljava/lang/Object;
.source "KeyFrame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected blacklist bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

.field protected blacklist interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

.field private blacklist target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private blacklist time:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    sget-object v0, Lcom/samsung/vekit/Common/Type/InterpolationType;->LINEAR:Lcom/samsung/vekit/Common/Type/InterpolationType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;JLcom/samsung/vekit/Common/Type/InterpolationType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;JLcom/samsung/vekit/Common/Type/InterpolationType;Lcom/samsung/vekit/Common/Object/BezierControlPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            "Lcom/samsung/vekit/Common/Object/BezierControlPoint;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    iput-object p4, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    iput-object p5, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/samsung/vekit/Common/Type/InterpolationType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/samsung/vekit/Common/Type/InterpolationType;Lcom/samsung/vekit/Common/Object/BezierControlPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J",
            "Lcom/samsung/vekit/Common/Type/InterpolationType;",
            "Lcom/samsung/vekit/Common/Object/BezierControlPoint;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    return-void
.end method


# virtual methods
.method public blacklist getBezierControlPoint()Lcom/samsung/vekit/Common/Object/BezierControlPoint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    return-object v0
.end method

.method public blacklist getDuration()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getInterpolationType()Lcom/samsung/vekit/Common/Type/InterpolationType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    return-object v0
.end method

.method public blacklist getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    return-wide v0
.end method

.method public blacklist getTo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setBezierControlPoint(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->bezierControlPoint:Lcom/samsung/vekit/Common/Object/BezierControlPoint;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Common/Object/BezierControlPoint;->setValues(FFFF)V

    return-void
.end method

.method public blacklist setDuration(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist setFrom(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public blacklist setInterpolationType(Lcom/samsung/vekit/Common/Type/InterpolationType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->interpolationType:Lcom/samsung/vekit/Common/Type/InterpolationType;

    return-void
.end method

.method public blacklist setTarget(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->target:Ljava/lang/Object;

    return-void
.end method

.method public blacklist setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/vekit/Common/Object/KeyFrame;->time:J

    return-void
.end method

.method public blacklist setTo(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
