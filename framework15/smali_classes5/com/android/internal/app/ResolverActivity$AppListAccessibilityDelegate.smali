.class public Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListAccessibilityDelegate"
.end annotation


# instance fields
.field private final blacklist mBottomBar:Landroid/view/View;

.field private final blacklist mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private final blacklist mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    const v1, 0x102023f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mBottomBar:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const v2, 0x8000

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mBottomBar:Landroid/view/View;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mBottomBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    if-gt v5, v1, :cond_1

    if-le v2, v6, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    :cond_2
    return v0
.end method
