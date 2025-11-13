.class public final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$RecyclerViewExpandingAccessibilityDelegate;
.super Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final delegate:Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/android/internal/widget/RecyclerView;)V

    new-instance p2, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;

    invoke-direct {p2, p1}, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$RecyclerViewExpandingAccessibilityDelegate;->delegate:Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$RecyclerViewExpandingAccessibilityDelegate;->delegate:Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
