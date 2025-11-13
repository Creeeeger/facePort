.class public final enum Lcom/android/systemui/keyguard/shared/model/KeyguardState;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/shared/model/KeyguardState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final Companion:Lcom/android/systemui/keyguard/shared/model/KeyguardState$Companion;

.field public static final enum DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum DREAMING_LOCKSCREEN_HOSTED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum OFF:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum UNDEFINED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OFF:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v2, "DOZING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v3, "DREAMING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v4, "DREAMING_LOCKSCREEN_HOSTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING_LOCKSCREEN_HOSTED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v5, "AOD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v6, "ALTERNATE_BOUNCER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v7, "PRIMARY_BOUNCER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v8, "LOCKSCREEN"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v9, "GLANCEABLE_HUB"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v9, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v10, "GONE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v10, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v11, "UNDEFINED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->UNDEFINED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v11, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const-string v12, "OCCLUDED"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    filled-new-array/range {v0 .. v11}, [Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/shared/model/KeyguardState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->Companion:Lcom/android/systemui/keyguard/shared/model/KeyguardState$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/model/KeyguardState;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/model/KeyguardState;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    return-object v0
.end method
