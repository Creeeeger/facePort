.class public final synthetic Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/util/SubscreenToolTipWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qp/util/SubscreenToolTipWindow;

    sget-object v0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->mTipWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/util/SubscreenToolTipWindow;->showToolTip(Landroid/view/View;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
