.class public final synthetic Lcom/google/android/material/tabs/TabLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/tabs/TabLayout;

.field public final synthetic f$1:Lcom/google/android/material/tabs/TabLayout$TabView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/tabs/TabLayout$TabView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/tabs/TabLayout$TabView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/tabs/TabLayout$TabView;

    sget-object v1, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020028

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->jumpToCurrentState()V

    return-void
.end method
