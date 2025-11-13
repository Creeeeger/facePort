.class public final Lcom/android/wm/shell/windowdecor/DexWindowDecoration$3;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$3;->this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissed(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$3;->this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
