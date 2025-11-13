.class public final Lcom/android/systemui/shade/ShadeHeaderController$onInit$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$onInit$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$onInit$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-boolean p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->panelExpanded:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
