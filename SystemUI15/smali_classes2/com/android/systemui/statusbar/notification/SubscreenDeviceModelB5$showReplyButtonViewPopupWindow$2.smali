.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $iconSize:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $view:Landroid/view/View;

.field public downHit:Ljava/lang/Boolean;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$iconSize:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$iconSize:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    int-to-float v0, v3

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    move p1, v1

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    cmpg-float v3, p1, v2

    if-ltz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$iconSize:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float v4, v3

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_7

    cmpg-float p1, p2, v2

    if-ltz p1, :cond_7

    int-to-float p1, v3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->$view:Landroid/view/View;

    const p2, 0x7f0a0af3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    :cond_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->downHit:Ljava/lang/Boolean;

    goto :goto_1

    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_8
    :goto_1
    return v1
.end method
