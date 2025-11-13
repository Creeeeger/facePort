.class public final Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CellLocationListener;


# instance fields
.field public final callback:Lkotlin/jvm/functions/Function1;

.field public final slotId:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;->slotId:I

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;->callback:Lkotlin/jvm/functions/Function1;

    iget p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;->slotId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
