.class public final synthetic Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic f$0:Landroid/location/Geocoder;

.field public final synthetic f$1:D

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Landroid/location/Geocoder;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;->f$0:Landroid/location/Geocoder;

    iput-wide p2, p0, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;->f$1:D

    iput-wide p4, p0, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;->f$2:D

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;->f$0:Landroid/location/Geocoder;

    check-cast p1, Ljava/lang/String;

    iget-wide v1, p0, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;->f$1:D

    iget-wide v3, p0, Lcom/samsung/android/settings/theftprotection/utils/GetAddressRequest$$ExternalSyntheticLambda0;->f$2:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_2
    return-object p1
.end method
