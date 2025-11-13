.class public final Lcom/android/compose/animation/scene/HighestZIndexScenePicker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/ElementScenePicker;


# static fields
.field public static final INSTANCE:Lcom/android/compose/animation/scene/HighestZIndexScenePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/HighestZIndexScenePicker;

    invoke-direct {v0}, Lcom/android/compose/animation/scene/HighestZIndexScenePicker;-><init>()V

    sput-object v0, Lcom/android/compose/animation/scene/HighestZIndexScenePicker;->INSTANCE:Lcom/android/compose/animation/scene/HighestZIndexScenePicker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sceneDuringTransition(Lcom/android/compose/animation/scene/TransitionState$Transition;FF)Lcom/android/compose/animation/scene/SceneKey;
    .locals 0

    cmpl-float p0, p2, p3

    if-lez p0, :cond_0

    iget-object p0, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    :goto_0
    return-object p0
.end method
