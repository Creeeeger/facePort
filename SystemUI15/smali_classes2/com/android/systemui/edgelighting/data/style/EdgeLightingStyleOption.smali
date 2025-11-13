.class public final enum Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum EFFECT:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

.field public static final enum WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;


# instance fields
.field private mIconResID:I

.field private mTitleID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const v1, 0x7f13059d

    const v2, 0x7f080789

    const-string v3, "EFFECT"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->EFFECT:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    new-instance v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const v2, 0x7f130588

    const v3, 0x7f080787

    const-string v4, "COLOR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    new-instance v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const v3, 0x7f1305ba

    const v4, 0x7f08078a

    const-string v5, "TRANSPARENCY"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const v4, 0x7f13058a

    const v5, 0x7f080788

    const-string v6, "WIDTH"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    new-instance v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const v5, 0x7f130589

    const v6, 0x7f080786

    const-string v7, "DURATION"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->$VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mIconResID:I

    iput p3, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mTitleID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;
    .locals 1

    sget-object v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->$VALUES:[Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-virtual {v0}, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    return-object v0
.end method


# virtual methods
.method public final getTitleStringID()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->mTitleID:I

    return p0
.end method
