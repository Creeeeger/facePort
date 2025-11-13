.class public final enum Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

.field public static final enum ALT:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

.field public static final enum ALT_GR:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

.field public static final enum CTRL:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

.field public static final enum META:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

.field public static final enum SHIFT:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;


# instance fields
.field private final displayedText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    const/4 v1, 0x0

    const-string v2, "ALT"

    invoke-direct {v0, v2, v1, v2}, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->ALT:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    new-instance v1, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    const-string v3, "ALT_GR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->ALT_GR:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    new-instance v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    const-string v3, "CTRL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->CTRL:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    new-instance v3, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    const/4 v4, 0x3

    const-string v5, "ACTION"

    const-string v6, "META"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->META:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    new-instance v4, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    const-string v5, "SHIFT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->SHIFT:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->$VALUES:[Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->displayedText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;
    .locals 1

    const-class v0, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->$VALUES:[Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    return-object v0
.end method


# virtual methods
.method public final getDisplayedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->displayedText:Ljava/lang/String;

    return-object p0
.end method
