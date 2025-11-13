.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public a:F

.field public adjust:F

.field public b:F

.field public backgroundId:I

.field public delay:J

.field public duration:J

.field public dx:F

.field public dy:F

.field public elementDuration:J

.field public final frameSize:Ljava/util/ArrayList;

.field public from:F

.field public imageView:Landroid/widget/ImageView;

.field public imageViewId:I

.field public final imageViewSetId:Ljava/util/ArrayList;

.field public interpolator:Landroid/animation/TimeInterpolator;

.field public isAnimationStarted:Z

.field public key:F

.field public length:I

.field public minInterval:I

.field public preSequence:I

.field public r:F

.field public ra:F

.field public rb:F

.field public repeatCount:I

.field public repeatMode:I

.field public final scale:Ljava/util/ArrayList;

.field public final startIndex:Ljava/util/ArrayList;

.field public startTime:J

.field public to:F

.field public top:I

.field public final x:Ljava/util/ArrayList;

.field public xOffSet:F

.field public final y:Ljava/util/ArrayList;

.field public yOffSet:F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->backgroundId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewSetId:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->x:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->y:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->scale:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startIndex:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->frameSize:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    iput-wide v2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->preSequence:I

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method
