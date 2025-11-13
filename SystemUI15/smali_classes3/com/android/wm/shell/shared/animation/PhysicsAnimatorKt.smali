.class public abstract Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final animators:Ljava/util/WeakHashMap;

.field public static final globalDefaultFling:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public static final globalDefaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    sput-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->globalDefaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    const v1, -0x800001

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    sput-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->globalDefaultFling:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    return-void
.end method
