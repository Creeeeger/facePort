.class Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;
.super Landroid/view/ISystemGestureExclusionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;

    invoke-direct {p0}, Landroid/view/ISystemGestureExclusionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;

    invoke-static {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;)I

    move-result v0

    if-ne p1, v0, :cond_1

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->onExclusionChanged(Landroid/graphics/Region;Landroid/graphics/Region;)V

    :cond_1
    return-void
.end method
