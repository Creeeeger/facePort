.class public final enum Lcom/android/systemui/statusbar/notification/logging/ViewType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/logging/ViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/logging/ViewType;

.field public static final enum PRIVATE_CONTRACTED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

.field public static final enum PRIVATE_EXPANDED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

.field public static final enum PRIVATE_HEADS_UP_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

.field public static final enum PUBLIC_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

.field public static final enum TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const-string v1, "PUBLIC_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/logging/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PUBLIC_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    new-instance v1, Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const-string v2, "PRIVATE_CONTRACTED_VIEW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/logging/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_CONTRACTED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    new-instance v2, Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const-string v3, "PRIVATE_EXPANDED_VIEW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/logging/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_EXPANDED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    new-instance v3, Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const-string v4, "PRIVATE_HEADS_UP_VIEW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/logging/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_HEADS_UP_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    new-instance v4, Lcom/android/systemui/statusbar/notification/logging/ViewType;

    const-string v5, "TOTAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/logging/ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/statusbar/notification/logging/ViewType;->TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/statusbar/notification/logging/ViewType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;->$VALUES:[Lcom/android/systemui/statusbar/notification/logging/ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/logging/ViewType;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/logging/ViewType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/logging/ViewType;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/ViewType;->$VALUES:[Lcom/android/systemui/statusbar/notification/logging/ViewType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/logging/ViewType;

    return-object v0
.end method
