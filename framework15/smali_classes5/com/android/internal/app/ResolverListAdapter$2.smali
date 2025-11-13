.class Lcom/android/internal/app/ResolverListAdapter$2;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverListAdapter;->postListReadyRunnable(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;

.field final synthetic blacklist val$doPostProcessing:Z

.field final synthetic blacklist val$rebuildCompleted:Z

.field final synthetic blacklist val$skipAutoLaunch:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$2;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iput-boolean p2, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$doPostProcessing:Z

    iput-boolean p3, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$rebuildCompleted:Z

    iput-boolean p4, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$skipAutoLaunch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$2;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$2;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$doPostProcessing:Z

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$rebuildCompleted:Z

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverListAdapter$2;->val$skipAutoLaunch:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$2;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$fputmPostListReadyRunnable(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/Runnable;)V

    return-void
.end method
