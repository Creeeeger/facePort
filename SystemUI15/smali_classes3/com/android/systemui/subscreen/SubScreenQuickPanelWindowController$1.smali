.class public final Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;->this$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    return-void
.end method
