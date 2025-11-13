.class public final synthetic Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iput p2, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda3;->f$1:I

    iput p0, v0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mRotation:I

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    return-void
.end method
