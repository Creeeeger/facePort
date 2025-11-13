.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

.field public final synthetic f$1:Landroid/view/LayoutInflater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$$ExternalSyntheticLambda0;->f$1:Landroid/view/LayoutInflater;

    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0d0395

    invoke-virtual {p0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mParent:Landroid/view/ViewGroup;

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager;->mDefaultOption:Lcom/android/systemui/statusbar/notification/row/SnoozeOptionManager$NotificationSnoozeOption;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
