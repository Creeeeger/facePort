.class public final Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final powerManager:Landroid/os/PowerManager;

.field public view:Landroid/view/View;

.field public viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/PowerManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;->powerManager:Landroid/os/PowerManager;

    const-string p0, "SoundCraftNowBarView"

    const-string p1, "init()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;->viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->updateModel(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :cond_1
    const-string v2, "createDetailView, parent=null"

    const-string v3, "SoundCraftNowBarView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;->viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;->viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->root:Landroid/view/ViewGroup;

    :goto_3
    iput-object v2, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;->view:Landroid/view/View;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "SoundCraftNowBarView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;->viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarView;->view:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
