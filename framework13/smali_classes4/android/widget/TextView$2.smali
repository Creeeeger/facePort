.class Landroid/widget/TextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->initTextStrikeThroughAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;

    .line 8923
    iput-object p1, p0, Landroid/widget/TextView$2;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 8925
    iget-object v0, p0, Landroid/widget/TextView$2;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/TextView;->-$$Nest$fputmLineIsDrawed(Landroid/widget/TextView;Z)V

    .line 8926
    return-void
.end method
