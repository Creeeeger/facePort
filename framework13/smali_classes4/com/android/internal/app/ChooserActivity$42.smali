.class Lcom/android/internal/app/ChooserActivity$42;
.super Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semVideoTransCoding(Landroid/net/Uri;I)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$out:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 15569
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$42;->val$out:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCompleted()V
    .locals 5

    .line 15582
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$42;->val$out:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmTranscodedFile(Lcom/android/internal/app/ChooserActivity;Ljava/io/File;)V

    .line 15583
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemTransTask(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$SemTransTask;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemTransTask(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$SemTransTask;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$SemTransTask;->calculatePercentage(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentPercentage:I

    .line 15584
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemTransTask(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$SemTransTask;

    move-result-object v0

    iget-wide v1, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCompletedFileSize:J

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemTransTask(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$SemTransTask;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileSize:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCompletedFileSize:J

    .line 15585
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemTransTask(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$SemTransTask;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mCurrentFileCount:I

    .line 15586
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemTransTask(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$SemTransTask;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingComplete:Z

    .line 15587
    return-void
.end method

.method public whitelist onError()V
    .locals 2

    .line 15591
    const-string v0, "ChooserActivity"

    const-string v1, "ProgressCallback.onError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15592
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemTransTask(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$SemTransTask;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/ChooserActivity$SemTransTask;->mTranscodingError:Z

    .line 15593
    return-void
.end method

.method public whitelist onProgressChanged(I)V
    .locals 3
    .param p1, "i"    # I

    .line 15577
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$42;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemTransTask(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$SemTransTask;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "progress"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/app/ChooserActivity$SemTransTask;->doProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 15578
    return-void
.end method

.method public whitelist onStarted()V
    .locals 2

    .line 15572
    const-string v0, "ChooserActivity"

    const-string v1, "ProgressCallback.onStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15573
    return-void
.end method
