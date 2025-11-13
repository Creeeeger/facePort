.class public final Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $animate:Z

.field public final synthetic $msg:Ljava/lang/CharSequence;

.field public final synthetic this$0:Lcom/android/keyguard/BouncerKeyguardMessageArea;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;Ljava/lang/CharSequence;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;->this$0:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    iput-object p2, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;->$msg:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;->$animate:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;->this$0:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    iget-object v0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;->$msg:Ljava/lang/CharSequence;

    iget-boolean p0, p0, Lcom/android/keyguard/BouncerKeyguardMessageArea$setMessage$1;->$animate:Z

    invoke-static {p1, v0, p0}, Lcom/android/keyguard/BouncerKeyguardMessageArea;->access$setMessage$s-1109913202(Lcom/android/keyguard/BouncerKeyguardMessageArea;Ljava/lang/CharSequence;Z)V

    return-void
.end method
