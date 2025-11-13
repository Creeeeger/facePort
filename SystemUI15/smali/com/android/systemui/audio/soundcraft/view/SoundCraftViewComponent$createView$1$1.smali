.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$createView$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$createView$1$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string p1, "SoundCraft.SoundCraftViewComponent"

    const-string v0, "onViewAttachedToWindow"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent$createView$1$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->registry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    const-string p0, "SoundCraft.SoundCraftViewComponent"

    const-string p1, "onViewDetachedFromWindow"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
