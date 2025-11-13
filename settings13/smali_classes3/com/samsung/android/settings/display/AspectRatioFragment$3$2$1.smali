.class Lcom/samsung/android/settings/display/AspectRatioFragment$3$2$1;
.super Ljava/lang/Object;
.source "AspectRatioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2$1;->this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 595
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 596
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2$1;->this$2:Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;

    iget-object v0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$3;

    iget-object v0, v0, Lcom/samsung/android/settings/display/AspectRatioFragment$3;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$3$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iget-object v1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mUid:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$mkillPackageProcesses(Lcom/samsung/android/settings/display/AspectRatioFragment;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterruptedException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AspectRatioFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
