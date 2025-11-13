.class public final enum Lcom/android/systemui/util/AnimHelper$AnimationState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/util/AnimHelper$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/android/systemui/util/AnimHelper$AnimationState;

.field public static final enum HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

.field public static final enum NONE:Lcom/android/systemui/util/AnimHelper$AnimationState;

.field public static final enum SHOWING:Lcom/android/systemui/util/AnimHelper$AnimationState;


# direct methods
.method private static final synthetic $values()[Lcom/android/systemui/util/AnimHelper$AnimationState;
    .locals 3

    sget-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->NONE:Lcom/android/systemui/util/AnimHelper$AnimationState;

    sget-object v1, Lcom/android/systemui/util/AnimHelper$AnimationState;->SHOWING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    sget-object v2, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/util/AnimHelper$AnimationState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/util/AnimHelper$AnimationState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/AnimHelper$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->NONE:Lcom/android/systemui/util/AnimHelper$AnimationState;

    new-instance v0, Lcom/android/systemui/util/AnimHelper$AnimationState;

    const-string v1, "SHOWING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/AnimHelper$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->SHOWING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    new-instance v0, Lcom/android/systemui/util/AnimHelper$AnimationState;

    const-string v1, "HIDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/util/AnimHelper$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {}, Lcom/android/systemui/util/AnimHelper$AnimationState;->$values()[Lcom/android/systemui/util/AnimHelper$AnimationState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->$VALUES:[Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/util/AnimHelper$AnimationState;
    .locals 1

    const-class v0, Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/AnimHelper$AnimationState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/util/AnimHelper$AnimationState;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->$VALUES:[Lcom/android/systemui/util/AnimHelper$AnimationState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/util/AnimHelper$AnimationState;

    return-object v0
.end method
