.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$initDialog$1$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->onFinishListener:Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;->onChannelEditorDialogFinished()V

    :cond_0
    return-void
.end method
