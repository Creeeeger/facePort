.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$9;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return-void
.end method
