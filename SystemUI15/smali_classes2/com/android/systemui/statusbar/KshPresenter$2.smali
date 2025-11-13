.class public final Lcom/android/systemui/statusbar/KshPresenter$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iget-object p1, p1, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$2;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iput-object p1, p2, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
