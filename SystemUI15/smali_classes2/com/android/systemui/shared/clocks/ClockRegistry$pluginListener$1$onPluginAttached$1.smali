.class public final Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/ClockRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry$pluginListener$1$onPluginAttached$1;->this$0:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockBuffers:Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->getInfraMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
