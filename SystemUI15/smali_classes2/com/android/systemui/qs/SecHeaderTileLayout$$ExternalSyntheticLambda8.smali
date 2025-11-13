.class public final synthetic Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecHeaderTileLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecHeaderTileLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/qs/SecHeaderTileLayout;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/SecHeaderTileLayout$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/qs/SecHeaderTileLayout;

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginVertical:I

    int-to-float p0, p0

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    float-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
