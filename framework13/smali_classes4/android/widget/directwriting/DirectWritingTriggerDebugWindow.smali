.class Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;
.super Ljava/lang/Object;
.source "DirectWritingTriggerDebugView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/directwriting/DirectWritingTriggerDebugWindow$Singleton;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "[DirectWritingTriggerDebug]"

.field private static final blacklist TYPE_WINDOW_OVERLAY:I = 0x3ea


# instance fields
.field private blacklist mView:Landroid/widget/directwriting/DirectWritingTriggerDebugView;

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;
    .locals 1

    .line 42
    invoke-static {}, Landroid/widget/directwriting/DirectWritingTriggerDebugWindow$Singleton;->-$$Nest$sfgetinstance()Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist attach(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 46
    .local p2, "triggerRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public blacklist detach()V
    .locals 0

    .line 89
    return-void
.end method
