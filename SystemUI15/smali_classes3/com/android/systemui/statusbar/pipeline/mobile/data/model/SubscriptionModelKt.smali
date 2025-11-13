.class public abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModelKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_SUBSCRIPTION_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Dummy Carrier"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;-><init>(IZZLandroid/os/ParcelUuid;Ljava/lang/String;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModelKt;->DEFAULT_SUBSCRIPTION_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionModel;

    return-void
.end method
