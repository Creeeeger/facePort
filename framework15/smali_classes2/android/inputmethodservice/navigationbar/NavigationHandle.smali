.class public Landroid/inputmethodservice/navigationbar/NavigationHandle;
.super Landroid/view/View;
.source "NavigationHandle.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationHandle;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDarkIntensity(F)V
    .locals 0

    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .locals 0

    return-void
.end method

.method public blacklist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
