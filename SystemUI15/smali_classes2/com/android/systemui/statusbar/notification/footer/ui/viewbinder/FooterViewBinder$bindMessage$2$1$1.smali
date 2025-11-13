.class public final Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindMessage$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindMessage$2$1$1;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/viewbinder/FooterViewBinder$bindMessage$2$1$1;->$footer:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mManageOrHistoryButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mManageOrHistoryButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mSeenNotifsFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
