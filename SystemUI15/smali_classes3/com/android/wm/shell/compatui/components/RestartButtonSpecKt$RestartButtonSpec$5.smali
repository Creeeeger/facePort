.class final Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$5;
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
.field public static final INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$5;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$5;-><init>()V

    sput-object v0, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$5;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$5;

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

    new-instance p0, Landroid/graphics/Point;

    const/16 p1, 0x1f4

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method
