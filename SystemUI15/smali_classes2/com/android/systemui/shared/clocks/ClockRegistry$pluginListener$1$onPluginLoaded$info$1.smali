.class final Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;
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
.field final synthetic $isClockListChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/shared/clocks/ClockRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->$isClockListChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->$isClockListChanged:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginLoaded$info$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->access$onConnected(Lcom/android/systemui/shared/clocks/ClockRegistry;Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
