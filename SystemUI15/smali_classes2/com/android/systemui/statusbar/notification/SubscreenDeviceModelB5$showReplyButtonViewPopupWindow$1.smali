.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method
