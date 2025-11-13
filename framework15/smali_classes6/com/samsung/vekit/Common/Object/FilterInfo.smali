.class public Lcom/samsung/vekit/Common/Object/FilterInfo;
.super Ljava/lang/Object;
.source "FilterInfo.java"


# instance fields
.field private blacklist filter:Lcom/samsung/vekit/Common/Object/Filter;

.field private blacklist filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

.field private blacklist intensity:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    new-instance v0, Lcom/samsung/vekit/Common/Object/FilterOption;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/FilterOption;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/Filter;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    iput p2, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    new-instance v0, Lcom/samsung/vekit/Common/Object/FilterOption;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/FilterOption;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/Object/Filter;FLcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    iput p2, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-void
.end method


# virtual methods
.method public blacklist getFilter()Lcom/samsung/vekit/Common/Object/Filter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-object v0
.end method

.method public blacklist getFilterOption()Lcom/samsung/vekit/Common/Object/FilterOption;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-object v0
.end method

.method public blacklist getIntensity()F
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    return v0
.end method

.method public blacklist setFilter(Lcom/samsung/vekit/Common/Object/Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-void
.end method

.method public blacklist setFilterOption(Lcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-void
.end method

.method public blacklist setIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/vekit/Common/Object/FilterInfo;->intensity:F

    return-void
.end method
