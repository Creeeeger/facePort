.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic $listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;->$listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;->$listView:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->channel:Landroid/app/NotificationChannel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->highlightColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/ChannelRow$playHighlight$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow$playHighlight$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method
