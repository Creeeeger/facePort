.class public final Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mReady:Z

.field public final mTile:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mReady:Z

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TilePair;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    return-void
.end method
