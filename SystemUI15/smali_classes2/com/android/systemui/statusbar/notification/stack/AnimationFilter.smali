.class public Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animateAlpha:Z

.field public animateHeight:Z

.field public animateHideSensitive:Z

.field public animateTopInset:Z

.field public animateX:Z

.field public animateY:Z

.field public animateZ:Z

.field public customDelay:J

.field public hasDelays:Z

.field public hasGoToFullShadeEvent:Z

.field public final mAnimatedProperties:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    return-void
.end method


# virtual methods
.method public final combineFilter(Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->customDelay:J

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    return-void
.end method

.method public shouldAnimateProperty(Landroid/util/Property;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->mAnimatedProperties:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
