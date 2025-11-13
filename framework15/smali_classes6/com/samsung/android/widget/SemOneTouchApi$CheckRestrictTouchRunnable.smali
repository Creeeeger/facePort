.class Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;
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
    name = "CheckRestrictTouchRunnable"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field private final blacklist rootView:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemOneTouchApi;


# direct methods
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->rootView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public blacklist remove()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$misFingerPrintInDisplay(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mclearEventState(Lcom/samsung/android/widget/SemOneTouchApi;)V

    :cond_0
    return-void
.end method
