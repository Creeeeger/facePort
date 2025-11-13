.class public final synthetic Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/model/SysUiState$SysUiStateCallback;->onSystemUiStateChanged(J)V

    return-void
.end method
