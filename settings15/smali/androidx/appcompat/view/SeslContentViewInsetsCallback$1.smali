.class public final Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SeslContentViewInsetsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "WindowInsetsAnimation could have been cancelled"

    const-string v1, "SeslCVInsetsCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    iget-boolean v2, v0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->mWindowInsetsAnimationStarted:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->mIsDeferInsets:Z

    if-eqz v0, :cond_1

    const-string v0, "Start to restore insets state"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->mIsDeferInsets:Z

    iget-object v0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_1
    return-void
.end method
