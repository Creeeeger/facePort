.class Landroid/widget/directwriting/DirectWritingTriggerDebugView;
.super Landroid/widget/FrameLayout;
.source "DirectWritingTriggerDebugView.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "[DirectWritingTriggerDebug]"


# instance fields
.field private final blacklist mTriggerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist paint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->setWillNotDraw(Z)V

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->setBackgroundColor(I)V

    .line 113
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->setStrokePaint()V

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    .line 129
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    .line 133
    return-void
.end method

.method private blacklist setStrokePaint()V
    .locals 2

    .line 117
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist addRect(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 9
    .param p2, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 136
    .local p1, "triggerRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    invoke-static {p2}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 138
    .local v0, "rootRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 139
    .local v1, "rootX":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 140
    .local v2, "rootY":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 141
    .local v4, "rect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 145
    iget-object v5, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v4    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 147
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRect mTriggerRects="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[DirectWritingTriggerDebug]"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDraw mTriggerRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DirectWritingTriggerDebug]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 156
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingTriggerDebugView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 157
    .end local v1    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 159
    return-void
.end method
