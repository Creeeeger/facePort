.class public final Lcom/google/android/setupdesign/template/RequireScrollMixin$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

.field public final synthetic val$scrollNeeded:Z


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    iput-boolean p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$scrollNeeded:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->this$0:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    iget-object v0, v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$scrollNeeded:Z

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;->onRequireScrollStateChanged(Z)V

    :cond_0
    return-void
.end method
