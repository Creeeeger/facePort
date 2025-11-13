.class Landroid/widget/TextView$7;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TextView;

.field final synthetic blacklist val$inputDevice:Landroid/view/InputDevice;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TextView;Landroid/view/InputDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;

    .line 17587
    iput-object p1, p0, Landroid/widget/TextView$7;->this$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$7;->val$inputDevice:Landroid/view/InputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 17589
    const/4 v0, 0x1

    const/16 v1, 0x4e2a

    invoke-static {v0, v1}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    .line 17590
    iget-object v0, p0, Landroid/widget/TextView$7;->val$inputDevice:Landroid/view/InputDevice;

    if-eqz v0, :cond_0

    .line 17591
    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 17593
    :cond_0
    return-void
.end method
