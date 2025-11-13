.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $disclaimerView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;->$disclaimerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;->$disclaimerView:Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0a0ba5

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v2, 0x7f0a0ba3

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0ba4

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_5

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v4, 0x7f1312f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "MORE"

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :goto_3
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$1;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    if-eqz p0, :cond_8

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;-><init>(Landroid/widget/ScrollView;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_5
    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v1, 0x7f1312f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_8
    :goto_5
    return-void
.end method
