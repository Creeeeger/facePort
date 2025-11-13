.class Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback$1;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2543
    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback$1;->this$0:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 2546
    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback$1;->this$0:Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;

    invoke-static {p0}, Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;->access$900(Landroidx/appcompat/widget/SeslProgressBar$CircleAnimationCallback;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SeslProgressBar;

    if-nez p0, :cond_0

    return-void

    .line 2550
    :cond_0
    invoke-static {p0}, Landroidx/appcompat/widget/SeslProgressBar;->access$1000(Landroidx/appcompat/widget/SeslProgressBar;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method
