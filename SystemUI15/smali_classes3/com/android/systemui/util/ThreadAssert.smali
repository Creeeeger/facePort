.class public final Lcom/android/systemui/util/ThreadAssert;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMainThread()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    return-void
.end method

.method public final isNotMainThread()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    return-void
.end method
