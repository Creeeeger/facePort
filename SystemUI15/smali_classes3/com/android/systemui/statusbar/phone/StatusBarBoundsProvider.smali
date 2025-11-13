.class public final Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final changeListeners:Lcom/android/systemui/util/ListenerSet;

.field public final endSideContent:Landroid/view/View;

.field public final layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

.field public previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

.field public final startSideContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/util/ListenerSet;

    invoke-direct {v0}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->changeListeners:Lcom/android/systemui/util/ListenerSet;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BoundsPair;

    invoke-static {p1}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/BoundsPair;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->previousBounds:Lcom/android/systemui/statusbar/phone/BoundsPair;

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    return-void
.end method
