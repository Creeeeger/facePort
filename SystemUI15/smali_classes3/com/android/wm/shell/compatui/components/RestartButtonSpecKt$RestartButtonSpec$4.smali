.class final Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$4;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$4;-><init>()V

    sput-object v0, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$4;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    check-cast p3, Lcom/android/wm/shell/compatui/api/CompatUISharedState;

    invoke-static {p4}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0a0b6f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
