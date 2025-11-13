.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $disclaimerContainer:Landroid/widget/LinearLayout;

.field public final synthetic $scrollContainer:Landroid/widget/ScrollView;

.field public final synthetic $this_run:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$disclaimerContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$this_run:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    add-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$disclaimerContainer:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p2

    :goto_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lt p1, p3, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$this_run:Landroid/app/AlertDialog;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$context:Landroid/content/Context;

    const p5, 0x7f1312f7

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$this_run:Landroid/app/AlertDialog;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_2
    return-void
.end method
