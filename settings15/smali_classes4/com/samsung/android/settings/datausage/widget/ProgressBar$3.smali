.class public final Lcom/samsung/android/settings/datausage/widget/ProgressBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar$3;->this$0:Lcom/samsung/android/settings/datausage/widget/ProgressBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar$3;->this$0:Lcom/samsung/android/settings/datausage/widget/ProgressBar;

    sget v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar$3;->this$0:Lcom/samsung/android/settings/datausage/widget/ProgressBar;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimType:I

    return-void
.end method
