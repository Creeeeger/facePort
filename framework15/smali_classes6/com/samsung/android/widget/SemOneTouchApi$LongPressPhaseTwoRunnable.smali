.class Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;
.super Ljava/lang/Object;
.source "SemOneTouchApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemOneTouchApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressPhaseTwoRunnable"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field private final blacklist rootView:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemOneTouchApi;


# direct methods
.method public static synthetic blacklist $r8$lambda$Uz_HaHuO4WpZvi0BwQEsI7NE0l8(Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->lambda$run$0(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->rootView:Landroid/view/View;

    return-void
.end method

.method private synthetic blacklist lambda$run$0(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$msendOnLongPressedEvent(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v2, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->rootView:Landroid/view/View;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmLongPressPhaseTwoOnResponseRunnable(Lcom/samsung/android/widget/SemOneTouchApi;Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmLongPressPhaseTwoOnResponseRunnable(Lcom/samsung/android/widget/SemOneTouchApi;)Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public blacklist remove()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist test-api run()V
    .locals 4

    const-string v0, "OTCH$SemOneTouchApi"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "LongPressPhaseTwoRunnable"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LongPressPhaseTwoRunnable state error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LongPressPhaseTwoRunnable call error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    :goto_1
    return-void
.end method
