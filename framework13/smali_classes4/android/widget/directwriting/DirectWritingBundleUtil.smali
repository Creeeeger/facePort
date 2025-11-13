.class Landroid/widget/directwriting/DirectWritingBundleUtil;
.super Ljava/lang/Object;
.source "DirectWritingBundleUtil.java"


# static fields
.field private static final blacklist KEY_BUNDLE_EDIT_RECT:Ljava/lang/String; = "editRect"

.field private static final blacklist KEY_BUNDLE_EDIT_RECT_RELOCATED:Ljava/lang/String; = "onlyRectChanged"

.field private static final blacklist KEY_BUNDLE_EVENT:Ljava/lang/String; = "event"

.field private static final blacklist KEY_BUNDLE_ROOT_VIEW_RECT:Ljava/lang/String; = "rootViewRect"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildBundle(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/os/Bundle;
    .locals 3
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "rootView"    # Landroid/view/View;

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "event"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    invoke-static {p1}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    const-string/jumbo v2, "rootViewRect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    return-object v0
.end method

.method public static blacklist buildBundle(Landroid/view/MotionEvent;Landroid/widget/directwriting/WritingView;Landroid/view/View;)Landroid/os/Bundle;
    .locals 3
    .param p0, "me"    # Landroid/view/MotionEvent;
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;
    .param p2, "rootView"    # Landroid/view/View;

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "event"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 44
    invoke-static {p1}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnWindow(Landroid/widget/directwriting/WritingView;)Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "editRect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-static {p2}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    const-string/jumbo v2, "rootViewRect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    return-object v0
.end method

.method public static blacklist buildBundle(Landroid/widget/directwriting/WritingView;Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 3
    .param p0, "writingView"    # Landroid/widget/directwriting/WritingView;
    .param p1, "rootViewRect"    # Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p0}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnWindow(Landroid/widget/directwriting/WritingView;)Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "editRect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    const-string/jumbo v1, "rootViewRect"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    return-object v0
.end method

.method public static blacklist buildBundle(Landroid/widget/directwriting/WritingView;Landroid/view/View;)Landroid/os/Bundle;
    .locals 3
    .param p0, "writingView"    # Landroid/widget/directwriting/WritingView;
    .param p1, "rootView"    # Landroid/view/View;

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p0}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnWindow(Landroid/widget/directwriting/WritingView;)Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "editRect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    invoke-static {p1}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    const-string/jumbo v2, "rootViewRect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    return-object v0
.end method

.method public static blacklist buildBundle(Landroid/widget/directwriting/WritingView;Landroid/view/View;Ljava/lang/Boolean;)Landroid/os/Bundle;
    .locals 3
    .param p0, "writingView"    # Landroid/widget/directwriting/WritingView;
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "onlyRectChange"    # Ljava/lang/Boolean;

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v2, "onlyRectChanged"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-static {p0}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnWindow(Landroid/widget/directwriting/WritingView;)Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "editRect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    invoke-static {p1}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    const-string/jumbo v2, "rootViewRect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    return-object v0
.end method

.method static blacklist getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .line 57
    if-nez p0, :cond_0

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 61
    .local v0, "textViewCoordinate":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 62
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 63
    .local v1, "x":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 64
    .local v2, "y":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 65
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 67
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v3

    add-int v7, v2, v4

    invoke-direct {v5, v1, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .local v5, "retRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->semGetTranslatedRectOnScreen(Landroid/graphics/Rect;)V

    .line 70
    return-object v5
.end method

.method static blacklist getRectOnWindow(Landroid/widget/directwriting/WritingView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/directwriting/WritingView;->getGlobalVisibleRect(Landroid/graphics/Rect;)V

    .line 78
    :cond_0
    return-object v0
.end method
