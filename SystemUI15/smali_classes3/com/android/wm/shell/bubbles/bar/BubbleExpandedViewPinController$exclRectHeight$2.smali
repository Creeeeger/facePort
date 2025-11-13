.class final Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$exclRectHeight$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$exclRectHeight$2;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController$exclRectHeight$2;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleExpandedViewPinController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07014a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
