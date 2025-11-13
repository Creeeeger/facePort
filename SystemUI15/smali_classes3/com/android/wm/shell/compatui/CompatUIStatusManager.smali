.class public final Lcom/android/wm/shell/compatui/CompatUIStatusManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mWriter:Ljava/util/function/IntConsumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIStatusManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIStatusManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/compatui/CompatUIStatusManager;-><init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIStatusManager;->mWriter:Ljava/util/function/IntConsumer;

    return-void
.end method
