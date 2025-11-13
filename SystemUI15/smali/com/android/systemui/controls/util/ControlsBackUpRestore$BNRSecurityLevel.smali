.class public final enum Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

.field public static final Companion:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel$Companion;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    const-string v2, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1}, [Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->$VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->Companion:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel$Companion;

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

    iput p3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;
    .locals 1

    const-class v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;
    .locals 1

    sget-object v0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->$VALUES:[Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->value:I

    return p0
.end method
