.class Lcom/android/internal/app/ChooserActivity$38;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->enablePrivateShareTip(ILandroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$currentItemView:Landroid/view/View;

.field final synthetic blacklist val$position:I

.field final synthetic blacklist val$shouldRunSceneOptimizer:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 14100
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$38;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$38;->val$position:I

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$38;->val$currentItemView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/internal/app/ChooserActivity$38;->val$shouldRunSceneOptimizer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 14103
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$38;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$38;->val$position:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$38;->val$currentItemView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/internal/app/ChooserActivity$38;->val$shouldRunSceneOptimizer:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshowExpandedPrivateShareTip(Lcom/android/internal/app/ChooserActivity;ILandroid/view/View;Z)V

    .line 14104
    return-void
.end method
