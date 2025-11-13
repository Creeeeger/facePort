.class public final Lcom/android/systemui/navigationbar/NavigationBarInflaterView$Listener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final mSelf:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarInflaterView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView$Listener;->mSelf:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView$Listener;->mSelf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz p0, :cond_0

    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mNavBarMode:I

    :cond_0
    return-void
.end method
