.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$animationFinishedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$animationFinishedListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$animationFinishedListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$onChanged$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver$onChanged$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
