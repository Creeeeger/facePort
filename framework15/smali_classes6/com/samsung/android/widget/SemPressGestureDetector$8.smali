.class Lcom/samsung/android/widget/SemPressGestureDetector$8;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemPressGestureDetector;->sendHtmlData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

.field final synthetic blacklist val$htmlData:Ljava/lang/String;

.field final synthetic blacklist val$requestCode:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$8;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    iput-object p2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$8;->val$htmlData:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/widget/SemPressGestureDetector$8;->val$requestCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$8;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$8;->val$htmlData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$msaveHtmlDataToFile(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$8;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$8;->val$htmlData:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector$8;->val$requestCode:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$msendParseResult(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemPressGestureDetector"

    invoke-static {v2, v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
