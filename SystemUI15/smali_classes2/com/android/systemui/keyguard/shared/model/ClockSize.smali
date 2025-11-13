.class public final enum Lcom/android/systemui/keyguard/shared/model/ClockSize;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/shared/model/ClockSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/model/ClockSize;

.field public static final enum LARGE:Lcom/android/systemui/keyguard/shared/model/ClockSize;

.field public static final enum SMALL:Lcom/android/systemui/keyguard/shared/model/ClockSize;


# instance fields
.field private final legacyValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/ClockSize;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/keyguard/shared/model/ClockSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/ClockSize;->SMALL:Lcom/android/systemui/keyguard/shared/model/ClockSize;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/ClockSize;

    const-string v4, "LARGE"

    invoke-direct {v1, v4, v3, v2}, Lcom/android/systemui/keyguard/shared/model/ClockSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/keyguard/shared/model/ClockSize;->LARGE:Lcom/android/systemui/keyguard/shared/model/ClockSize;

    filled-new-array {v0, v1}, [Lcom/android/systemui/keyguard/shared/model/ClockSize;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/ClockSize;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/ClockSize;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/ClockSize$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/shared/model/ClockSize$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/keyguard/shared/model/ClockSize;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    iput p3, p0, Lcom/android/systemui/keyguard/shared/model/ClockSize;->legacyValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/model/ClockSize;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/shared/model/ClockSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/shared/model/ClockSize;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/model/ClockSize;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/ClockSize;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/ClockSize;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/shared/model/ClockSize;

    return-object v0
.end method
