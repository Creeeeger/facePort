.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final slotByName:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1040ec1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1040edb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1040ef0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1040ed0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;->AIRPLANE:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;->MOBILE:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;->WIFI:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;->ETHERNET:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlot;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v3, v1, v2}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;->slotByName:Ljava/util/Map;

    return-void
.end method
