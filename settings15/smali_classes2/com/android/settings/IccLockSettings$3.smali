.class public final Lcom/android/settings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$v:Landroid/view/View;

.field public final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/IccLockSettings$3;->val$wm:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/settings/IccLockSettings$3;->val$v:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings$3;->val$wm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/settings/IccLockSettings$3;->val$v:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method
