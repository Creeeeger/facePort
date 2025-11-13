.class public final synthetic Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/SecHeaderTileLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecHeaderTileLayout;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecHeaderTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecHeaderTileLayout;

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    return p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0

    :pswitch_1
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    return p0

    :pswitch_2
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    return p0

    :pswitch_3
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    return p0

    :pswitch_4
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    return p0

    :pswitch_5
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
