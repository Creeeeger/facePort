.class public final Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;->allBands:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;->allBands:Ljava/util/List;

    return-object p0
.end method
