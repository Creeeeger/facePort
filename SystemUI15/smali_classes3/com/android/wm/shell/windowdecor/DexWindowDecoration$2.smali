.class public final Lcom/android/wm/shell/windowdecor/DexWindowDecoration$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$2;->this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$2;->this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p1, p0}, Landroid/app/IActivityTaskManager;->startActivityForDexRestart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->$r8$clinit:I

    const-string p0, "DexWindowDecoration"

    const-string/jumbo p1, "startActivityFromRecents remote exception"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
