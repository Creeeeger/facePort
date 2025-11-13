.class public Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mHost:Ljava/lang/ref/WeakReference;

.field public mTextToAnnounce:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;->mHost:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;->mTextToAnnounce:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
