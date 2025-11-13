.class public final Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

.field public final synthetic $launchNotificationHistory:Landroid/view/View$OnClickListener;

.field public final synthetic $launchNotificationSettings:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1$1;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1$1;->$launchNotificationHistory:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1$1;->$launchNotificationSettings:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1$1;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1$1;->$launchNotificationHistory:Landroid/view/View$OnClickListener;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mManageOrHistoryButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindManageOrHistoryButton$2$1$1;->$launchNotificationSettings:Landroid/view/View$OnClickListener;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mManageOrHistoryButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
