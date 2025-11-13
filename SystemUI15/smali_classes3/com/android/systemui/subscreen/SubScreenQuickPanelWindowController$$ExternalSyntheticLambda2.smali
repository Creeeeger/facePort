.class public final synthetic Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    double-to-float p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->updatePanelExpansion(FZ)V

    return-void
.end method
