.class public final Lcom/android/systemui/statusbar/KshPresenter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    if-eq v1, v0, :cond_5

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    if-eqz v4, :cond_3

    const v4, 0x103012e

    goto :goto_1

    :cond_3
    const v4, 0x1030132

    :goto_1
    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KshView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshView:Lcom/android/systemui/statusbar/KshView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iget-object v1, v1, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mKeyboardShortcutsDialog:Landroid/app/Dialog;

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshView;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method
