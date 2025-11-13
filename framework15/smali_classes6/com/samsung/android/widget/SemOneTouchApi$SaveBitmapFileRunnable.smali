.class Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;
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
    name = "SaveBitmapFileRunnable"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field private blacklist foundBitmap:Landroid/graphics/Bitmap;

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemOneTouchApi;

.field private blacklist touchedView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/graphics/Bitmap;)V
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->touchedView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->foundBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->foundBitmap:Landroid/graphics/Bitmap;

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

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->touchedView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->foundBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->touchedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    const-string v1, "OTCH$SemOneTouchApi"

    if-nez v0, :cond_0

    const-string v2, "CurrentLongPressEvent is null, abandon SaveBitmapFile"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->clone()Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->foundBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->touchedView:Landroid/view/View;

    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v5, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mgetBitmapFromImageView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->foundBitmap:Landroid/graphics/Bitmap;

    :goto_0
    if-nez v3, :cond_2

    const-string v4, "getBitmapFromView fail"

    invoke-static {v1, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v0, v3}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->context:Landroid/content/Context;

    invoke-static {v1, v4, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$msaveBitmapFile(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "key_save_img_result"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v5, 0x3e9

    invoke-static {v2, v5}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v6, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->context:Landroid/content/Context;

    invoke-static {v5, v6, v2, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$msendOnLongPressedEvent(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
