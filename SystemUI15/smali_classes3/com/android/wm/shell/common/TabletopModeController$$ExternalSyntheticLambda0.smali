.class public final synthetic Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/common/TabletopModeController$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda17;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda17;->onTabletopModeChanged(Z)V

    return-void
.end method
