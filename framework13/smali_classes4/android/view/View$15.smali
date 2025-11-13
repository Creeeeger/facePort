.class Landroid/view/View$15;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->invalidateCanvasBlur()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    .line 34181
    iput-object p1, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 3

    .line 34184
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 34185
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mCanvasBlurEnabled:Z

    .line 34186
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-static {v0}, Landroid/view/View;->-$$Nest$fgetmBlurColorCurve(Landroid/view/View;)Landroid/view/SemBlurInfo$ColorCurve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34187
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mBlurColorCurveEnabled:Z

    .line 34188
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-static {v2}, Landroid/view/View;->-$$Nest$fgetmBlurInfo(Landroid/view/View;)Landroid/view/SemBlurInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo;->getBlurRadius()I

    move-result v2

    iput v2, v0, Landroid/view/ViewRootImpl;->mBlurRadius:I

    .line 34189
    iget-object v0, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/View$15;->this$0:Landroid/view/View;

    invoke-static {v2}, Landroid/view/View;->-$$Nest$fgetmBlurInfo(Landroid/view/View;)Landroid/view/SemBlurInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo;->getColorCurve()Landroid/view/SemBlurInfo$ColorCurve;

    move-result-object v2

    iput-object v2, v0, Landroid/view/ViewRootImpl;->mBlurColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 34192
    :cond_0
    return v1
.end method
