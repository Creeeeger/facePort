.class Landroid/widget/TextView$StylusEventListener$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$StylusEventListener;->onStylusButtonEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/TextView$StylusEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView$StylusEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    const-string v0, "TextView"

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v2, v2, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v3, v3, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-static {v4}, Landroid/widget/TextView$StylusEventListener;->-$$Nest$fgetmStartCurPosition(Landroid/widget/TextView$StylusEventListener;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-static {v5}, Landroid/widget/TextView$StylusEventListener;->-$$Nest$fgetmEndCurPosition(Landroid/widget/TextView$StylusEventListener;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/widget/TextView;->-$$Nest$mselectCurrentWordForMultiSelection(Landroid/widget/TextView;II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    move-object v4, v2

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/widget/TextView$StylusEventListener;->-$$Nest$fputmStartCurPosition(Landroid/widget/TextView$StylusEventListener;I)V

    iget-object v3, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    move-object v4, v2

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/widget/TextView$StylusEventListener;->-$$Nest$fputmEndCurPosition(Landroid/widget/TextView$StylusEventListener;I)V

    iget-object v3, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v3, v3, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->-$$Nest$mshowMultiSelectPopupWindow(Landroid/widget/TextView;)V

    :try_start_0
    new-instance v3, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-static {v4}, Landroid/widget/TextView$StylusEventListener;->-$$Nest$fgetmStartCurPosition(Landroid/widget/TextView$StylusEventListener;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-static {v5}, Landroid/widget/TextView$StylusEventListener;->-$$Nest$fgetmEndCurPosition(Landroid/widget/TextView$StylusEventListener;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "Pen up with side button! : end text selection"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    iget-object v0, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v0, v0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/widget/TextView;->-$$Nest$fputmhasMultiSelection(Landroid/widget/TextView;Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    invoke-static {v0}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    :cond_0
    return-void
.end method
