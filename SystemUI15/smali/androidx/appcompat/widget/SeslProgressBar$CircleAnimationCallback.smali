.class public final Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback$1;-><init>(Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
