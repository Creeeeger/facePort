.class public final Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsDisableDialog:Z

.field public final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isDexCompatEnabled(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final toggleFreeformForDexCompatApp(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mIsDisableDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_dexcompat_restart_dialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mIsDisableDialog:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mIsDisableDialog:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toggleFreeformForDexCompatApp: t#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRestartDialogDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexCompatRestartDialogUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    sget p0, Lcom/android/wm/shell/windowdecor/DexCompatRestartActivity;->$r8$clinit:I

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->toggleFreeformForDexCompatApp(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;I)V

    iget-object p0, p0, Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
