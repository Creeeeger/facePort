.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $systemIcons:Landroid/view/ViewGroup;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;->$systemIcons:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;->$systemIcons:Landroid/view/ViewGroup;

    const p1, 0x7f0a0c0f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    return-void
.end method
