.class public final Lcom/android/systemui/ShelfToolTipManager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$3;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$3;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mFirstExpanded:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/ShelfToolTipManager;->mFirstExpanded:Z

    invoke-static {p0}, Lcom/android/systemui/ShelfToolTipManager;->access$tryToShowToolTip(Lcom/android/systemui/ShelfToolTipManager;)V

    goto :goto_0

    :cond_1
    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mFirstExpanded:Z

    :cond_3
    :goto_0
    return-void
.end method
