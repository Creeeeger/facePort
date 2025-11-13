.class final enum Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;


# instance fields
.field private final mLogId:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    const-string v1, "SUBSCREEN_SCREENRECORDER_TILE"

    const/4 v2, 0x0

    const-string v3, "com.samsung.android.app.smartcapture"

    const-string v4, "QPBE2021"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    const-string v2, "SUBSCREEN_MODES_TILE"

    const/4 v3, 0x1

    const-string v4, "com.samsung.android.app.routines"

    const-string v5, "QPBE2022"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->$VALUES:[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->mLogId:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->$VALUES:[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    return-object v0
.end method


# virtual methods
.method public final getLogId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->mLogId:Ljava/lang/String;

    return-object p0
.end method

.method public final hasSamePackageName(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
