.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$onGardenOnLayout$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
