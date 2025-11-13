.class public final synthetic Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KshPresenter;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/KshPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, v1, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iput-object v3, v1, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/KshView;->showKshDialog(Ljava/util/List;)V

    :goto_0
    return-void
.end method
