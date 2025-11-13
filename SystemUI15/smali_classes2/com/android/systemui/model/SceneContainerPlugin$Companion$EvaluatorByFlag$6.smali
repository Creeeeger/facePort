.class final Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$6;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$6;

    invoke-direct {v0}, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$6;-><init>()V

    sput-object v0, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$6;->INSTANCE:Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/model/SceneContainerPlugin$SceneContainerPluginState;

    sget-object p0, Lcom/android/systemui/scene/shared/model/Scenes;->Lockscreen:Lcom/android/compose/animation/scene/SceneKey;

    iget-object v0, p1, Lcom/android/systemui/model/SceneContainerPlugin$SceneContainerPluginState;->scene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/model/SceneContainerPlugin$SceneContainerPluginState;->invisibleDueToOcclusion:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
