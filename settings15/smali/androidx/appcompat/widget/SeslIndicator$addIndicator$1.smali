.class public final Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $dot:Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

.field public final synthetic this$0:Landroidx/appcompat/widget/SeslIndicator;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslIndicator;Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;->this$0:Landroidx/appcompat/widget/SeslIndicator;

    iput-object p2, p0, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;->$dot:Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;->this$0:Landroidx/appcompat/widget/SeslIndicator;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;->this$0:Landroidx/appcompat/widget/SeslIndicator;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;->$dot:Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslIndicator$addIndicator$1;->this$0:Landroidx/appcompat/widget/SeslIndicator;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f142ac4

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
