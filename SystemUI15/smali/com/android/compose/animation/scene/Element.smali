.class public final Lcom/android/compose/animation/scene/Element;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AlphaUnspecified:F

.field public static final Companion:Lcom/android/compose/animation/scene/Element$Companion;

.field public static final SizeUnspecified:J


# instance fields
.field public final key:Lcom/android/compose/animation/scene/ElementKey;

.field public lastTransition:Lcom/android/compose/animation/scene/TransitionState$Transition;

.field public final sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

.field public wasDrawnInAnyScene:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/animation/scene/Element$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/animation/scene/Element$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/Element;->Companion:Lcom/android/compose/animation/scene/Element$Companion;

    const v0, 0x7fffffff

    invoke-static {v0, v0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    sput-wide v0, Lcom/android/compose/animation/scene/Element;->SizeUnspecified:J

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    sput v0, Lcom/android/compose/animation/scene/Element;->AlphaUnspecified:F

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/animation/scene/ElementKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-direct {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/Element;->sceneStates:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Element(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/compose/animation/scene/Element;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
