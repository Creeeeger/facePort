.class public final Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/transformation/Transformation;


# instance fields
.field public final enabled:Z

.field public final matcher:Lcom/android/compose/animation/scene/ElementMatcher;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/ElementMatcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    iput-boolean p2, p0, Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;->enabled:Z

    return-void
.end method


# virtual methods
.method public final getMatcher()Lcom/android/compose/animation/scene/ElementMatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;->matcher:Lcom/android/compose/animation/scene/ElementMatcher;

    return-object p0
.end method
