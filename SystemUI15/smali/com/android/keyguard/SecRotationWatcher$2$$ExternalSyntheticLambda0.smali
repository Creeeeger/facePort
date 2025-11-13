.class public final synthetic Lcom/android/keyguard/SecRotationWatcher$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/SecRotationWatcher$2$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/keyguard/SecRotationWatcher$2$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
