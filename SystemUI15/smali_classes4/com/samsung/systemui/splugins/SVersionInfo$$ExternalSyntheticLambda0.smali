.class public final synthetic Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/systemui/splugins/SVersionInfo;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/systemui/splugins/SVersionInfo;

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/systemui/splugins/SVersionInfo;

    iget-object p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/samsung/systemui/splugins/SVersionInfo$Version;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/systemui/splugins/SVersionInfo;->$r8$lambda$1YHDSBVWv9F-6foj8peclgK10-o(Lcom/samsung/systemui/splugins/SVersionInfo;Landroid/util/ArrayMap;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SVersionInfo$Version;)V

    return-void
.end method
