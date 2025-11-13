.class public final enum Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

.field public static final enum LayoutEdit:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

.field public static final enum None:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

.field public static final enum Setting:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

.field public static final enum TileEdit:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    const-string v1, "TileEdit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->TileEdit:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    const-string v2, "LayoutEdit"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->LayoutEdit:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    const-string v3, "Setting"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->Setting:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    new-instance v3, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    const-string v4, "None"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->None:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->$VALUES:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->$VALUES:[Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    return-object v0
.end method
