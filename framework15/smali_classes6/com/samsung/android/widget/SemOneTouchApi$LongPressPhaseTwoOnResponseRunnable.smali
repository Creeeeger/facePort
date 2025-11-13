.class Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;
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
    name = "LongPressPhaseTwoOnResponseRunnable"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field private final blacklist resultBundle:Landroid/os/Bundle;

.field private final blacklist rootView:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemOneTouchApi;


# direct methods
.method public static synthetic blacklist $r8$lambda$-P2B0d7Xlj2nq9znzP0gPNfdUIw(Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->lambda$run$0(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->rootView:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->resultBundle:Landroid/os/Bundle;

    return-void
.end method

.method private synthetic blacklist lambda$run$0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressCompleted(Lcom/samsung/android/widget/SemOneTouchApi;)V

    goto :goto_0

    :cond_0
    const-string v0, "OTCH$SemOneTouchApi"

    const-string v1, "LongPressPhaseTwoOnResponseRunnable drag fail"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressCanceled(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist remove()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist test-api run()V
    .locals 14

    const-string v0, "OTCH$SemOneTouchApi"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "LongPressPhaseTwoOnResponseRunnable"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->resultBundle:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$misEventSuccess(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v3, "LongPressPhaseTwoOnResponseRunnable call fail"

    invoke-static {v0, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->resultBundle:Landroid/os/Bundle;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->resultBundle:Landroid/os/Bundle;

    const-string v4, "key_customized_clip_data"

    const-class v5, Landroid/content/ClipData;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    :goto_0
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v4}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->resultBundle:Landroid/os/Bundle;

    const-string v5, "key_custom_drag_shadow_width"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->resultBundle:Landroid/os/Bundle;

    const-string v5, "key_touched_img_pfd"

    const-class v7, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->rootView:Landroid/view/View;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedRawPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v9

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v13, p0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;)V

    move-object v10, v3

    invoke-static/range {v4 .. v13}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mperformDragAndDrop(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;ILandroid/view/View;Landroid/graphics/PointF;Landroid/view/View;Landroid/content/ClipData;Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LongPressPhaseTwoOnResponseRunnable state error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LongPressPhaseTwoOnResponseRunnable call error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    :goto_2
    return-void
.end method
