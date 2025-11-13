.class final synthetic Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$toStore$2;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$toStore$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$toStore$2;

    invoke-direct {v0}, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$toStore$2;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$toStore$2;->INSTANCE:Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$storeTiles$toStore$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "getSpec()Ljava/lang/String;"

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    const-string/jumbo v3, "spec"

    invoke-direct {p0, v2, v3, v0, v1}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {p1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
