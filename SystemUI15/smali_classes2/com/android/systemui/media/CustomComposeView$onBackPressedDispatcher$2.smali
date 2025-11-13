.class final Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2;
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
.field final synthetic this$0:Lcom/android/systemui/media/CustomComposeView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/CustomComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2;->this$0:Lcom/android/systemui/media/CustomComposeView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    sget-object v1, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$1;->INSTANCE:Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$1;

    sget-object v2, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$2;->INSTANCE:Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2$2;

    invoke-direct {v0, v1, v2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;Landroidx/core/util/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2;->this$0:Lcom/android/systemui/media/CustomComposeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/activity/OnBackPressedDispatcher;->setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    :goto_0
    return-object v0
.end method
