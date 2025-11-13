.class public final synthetic Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KshPresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    return-void
.end method
