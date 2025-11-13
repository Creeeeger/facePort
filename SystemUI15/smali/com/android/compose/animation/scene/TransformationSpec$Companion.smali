.class public final Lcom/android/compose/animation/scene/TransformationSpec$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/compose/animation/scene/TransformationSpec$Companion;

.field public static final Empty:Lcom/android/compose/animation/scene/TransformationSpecImpl;

.field public static final EmptyProvider:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/compose/animation/scene/TransformationSpec$Companion;

    invoke-direct {v0}, Lcom/android/compose/animation/scene/TransformationSpec$Companion;-><init>()V

    sput-object v0, Lcom/android/compose/animation/scene/TransformationSpec$Companion;->$$INSTANCE:Lcom/android/compose/animation/scene/TransformationSpec$Companion;

    new-instance v0, Lcom/android/compose/animation/scene/TransformationSpecImpl;

    invoke-static {}, Landroidx/compose/animation/core/AnimationSpecKt;->snap$default()Landroidx/compose/animation/core/SnapSpec;

    move-result-object v1

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/android/compose/animation/scene/TransformationSpecImpl;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/SpringSpec;Lcom/android/compose/animation/scene/UserActionDistance;Ljava/util/List;)V

    sput-object v0, Lcom/android/compose/animation/scene/TransformationSpec$Companion;->Empty:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    sget-object v0, Lcom/android/compose/animation/scene/TransformationSpec$Companion$EmptyProvider$1;->INSTANCE:Lcom/android/compose/animation/scene/TransformationSpec$Companion$EmptyProvider$1;

    sput-object v0, Lcom/android/compose/animation/scene/TransformationSpec$Companion;->EmptyProvider:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
