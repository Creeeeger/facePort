.class public final Landroidx/compose/ui/autofill/ContentDataType;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/autofill/ContentDataType$Companion;

.field public static final Date:I

.field public static final List:I

.field public static final Text:I

.field public static final Toggle:I


# instance fields
.field public final dataType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/autofill/ContentDataType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/autofill/ContentDataType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/autofill/ContentDataType;->Companion:Landroidx/compose/ui/autofill/ContentDataType$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->Text:I

    const/4 v0, 0x3

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->List:I

    const/4 v0, 0x4

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->Date:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/autofill/ContentDataType;->Toggle:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/autofill/ContentDataType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/autofill/ContentDataType;

    iget p1, p1, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    iget p0, p0, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentDataType(dataType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
