.class public final enum Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

.field public static final enum UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    const-string v1, "UPDATE_DIM_STATUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->UPDATE_DIM_STATUS:Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    filled-new-array {v0}, [Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->$VALUES:[Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;
    .locals 1

    const-class v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;
    .locals 1

    sget-object v0, Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;->$VALUES:[Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/controls/management/adapter/Holder$UpdateReq;

    return-object v0
.end method
