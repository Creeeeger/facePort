.class public final Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;->this$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow$1;->this$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    iget-object p1, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
