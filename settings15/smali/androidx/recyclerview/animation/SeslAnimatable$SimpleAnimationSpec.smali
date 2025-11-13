.class public final Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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
