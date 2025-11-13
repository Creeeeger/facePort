.class final Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$2$summaryContentDescription$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $foregroundUsage$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$2$summaryContentDescription$1;->$foregroundUsage$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageSummaryController$Content$1$2$summaryContentDescription$1;->$foregroundUsage$delegate:Landroidx/compose/runtime/State;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsageSummaryController;->access$Content$lambda$6$lambda$4(Landroidx/compose/runtime/State;)Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settings/datausage/lib/DataUsageFormatter$FormattedDataUsage;->contentDescription:Ljava/lang/String;

    return-object p0
.end method
