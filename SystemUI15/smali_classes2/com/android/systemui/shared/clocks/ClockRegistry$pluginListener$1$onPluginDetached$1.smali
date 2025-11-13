.class final Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;
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


# instance fields
.field final synthetic $manager:Lcom/android/systemui/plugins/PluginLifecycleManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/PluginLifecycleManager<",
            "Lcom/android/systemui/plugins/clocks/ClockProviderPlugin;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/PluginLifecycleManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginLifecycleManager<",
            "Lcom/android/systemui/plugins/clocks/ClockProviderPlugin;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;->$manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;->$removed:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    iget-object v0, v0, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;->manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;->$manager:Lcom/android/systemui/plugins/PluginLifecycleManager;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginDetached$1;->$removed:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method
