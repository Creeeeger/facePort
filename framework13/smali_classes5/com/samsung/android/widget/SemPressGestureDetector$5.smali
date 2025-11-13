.class Lcom/samsung/android/widget/SemPressGestureDetector$5;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemPressGestureDetector;->checkBlockApp()V
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
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemPressGestureDetector;

    .line 540
    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$5;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$5;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$misLauncherApp(Lcom/samsung/android/widget/SemPressGestureDetector;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$5;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    const-string v2, "com.samsung.android.bixbytouch"

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$mmatchPackage(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmFindViewRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    goto :goto_2

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 548
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
