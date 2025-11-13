.class public final Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result p2

    const/4 v2, 0x2

    if-ge p2, v2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-ne v2, p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, p1

    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    move v1, p2

    :cond_6
    const p0, 0x7f0a03af

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_8

    if-eqz v1, :cond_7

    const p1, 0x7f13079f

    goto :goto_4

    :cond_7
    const p1, 0x7f13079e

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    return-void
.end method
