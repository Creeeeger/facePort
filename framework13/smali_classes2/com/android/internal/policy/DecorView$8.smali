.class Lcom/android/internal/policy/DecorView$8;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZZIZZLandroid/view/WindowInsetsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;

.field final synthetic blacklist val$hideView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 2359
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$8;->this$0:Lcom/android/internal/policy/DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/DecorView$8;->val$hideView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 2363
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$8;->val$hideView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2364
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$8;->val$hideView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2366
    return-void
.end method
