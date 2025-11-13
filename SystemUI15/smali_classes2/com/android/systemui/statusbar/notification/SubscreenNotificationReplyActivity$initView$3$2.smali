.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $this_apply:Lcom/android/systemui/widget/SystemUIEditText;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;Lcom/android/systemui/widget/SystemUIEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    sget-object p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->enableSendButton()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->signature:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-boolean p4, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->isSms:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object p1

    aget p1, p1, p2

    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->setPrevText()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->access$showExceedTextLimitToast(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget p1, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->maxLength:I

    if-le p2, p1, :cond_3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->setPrevText()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->access$showExceedTextLimitToast(Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity$initView$3$2;->$this_apply:Lcom/android/systemui/widget/SystemUIEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;->prevText:Ljava/lang/CharSequence;

    return-void
.end method
