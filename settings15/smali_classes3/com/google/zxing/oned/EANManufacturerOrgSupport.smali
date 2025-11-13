.class public final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final countryIdentifiers:Ljava/util/List;

.field public final ranges:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
