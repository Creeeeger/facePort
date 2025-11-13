.class public final enum Landroidx/picker/model/GroupTitleStyleData;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/picker/model/GroupTitleStyleData;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/picker/model/GroupTitleStyleData;

.field public static final enum SOLID:Landroidx/picker/model/GroupTitleStyleData;

.field public static final enum TRANSPARENT:Landroidx/picker/model/GroupTitleStyleData;


# instance fields
.field private final backgroundColorId:I

.field private final textColorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/picker/model/GroupTitleStyleData;

    const v1, 0x7f060562

    const v2, 0x7f060563

    const-string v3, "SOLID"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/picker/model/GroupTitleStyleData;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroidx/picker/model/GroupTitleStyleData;->SOLID:Landroidx/picker/model/GroupTitleStyleData;

    new-instance v1, Landroidx/picker/model/GroupTitleStyleData;

    const v2, 0x7f060564

    const v3, 0x7f060565

    const-string v4, "TRANSPARENT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Landroidx/picker/model/GroupTitleStyleData;-><init>(Ljava/lang/String;III)V

    sput-object v1, Landroidx/picker/model/GroupTitleStyleData;->TRANSPARENT:Landroidx/picker/model/GroupTitleStyleData;

    filled-new-array {v0, v1}, [Landroidx/picker/model/GroupTitleStyleData;

    move-result-object v0

    sput-object v0, Landroidx/picker/model/GroupTitleStyleData;->$VALUES:[Landroidx/picker/model/GroupTitleStyleData;

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

    iput p3, p0, Landroidx/picker/model/GroupTitleStyleData;->backgroundColorId:I

    iput p4, p0, Landroidx/picker/model/GroupTitleStyleData;->textColorId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/picker/model/GroupTitleStyleData;
    .locals 1

    const-class v0, Landroidx/picker/model/GroupTitleStyleData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/GroupTitleStyleData;

    return-object p0
.end method

.method public static values()[Landroidx/picker/model/GroupTitleStyleData;
    .locals 1

    sget-object v0, Landroidx/picker/model/GroupTitleStyleData;->$VALUES:[Landroidx/picker/model/GroupTitleStyleData;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/picker/model/GroupTitleStyleData;

    return-object v0
.end method


# virtual methods
.method public final getBackgroundColorId()I
    .locals 0

    iget p0, p0, Landroidx/picker/model/GroupTitleStyleData;->backgroundColorId:I

    return p0
.end method

.method public final getTextColorId()I
    .locals 0

    iget p0, p0, Landroidx/picker/model/GroupTitleStyleData;->textColorId:I

    return p0
.end method
