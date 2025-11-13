.class public final enum Lcom/android/systemui/statusbar/data/model/StatusBarMode;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/data/model/StatusBarMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/data/model/StatusBarMode;

.field public static final enum LIGHTS_OUT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

.field public static final enum LIGHTS_OUT_TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

.field public static final enum OPAQUE:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

.field public static final enum SEMI_TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

.field public static final enum TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    const-string v1, "SEMI_TRANSPARENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/data/model/StatusBarMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->SEMI_TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    new-instance v1, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    const-string v2, "LIGHTS_OUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/data/model/StatusBarMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->LIGHTS_OUT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    new-instance v2, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    const-string v3, "LIGHTS_OUT_TRANSPARENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/data/model/StatusBarMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->LIGHTS_OUT_TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    new-instance v3, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    const-string v4, "OPAQUE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/data/model/StatusBarMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->OPAQUE:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    new-instance v4, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    const-string v5, "TRANSPARENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/data/model/StatusBarMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->TRANSPARENT:Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->$VALUES:[Lcom/android/systemui/statusbar/data/model/StatusBarMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/data/model/StatusBarMode;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/data/model/StatusBarMode;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/data/model/StatusBarMode;->$VALUES:[Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/data/model/StatusBarMode;

    return-object v0
.end method


# virtual methods
.method public final toTransitionModeInt()I
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/data/model/StatusBarMode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method
