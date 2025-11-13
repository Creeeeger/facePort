.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $this_apply:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->$this_apply:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->$this_apply:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->useHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->key:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyNotification(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSent:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->replyLayout:Landroid/widget/LinearLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1$onClick$lambda$1$$inlined$doOnEnd$1;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1$onClick$lambda$1$$inlined$doOnEnd$1;-><init>(ZLcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    invoke-virtual {p1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->editText:Lcom/android/systemui/widget/SystemUIEditText;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPN102"

    const-string v0, "QPNE0210"

    const-string v1, "length"

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
