.class public final Lcom/android/app/viewcapture/data/ExportedData$MagicNumber$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    if-eqz p1, :cond_2

    const p0, 0x65906578

    if-eq p1, p0, :cond_1

    const p0, 0x68658273

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->INVALID:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->MAGIC_NUMBER_H:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->MAGIC_NUMBER_L:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->INVALID:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    :goto_0
    return-object p0
.end method
