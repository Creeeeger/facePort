.class public final Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback$1;->this$0:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback$1;->this$0:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;->mProgressBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SeslProgressBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method
