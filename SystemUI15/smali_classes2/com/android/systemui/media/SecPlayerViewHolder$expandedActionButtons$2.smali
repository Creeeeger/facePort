.class final Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;
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


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;

    invoke-direct {v0}, Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;->INSTANCE:Lcom/android/systemui/media/SecPlayerViewHolder$expandedActionButtons$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method
