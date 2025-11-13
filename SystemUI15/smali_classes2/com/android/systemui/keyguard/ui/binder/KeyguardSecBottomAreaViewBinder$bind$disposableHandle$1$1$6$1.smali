.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $indicationArea:Landroid/view/View;

.field public final synthetic $upperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public final synthetic $usimTextArea:Landroid/widget/LinearLayout;

.field public final synthetic $view:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;Landroid/view/View;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;->$view:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;->$indicationArea:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;->$upperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;->$usimTextArea:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;->$view:Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;

    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateLeftAffordanceIcon:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->updateRightAffordanceIcon:Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_1

    move-object v1, p2

    :cond_1
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;->$indicationArea:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaSideMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget v2, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->indicationAreaBottomMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const-string v5, "mIndicationArea margin start : "

    const-string v6, ", end : "

    const-string v7, ", bottom : "

    invoke-static {v2, v3, v5, v6, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSecBottomAreaViewBinder"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;->$upperFPIndication:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->upperFPIndicationBottomMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$bind$disposableHandle$1$1$6$1;->$usimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSecBottomAreaViewBinder$ConfigurationBasedDimensions;->usimTextAreaBottomMargin:I

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
