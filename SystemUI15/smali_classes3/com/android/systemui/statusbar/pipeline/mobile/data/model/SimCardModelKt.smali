.class public abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final NO_SIM_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

.field public static final SIM_OFF_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->OFF:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v2, "OFF STATE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;->SIM_OFF_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->NO_SIM:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    const-string v2, "NO SIM STATE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;->NO_SIM_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    return-void
.end method
