.class public final synthetic Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->mWindowManager:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;

    iget-object p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mLayout:Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0df3

    invoke-virtual {p1, v1, v0}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsLayout;->setViewVisibility(IZ)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mDisappearTimeSupplier:Ljava/util/function/Function;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mNextButtonHideTimeMs:J

    iget-object p1, p0, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/UserAspectRatioSettingsWindowManager;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, v3, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return v0
.end method
