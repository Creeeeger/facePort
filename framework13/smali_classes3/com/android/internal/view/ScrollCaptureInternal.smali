.class public Lcom/android/internal/view/ScrollCaptureInternal;
.super Ljava/lang/Object;
.source "ScrollCaptureInternal.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_VERBOSE:Z = false

.field private static final blacklist DOWN:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScrollCaptureInternal"

.field public static final blacklist TYPE_FIXED:I = 0x0

.field private static final blacklist TYPE_OPAQUE:I = 0x3

.field public static final blacklist TYPE_RECYCLING:I = 0x2

.field public static final blacklist TYPE_SCROLLING:I = 0x1

.field private static final blacklist UP:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist detectScrollingType(Landroid/view/View;)I
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    return v2

    .line 89
    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    const/4 v4, 0x3

    if-nez v1, :cond_1

    .line 93
    return v4

    .line 100
    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v0, :cond_2

    .line 104
    return v5

    .line 107
    :cond_2
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 111
    return v4

    .line 117
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    return v0

    .line 123
    :cond_4
    const-string v1, "ScrollCaptureInternal"

    const-string/jumbo v4, "hint: scrollY == 0"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 129
    return v5

    .line 137
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 145
    return v0

    .line 150
    :cond_6
    return v5
.end method

.method private static blacklist formatIntToHexString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist resolveId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 222
    .local v0, "resources":Landroid/content/res/Resources;
    if-ltz p1, :cond_0

    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "fieldValue":Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v1    # "fieldValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->formatIntToHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "fieldValue":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 230
    .end local v1    # "fieldValue":Ljava/lang/String;
    :cond_0
    const-string v1, "NO_ID"

    .line 232
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :goto_1
    return-object v1
.end method


# virtual methods
.method public blacklist requestCallback(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/view/ScrollCaptureCallback;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "localVisibleRect"    # Landroid/graphics/Rect;
    .param p3, "positionInWindow"    # Landroid/graphics/Point;

    .line 170
    invoke-static {p1}, Lcom/android/internal/view/ScrollCaptureInternal;->detectScrollingType(Landroid/view/View;)I

    move-result v0

    .line 171
    .local v0, "i":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 199
    :pswitch_0
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 200
    const-string v1, "ScrollCaptureInternal"

    const-string/jumbo v2, "scroll capture: Using WebView support"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/webkit/WebView;

    new-instance v3, Lcom/android/internal/view/WebViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/WebViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    .line 186
    :pswitch_1
    instance-of v1, p1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 188
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    new-instance v3, Lcom/android/internal/view/ListViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/ListViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    .line 191
    :cond_0
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/internal/view/RecyclerViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/RecyclerViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    .line 178
    :pswitch_2
    new-instance v1, Lcom/android/internal/view/ScrollCaptureViewSupport;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/internal/view/ScrollViewCaptureHelper;

    invoke-direct {v3}, Lcom/android/internal/view/ScrollViewCaptureHelper;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/view/ScrollCaptureViewSupport;-><init>(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper;)V

    return-object v1

    .line 210
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
