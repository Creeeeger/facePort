.class public final Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;->this$0:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector$2;->this$0:Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mElpStyleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->mEdgeLightingStyleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
