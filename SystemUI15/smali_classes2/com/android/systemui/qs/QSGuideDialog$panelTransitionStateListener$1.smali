.class public final Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSGuideDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSGuideDialog$panelTransitionStateListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/shade/PanelTransitionState;->$r8$clinit:I

    const/4 v0, 0x2

    iget p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSGuideDialog;->dismiss()V

    :cond_0
    return-void
.end method
