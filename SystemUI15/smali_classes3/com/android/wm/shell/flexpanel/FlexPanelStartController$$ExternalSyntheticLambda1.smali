.class public final synthetic Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    return-void
.end method


# virtual methods
.method public final onMultiWindowCoreStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mMwEnabled:Z

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eq p1, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mMwEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
