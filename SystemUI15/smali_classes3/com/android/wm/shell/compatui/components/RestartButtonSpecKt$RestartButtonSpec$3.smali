.class final Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$3;

    invoke-direct {v0}, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$3;-><init>()V

    sput-object v0, Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$3;->INSTANCE:Lcom/android/wm/shell/compatui/components/RestartButtonSpecKt$RestartButtonSpec$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/android/wm/shell/compatui/api/CompatUIInfo;

    invoke-static {p3}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d009b

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
