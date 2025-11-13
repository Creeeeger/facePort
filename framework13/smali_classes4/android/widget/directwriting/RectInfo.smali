.class Landroid/widget/directwriting/RectInfo;
.super Ljava/lang/Object;
.source "DirectWritingTriggerRectUtils.java"


# instance fields
.field public final blacklist editTextRect:Landroid/graphics/Rect;

.field public final blacklist triggerRect:Landroid/graphics/Rect;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "editTextRect"    # Landroid/graphics/Rect;
    .param p2, "triggerRect"    # Landroid/graphics/Rect;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroid/widget/directwriting/RectInfo;->editTextRect:Landroid/graphics/Rect;

    .line 20
    iput-object p2, p0, Landroid/widget/directwriting/RectInfo;->triggerRect:Landroid/graphics/Rect;

    .line 21
    return-void
.end method
