.class Landroid/widget/directwriting/DirectWritingTrigger$1;
.super Ljava/lang/Object;
.source "DirectWritingTrigger.java"

# interfaces
.implements Landroid/widget/directwriting/DirectWritingTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/directwriting/DirectWritingTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/directwriting/DirectWritingTrigger;


# direct methods
.method constructor blacklist <init>(Landroid/widget/directwriting/DirectWritingTrigger;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/directwriting/DirectWritingTrigger;

    .line 65
    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist findTriggerEditText(FF)Landroid/widget/directwriting/WritingView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTriggerEditTextWithEventPos from triggerCallback event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DWT]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0, p1, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$mfindTriggerEditTextWithEventPos(Landroid/widget/directwriting/DirectWritingTrigger;FF)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    .line 76
    .local v0, "writingView":Landroid/widget/directwriting/WritingView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$misUselessWritingView(Landroid/widget/directwriting/DirectWritingTrigger;Landroid/widget/directwriting/WritingView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x0

    return-object v1

    .line 79
    :cond_0
    return-object v0
.end method

.method public blacklist isHoverIconShowing()Z
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmFoundTriggerWritingView(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmFoundTriggerWritingView(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getSkipHoverCursorChange()Z

    move-result v0

    return v0
.end method

.method public blacklist onFinishRecognition()V
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmViewRootCallback(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/DirectWritingViewRootCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingViewRootCallback;->enableTransientBars()V

    .line 95
    return-void
.end method

.method public blacklist updateConfiguration(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 84
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmConfig(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->update(Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfiguration config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v1}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmConfig(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DWT]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmContext(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmContext(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v1}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmConfig(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->getForceShowSipAppPrivateCommandList()Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingCompat;->setForceShowSipAppPrivateCommandList(Landroid/content/Context;Ljava/util/List;)V

    .line 90
    :cond_0
    return-void
.end method

.method public blacklist updateTriggerEditText()V
    .locals 3

    .line 68
    const-string v0, "[DWT]"

    const-string/jumbo v1, "updateTriggerEditText()"

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmContext(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingTrigger$1;->this$0:Landroid/widget/directwriting/DirectWritingTrigger;

    invoke-static {v2}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$fgetmRootView(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/widget/directwriting/DirectWritingTrigger;->-$$Nest$maddRects(Landroid/widget/directwriting/DirectWritingTrigger;Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 70
    return-void
.end method
