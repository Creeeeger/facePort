.class public final Lcom/android/systemui/ambient/touch/TouchMonitor$2;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/TouchMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$2;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$2;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mExclusionRect:Landroid/graphics/Rect;

    return-void
.end method
