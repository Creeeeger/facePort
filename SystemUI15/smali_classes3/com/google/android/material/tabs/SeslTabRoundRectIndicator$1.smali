.class public final Lcom/google/android/material/tabs/SeslTabRoundRectIndicator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator$1;->this$0:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator$1;->this$0:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
