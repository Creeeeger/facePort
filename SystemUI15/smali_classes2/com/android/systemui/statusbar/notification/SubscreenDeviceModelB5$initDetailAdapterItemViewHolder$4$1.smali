.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1312ff

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "%1$s"

    invoke-static {p1, v2}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%2$s"

    invoke-static {v2, v3}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1$clickableSpan$1;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1$clickableSpan$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    new-instance v4, Landroid/text/SpannableString;

    sget v5, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    const-string v5, ""

    filled-new-array {v5, v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p1, 0x6

    const/4 v5, 0x0

    invoke-static {v4, v2, v5, v5, p1}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {v4, v5, p1, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v3, p1, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const v2, 0x7f140603

    invoke-direct {p1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz p1, :cond_3

    const v0, 0x7f0d04b2

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    const v0, 0x7f0a0ba0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    move-object v1, v3

    :cond_5
    invoke-direct {v2, v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    :cond_6
    const-string p0, "S.S.N."

    const-string/jumbo p1, "show smart reply ai disclaimer dialog"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
