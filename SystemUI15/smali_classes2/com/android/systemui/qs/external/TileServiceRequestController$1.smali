.class final Lcom/android/systemui/qs/external/TileServiceRequestController$1;
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
.field final synthetic $qsHost:Lcom/android/systemui/qs/QSHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$1;->$qsHost:Lcom/android/systemui/qs/QSHost;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/external/TileRequestDialog;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController$1;->$qsHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileRequestDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
