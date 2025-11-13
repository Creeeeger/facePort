.class public final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;-><init>()V

    return-void
.end method

.method public static getParseResponse(Landroid/os/Bundle;)Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;
    .locals 7

    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;->$ENTRIES:Lkotlin/enums/EnumEntries;

    check-cast v0, Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v1, v0}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    :cond_0
    invoke-virtual {v1}, Lkotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lkotlin/collections/AbstractList$IteratorImpl;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;

    invoke-virtual {v4}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;->getValue()I

    move-result v4

    const-string/jumbo v5, "result"

    invoke-virtual {p0, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;->UNKNOWN:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;

    :cond_2
    sget-object v1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->$ENTRIES:Lkotlin/enums/EnumEntries;

    check-cast v1, Lkotlin/collections/AbstractList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lkotlin/collections/AbstractList$IteratorImpl;

    invoke-direct {v4, v1}, Lkotlin/collections/AbstractList$IteratorImpl;-><init>(Lkotlin/collections/AbstractList;)V

    :cond_3
    invoke-virtual {v4}, Lkotlin/collections/AbstractList$IteratorImpl;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lkotlin/collections/AbstractList$IteratorImpl;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    invoke-virtual {v5}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->getValue()I

    move-result v5

    const-string v6, "reason"

    invoke-virtual {p0, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_3

    move-object v2, v1

    :cond_4
    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;->UNKNOWN:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    :cond_5
    new-instance p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;)V

    return-object p0
.end method
