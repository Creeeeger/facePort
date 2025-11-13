.class public final Lcom/google/android/material/motion/MaterialBackOrchestrator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;

.field public final backHandler:Lcom/google/android/material/motion/MaterialBackHandler;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/google/android/material/motion/MaterialBackHandler;",
            ">(TT;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/motion/MaterialBackHandler;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/motion/MaterialBackOrchestrator;-><init>(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/motion/MaterialBackHandler;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;-><init>(Lcom/google/android/material/motion/MaterialBackOrchestrator$1;)V

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backCallbackDelegate:Lcom/google/android/material/motion/MaterialBackOrchestrator$Api34BackCallbackDelegate;

    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->backHandler:Lcom/google/android/material/motion/MaterialBackHandler;

    iput-object p2, p0, Lcom/google/android/material/motion/MaterialBackOrchestrator;->view:Landroid/view/View;

    return-void
.end method
