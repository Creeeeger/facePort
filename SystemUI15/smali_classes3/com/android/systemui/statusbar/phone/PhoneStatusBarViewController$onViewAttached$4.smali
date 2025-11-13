.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandQs()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandShade()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
