.class public final enum Lcom/android/systemui/communal/shared/model/CommunalContentSize;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/communal/shared/model/CommunalContentSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/systemui/communal/shared/model/CommunalContentSize;

.field public static final Companion:Lcom/android/systemui/communal/shared/model/CommunalContentSize$Companion;

.field public static final enum FULL:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

.field public static final enum HALF:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

.field public static final enum THIRD:Lcom/android/systemui/communal/shared/model/CommunalContentSize;


# instance fields
.field private final span:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, "FULL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/communal/shared/model/CommunalContentSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->FULL:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    new-instance v1, Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "HALF"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/communal/shared/model/CommunalContentSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->HALF:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    new-instance v2, Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    const-string v3, "THIRD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/systemui/communal/shared/model/CommunalContentSize;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->THIRD:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->$VALUES:[Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/shared/model/CommunalContentSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->Companion:Lcom/android/systemui/communal/shared/model/CommunalContentSize$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->span:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/communal/shared/model/CommunalContentSize;
    .locals 1

    const-class v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/communal/shared/model/CommunalContentSize;
    .locals 1

    sget-object v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->$VALUES:[Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    return-object v0
.end method


# virtual methods
.method public final getSpan()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->span:I

    return p0
.end method
