.class public final Lcom/android/compose/animation/scene/ElementKey;
.super Lcom/android/compose/animation/scene/Key;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/ElementMatcher;


# instance fields
.field public final scenePicker:Lcom/android/compose/animation/scene/ElementScenePicker;

.field public final testTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/animation/scene/ElementKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/animation/scene/ElementKey$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/compose/animation/scene/Key;-><init>(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/android/compose/animation/scene/ElementKey;->scenePicker:Lcom/android/compose/animation/scene/ElementScenePicker;

    const-string p2, "element:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/compose/animation/scene/ElementKey;->testTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/android/compose/animation/scene/TransitionDslKt;->DefaultElementScenePicker:Lcom/android/compose/animation/scene/HighestZIndexScenePicker;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/compose/animation/scene/ElementKey;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/android/compose/animation/scene/ElementScenePicker;)V

    return-void
.end method

.method public static synthetic getTestTag$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/compose/animation/scene/ElementKey;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/compose/animation/scene/Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ElementKey(debugName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/compose/animation/scene/Key;->debugName:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
