.class public final Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible$1()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestLayout()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->access$300(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
