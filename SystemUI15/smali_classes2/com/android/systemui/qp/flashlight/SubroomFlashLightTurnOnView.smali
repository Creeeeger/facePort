.class public Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$TurnOnClickListener;

.field public mTurnOnHelpText:Landroid/widget/TextView;

.field public mTurnOnView:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0da8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mTurnOnView:Landroid/widget/Button;

    const v0, 0x7f0a0da7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mTurnOnHelpText:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mTurnOnView:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mTurnOnHelpText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$1;-><init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
