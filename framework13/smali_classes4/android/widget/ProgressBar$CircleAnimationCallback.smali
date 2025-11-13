.class Landroid/widget/ProgressBar$CircleAnimationCallback;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CircleAnimationCallback"
.end annotation


# instance fields
.field final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mProgressBar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgressBar(Landroid/widget/ProgressBar$CircleAnimationCallback;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Landroid/widget/ProgressBar$CircleAnimationCallback;->mProgressBar:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .line 2766
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    .line 2764
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/ProgressBar$CircleAnimationCallback;->mHandler:Landroid/os/Handler;

    .line 2767
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/ProgressBar$CircleAnimationCallback;->mProgressBar:Ljava/lang/ref/WeakReference;

    .line 2768
    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 2772
    iget-object v0, p0, Landroid/widget/ProgressBar$CircleAnimationCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/ProgressBar$CircleAnimationCallback$1;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar$CircleAnimationCallback$1;-><init>(Landroid/widget/ProgressBar$CircleAnimationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2782
    return-void
.end method
