.class public final Lcom/android/systemui/ShelfToolTipManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/PanelTransitionStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$2;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/shade/PanelTransitionState;->$r8$clinit:I

    const/4 v0, 0x2

    iget p1, p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;->state:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip(Z)V

    :cond_1
    return-void
.end method
