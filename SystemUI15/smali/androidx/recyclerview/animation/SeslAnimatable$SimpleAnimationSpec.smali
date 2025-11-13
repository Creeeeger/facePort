.class public final Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;


# instance fields
.field public final duration:J

.field public final interpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;->duration:J

    iput-object p3, p0, Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method
