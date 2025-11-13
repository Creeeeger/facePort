.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic $disclaimerContainer:Landroid/widget/LinearLayout;

.field public final synthetic $okBtn:Landroid/widget/Button;

.field public final synthetic $scrollContainer:Landroid/widget/ScrollView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->$disclaimerContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->$okBtn:Landroid/widget/Button;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result p1

    add-int/2addr p1, p3

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->$disclaimerContainer:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->$okBtn:Landroid/widget/Button;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const p4, 0x7f1312f7

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->$okBtn:Landroid/widget/Button;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;->$scrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {p0, p3}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_3
    return-void
.end method
