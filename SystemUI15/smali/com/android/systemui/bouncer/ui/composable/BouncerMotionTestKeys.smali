.class public final Lcom/android/systemui/bouncer/ui/composable/BouncerMotionTestKeys;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/bouncer/ui/composable/BouncerMotionTestKeys;

.field public static final swapAnimationEnd:Lplatform/test/motion/compose/values/MotionTestValueKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/bouncer/ui/composable/BouncerMotionTestKeys;

    invoke-direct {v0}, Lcom/android/systemui/bouncer/ui/composable/BouncerMotionTestKeys;-><init>()V

    new-instance v0, Lplatform/test/motion/compose/values/MotionTestValueKey;

    const-string/jumbo v1, "swapAnimationEnd"

    invoke-direct {v0, v1}, Lplatform/test/motion/compose/values/MotionTestValueKey;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
