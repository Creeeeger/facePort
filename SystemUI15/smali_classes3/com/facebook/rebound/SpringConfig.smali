.class public final Lcom/facebook/rebound/SpringConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final defaultConfig:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field public friction:D

.field public tension:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    invoke-static {v1, v2}, Lcom/facebook/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    invoke-static {v3, v4}, Lcom/facebook/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    sput-object v0, Lcom/facebook/rebound/SpringConfig;->defaultConfig:Lcom/facebook/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/rebound/SpringConfig;->tension:D

    iput-wide p3, p0, Lcom/facebook/rebound/SpringConfig;->friction:D

    return-void
.end method
