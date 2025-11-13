.class Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

.field final synthetic blacklist val$request:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iput-object p2, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;->val$request:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;->this$1:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    iget-object v1, p0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy$2;->val$request:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->-$$Nest$mdispatchSmartClipMetaDataExtraction(Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V

    return-void
.end method
