.class Lcom/samsung/android/widget/SemPressGestureDetector$2;
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
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemPressGestureDetector;

    .line 112
    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V

    .line 117
    return-void

    .line 119
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsRequestCode(J)V

    .line 120
    invoke-static {}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfgetsWidgetNameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    invoke-static {}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfgetsWidgetIdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmHasDoneLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$mparseInfoFromView(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLongTouchRunnable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v3}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmCallerPackage(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v4}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmActivityName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v3}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmProcessName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SemPressGestureDetector"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfputsHasCallReflectCount(I)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmView(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getTouchedViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmTouchedViews(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/util/ArrayList;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$msendBixbyLongClickedEvent(Lcom/samsung/android/widget/SemPressGestureDetector;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fputmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmView(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$2;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    invoke-static {v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$fgetmLongLongTouchRunnable(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$sfgetsLongLongPressTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_1
    return-void
.end method
