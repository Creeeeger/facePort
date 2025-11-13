.class final Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection$emptyView$2;
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
.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection$emptyView$2;->this$0:Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection$emptyView$2;->this$0:Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p0, 0x7f0a0219

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method
