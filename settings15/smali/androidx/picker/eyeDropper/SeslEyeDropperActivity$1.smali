.class public final Landroidx/picker/eyeDropper/SeslEyeDropperActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;


# direct methods
.method public constructor <init>(Landroidx/picker/eyeDropper/SeslEyeDropperActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$1;->this$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$1;->this$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    iget-object p1, p1, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object p0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity$1;->this$0:Landroidx/picker/eyeDropper/SeslEyeDropperActivity;

    iget-object p0, p0, Landroidx/picker/eyeDropper/SeslEyeDropperActivity;->mBitmapView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
