.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0;-><init>(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
