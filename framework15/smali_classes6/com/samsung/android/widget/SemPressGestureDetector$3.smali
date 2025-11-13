.class Lcom/samsung/android/widget/SemPressGestureDetector$3;
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$3;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$3;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$3;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$misFingerPrintInDisplay(Lcom/samsung/android/widget/SemPressGestureDetector;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V

    return-void
.end method
