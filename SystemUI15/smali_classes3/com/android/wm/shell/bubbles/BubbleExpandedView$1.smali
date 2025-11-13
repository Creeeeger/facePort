.class public final Lcom/android/wm/shell/bubbles/BubbleExpandedView$1;
.super Landroid/util/IntProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iget p0, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    iput p2, p1, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mBottomClip:I

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->onContainerClipUpdate()V

    return-void
.end method
