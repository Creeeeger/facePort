.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3;
.super Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDelayChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
