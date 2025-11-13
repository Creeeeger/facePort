.class public final enum Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

.field public static final enum BOTTOM_END:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

.field public static final enum BOTTOM_START:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    const-string v1, "BOTTOM_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->BOTTOM_START:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    new-instance v1, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    const-string v2, "BOTTOM_END"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->BOTTOM_END:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    filled-new-array {v0, v1}, [Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->$VALUES:[Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->$VALUES:[Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    return-object v0
.end method


# virtual methods
.method public final toSlotId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "bottom_end"

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "bottom_start"

    :goto_0
    return-object p0
.end method
