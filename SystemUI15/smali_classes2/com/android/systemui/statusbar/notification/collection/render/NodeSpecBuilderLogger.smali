.class public final Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger$devLoggingEnabled$2;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger$devLoggingEnabled$2;-><init>(Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;)V

    invoke-static {p0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method
