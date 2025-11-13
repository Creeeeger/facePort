.class public final Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->requestDismiss()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;->this$0:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;

    iget-object p0, p0, Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/MultiTaskingAppCompatUILayout$1;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->unregisterFrameCommitCallback(Ljava/lang/Runnable;)Z

    return-void
.end method
