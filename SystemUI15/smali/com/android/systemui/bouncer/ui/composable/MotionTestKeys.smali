.class public final Lcom/android/systemui/bouncer/ui/composable/MotionTestKeys;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/bouncer/ui/composable/MotionTestKeys;

.field public static final dotAppearFadeIn:Lplatform/test/motion/compose/values/MotionTestValueKey;

.field public static final dotAppearMoveUp:Lplatform/test/motion/compose/values/MotionTestValueKey;

.field public static final dotScaling:Lplatform/test/motion/compose/values/MotionTestValueKey;

.field public static final entryCompleted:Lplatform/test/motion/compose/values/MotionTestValueKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bouncer/ui/composable/MotionTestKeys;

    invoke-direct {v0}, Lcom/android/systemui/bouncer/ui/composable/MotionTestKeys;-><init>()V

    new-instance v0, Lplatform/test/motion/compose/values/MotionTestValueKey;

    const-string v1, "PinBouncer::entryAnimationCompleted"

    invoke-direct {v0, v1}, Lplatform/test/motion/compose/values/MotionTestValueKey;-><init>(Ljava/lang/String;)V

    new-instance v0, Lplatform/test/motion/compose/values/MotionTestValueKey;

    const-string v1, "PinBouncer::dotAppearFadeIn"

    invoke-direct {v0, v1}, Lplatform/test/motion/compose/values/MotionTestValueKey;-><init>(Ljava/lang/String;)V

    new-instance v0, Lplatform/test/motion/compose/values/MotionTestValueKey;

    const-string v1, "PinBouncer::dotAppearMoveUp"

    invoke-direct {v0, v1}, Lplatform/test/motion/compose/values/MotionTestValueKey;-><init>(Ljava/lang/String;)V

    new-instance v0, Lplatform/test/motion/compose/values/MotionTestValueKey;

    const-string v1, "PinBouncer::dotScaling"

    invoke-direct {v0, v1}, Lplatform/test/motion/compose/values/MotionTestValueKey;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
