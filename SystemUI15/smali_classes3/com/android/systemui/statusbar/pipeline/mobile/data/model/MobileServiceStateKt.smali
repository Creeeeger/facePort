.class public abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceStateKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_SERVICE_STATE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    new-instance v7, Landroid/telephony/TelephonyDisplayInfo;

    const/16 v0, 0xd

    const/4 v1, 0x2

    invoke-direct {v7, v0, v1}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    const/16 v9, 0x80

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;-><init>(IZIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v11, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceStateKt;->DEFAULT_SERVICE_STATE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    return-void
.end method
