.class public final Lcom/android/settings/applications/RunningServices$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/RunningServices;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningServices;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningServices$1;->this$0:Lcom/android/settings/applications/RunningServices;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/applications/RunningServices$1;->this$0:Lcom/android/settings/applications/RunningServices;

    iget-object p0, p0, Lcom/android/settings/applications/RunningServices;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    return-void
.end method
