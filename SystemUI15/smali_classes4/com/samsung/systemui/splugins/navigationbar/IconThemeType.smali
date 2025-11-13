.class public final enum Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_LARGE_COVER:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

.field public static final enum TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 4

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_LARGE_COVER:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    sget-object v3, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v1, "TYPE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_DEFAULT:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v1, "TYPE_LARGE_COVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_LARGE_COVER:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v1, "TYPE_OPENTHEME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    const-string v1, "TYPE_OPENTHEME_SYSUI"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->TYPE_OPENTHEME_SYSUI:Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-static {}, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->$values()[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 1

    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;
    .locals 1

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/navigationbar/IconThemeType;

    return-object v0
.end method
