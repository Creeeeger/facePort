.class public final Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mProgressBar:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;->mProgressBar:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/SeslProgressBar$RefreshProgressRunnable;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
