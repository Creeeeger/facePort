.class public final synthetic Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    return-void
.end method


# virtual methods
.method public final whitelist onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->lambda$startSetSafeModeAnimation$2$com-samsung-android-globalactions-presentation-view-SamsungGlobalActionsAnimator()V

    return-void
.end method
