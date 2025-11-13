.class public abstract Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final STATUS_BAR_X_MOVE_IN:Landroidx/core/animation/PathInterpolator;

.field public static final STATUS_BAR_X_MOVE_OUT:Landroidx/core/animation/PathInterpolator;

.field public static final STATUS_CHIP_HEIGHT_TO_DOT_KEYFRAME_1:Landroidx/core/animation/PathInterpolator;

.field public static final STATUS_CHIP_HEIGHT_TO_DOT_KEYFRAME_2:Landroidx/core/animation/PathInterpolator;

.field public static final STATUS_CHIP_MOVE_TO_DOT:Landroidx/core/animation/PathInterpolator;

.field public static final STATUS_CHIP_WIDTH_TO_DOT_KEYFRAME_1:Landroidx/core/animation/PathInterpolator;

.field public static final STATUS_CHIP_WIDTH_TO_DOT_KEYFRAME_2:Landroidx/core/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/core/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_BAR_X_MOVE_OUT:Landroidx/core/animation/PathInterpolator;

    new-instance v0, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_BAR_X_MOVE_IN:Landroidx/core/animation/PathInterpolator;

    new-instance v0, Landroidx/core/animation/PathInterpolator;

    const v1, 0x3ee147ae    # 0.44f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_WIDTH_TO_DOT_KEYFRAME_1:Landroidx/core/animation/PathInterpolator;

    new-instance v0, Landroidx/core/animation/PathInterpolator;

    const v1, 0x3e851eb8    # 0.26f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v2, v1, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_WIDTH_TO_DOT_KEYFRAME_2:Landroidx/core/animation/PathInterpolator;

    new-instance v0, Landroidx/core/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v5, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v1, v2, v5, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_HEIGHT_TO_DOT_KEYFRAME_1:Landroidx/core/animation/PathInterpolator;

    new-instance v0, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_HEIGHT_TO_DOT_KEYFRAME_2:Landroidx/core/animation/PathInterpolator;

    new-instance v0, Landroidx/core/animation/PathInterpolator;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v2, v2, v1, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_MOVE_TO_DOT:Landroidx/core/animation/PathInterpolator;

    return-void
.end method
