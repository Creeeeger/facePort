.class public final Lcom/android/wm/shell/windowdecor/SplitCaptionButtonPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMenuAnimation()Ljava/lang/Runnable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVisibleButtonCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final setupButtons(Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;Z)V
    .locals 0

    const p0, 0x7f0a0226

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;->setAllButtonListenersAndColor(Landroid/view/ViewGroup;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;)V

    return-void
.end method
