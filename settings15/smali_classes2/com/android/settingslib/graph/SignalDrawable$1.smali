.class public final Lcom/android/settingslib/graph/SignalDrawable$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/graph/SignalDrawable;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/graph/SignalDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    iget v1, v0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable$1;->this$0:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Lcom/android/settingslib/graph/SignalDrawable$1;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
