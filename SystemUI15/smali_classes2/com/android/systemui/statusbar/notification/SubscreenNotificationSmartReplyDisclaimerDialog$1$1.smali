.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $disclaimerContainer:Landroid/widget/LinearLayout;

.field public final synthetic $positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic $scrollContainer:Landroid/widget/ScrollView;

.field public final synthetic $this_run:Landroid/app/AlertDialog;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$disclaimerContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$this_run:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$disclaimerContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const/4 v2, -0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$this_run:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$context:Landroid/content/Context;

    const v1, 0x7f1312f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$this_run:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const-string v0, "MORE"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$disclaimerContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$this_run:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$context:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$this_run:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$context:Landroid/content/Context;

    const v3, 0x7f1312f7

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$this_run:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$this_run:Landroid/app/AlertDialog;

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$2;-><init>(Landroid/widget/ScrollView;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
