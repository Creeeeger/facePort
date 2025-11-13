.class public final Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;->this$0:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;

    check-cast p1, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$ArrowDirection;

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable$special$$inlined$observable$1;->this$0:Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BubblePopupDrawable;->shouldUpdatePath:Z

    return-void
.end method
