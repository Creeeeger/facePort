.class Lcom/samsung/android/widget/SemPressGestureDetector$1;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemPressGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemPressGestureDetector;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$1;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLongLongTouchRunnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$1;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmCallerPackage(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$1;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmActivityName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$1;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmProcessName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPressGestureDetector"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$1;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$1;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$msendBixbyLongClickedEvent(Lcom/samsung/android/widget/SemPressGestureDetector;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmResponeLongLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V

    return-void
.end method
