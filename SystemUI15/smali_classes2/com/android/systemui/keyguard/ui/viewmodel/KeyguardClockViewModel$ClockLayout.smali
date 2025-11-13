.class public final enum Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

.field public static final enum LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

.field public static final enum SMALL_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

.field public static final enum SPLIT_SHADE_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

.field public static final enum SPLIT_SHADE_SMALL_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

.field public static final enum SPLIT_SHADE_WEATHER_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

.field public static final enum WEATHER_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    const-string v1, "LARGE_CLOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    const-string v2, "SMALL_CLOCK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SMALL_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    const-string v3, "SPLIT_SHADE_LARGE_CLOCK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SPLIT_SHADE_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    const-string v4, "SPLIT_SHADE_SMALL_CLOCK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SPLIT_SHADE_SMALL_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    new-instance v4, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    const-string v5, "WEATHER_LARGE_CLOCK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->WEATHER_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    new-instance v5, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    const-string v6, "SPLIT_SHADE_WEATHER_LARGE_CLOCK"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->SPLIT_SHADE_WEATHER_LARGE_CLOCK:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    filled-new-array/range {v0 .. v5}, [Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->$VALUES:[Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;
    .locals 1

    const-class v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;->$VALUES:[Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel$ClockLayout;

    return-object v0
.end method
