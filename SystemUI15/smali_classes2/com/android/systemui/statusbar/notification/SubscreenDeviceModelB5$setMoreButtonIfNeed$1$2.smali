.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $scrollContainer:Landroid/widget/ScrollView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->$scrollContainer:Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MORE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->$scrollContainer:Landroid/widget/ScrollView;

    const/16 p1, 0x82

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setMoreButtonIfNeed$1$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->access$handleTurnOnClick(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    :goto_0
    return-void
.end method
