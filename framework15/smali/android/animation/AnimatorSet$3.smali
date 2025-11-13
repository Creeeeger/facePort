.class Landroid/animation/AnimatorSet$3;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->sortAnimationEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/animation/AnimatorSet$AnimationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/animation/AnimatorSet;


# direct methods
.method constructor blacklist <init>(Landroid/animation/AnimatorSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/animation/AnimatorSet$3;->this$0:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I
    .locals 11

    invoke-virtual {p1}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_1

    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v6, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    add-int/2addr v4, v6

    if-ne v4, v5, :cond_0

    iget v4, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    :cond_0
    iget v4, p2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    iget v5, p1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    sub-int/2addr v4, v5

    return v4

    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v4, v2, v6

    const/4 v8, -0x1

    if-nez v4, :cond_2

    return v8

    :cond_2
    cmp-long v4, v0, v6

    if-nez v4, :cond_3

    return v5

    :cond_3
    sub-long v6, v0, v2

    const-wide/16 v9, 0x0

    cmp-long v4, v6, v9

    if-lez v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v8

    :goto_0
    return v5
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/animation/AnimatorSet$AnimationEvent;

    check-cast p2, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet$3;->compare(Landroid/animation/AnimatorSet$AnimationEvent;Landroid/animation/AnimatorSet$AnimationEvent;)I

    move-result p1

    return p1
.end method
