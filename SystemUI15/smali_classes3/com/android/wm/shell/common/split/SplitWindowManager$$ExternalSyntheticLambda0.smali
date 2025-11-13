.class public final synthetic Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitWindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerVisible:Z

    const-string v1, "SplitWindowManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/DividerPanel;->updateDividerPanel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "divider_panel_first_auto_open"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mShowingFirstAutoOpenDividerPanel:Z

    const-string p0, "Run DividerPanel first auto open"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Faild to run DividerPanel first auto open"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
