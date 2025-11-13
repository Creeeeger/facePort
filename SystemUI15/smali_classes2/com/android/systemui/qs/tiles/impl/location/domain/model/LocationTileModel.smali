.class public final Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isEnabled:Z


# direct methods
.method private synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;->isEnabled:Z

    return-void
.end method

.method public static final synthetic box-impl(Z)Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;->isEnabled:Z

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;->isEnabled:Z

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;->isEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationTileModel(isEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;->isEnabled:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
