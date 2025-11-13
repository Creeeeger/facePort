.class Landroid/widget/ProgressBar$CircleAnimationCallback$1;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ProgressBar$CircleAnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ProgressBar$CircleAnimationCallback;


# direct methods
.method constructor blacklist <init>(Landroid/widget/ProgressBar$CircleAnimationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ProgressBar$CircleAnimationCallback$1;->this$0:Landroid/widget/ProgressBar$CircleAnimationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ProgressBar$CircleAnimationCallback$1;->this$0:Landroid/widget/ProgressBar$CircleAnimationCallback;

    invoke-static {v0}, Landroid/widget/ProgressBar$CircleAnimationCallback;->-$$Nest$fgetmProgressBar(Landroid/widget/ProgressBar$CircleAnimationCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/widget/ProgressBar;->-$$Nest$fgetmIndeterminateDrawable(Landroid/widget/ProgressBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method
