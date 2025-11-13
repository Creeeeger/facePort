.class public final Landroidx/compose/ui/input/InputMode;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/input/InputMode$Companion;

.field public static final Keyboard:I

.field public static final Touch:I


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/InputMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/InputMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/input/InputMode;->Companion:Landroidx/compose/ui/input/InputMode$Companion;

    const/4 v0, 0x1

    sput v0, Landroidx/compose/ui/input/InputMode;->Touch:I

    const/4 v0, 0x2

    sput v0, Landroidx/compose/ui/input/InputMode;->Keyboard:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/input/InputMode;->value:I

    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/input/InputMode;
    .locals 1

    new-instance v0, Landroidx/compose/ui/input/InputMode;

    invoke-direct {v0, p0}, Landroidx/compose/ui/input/InputMode;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/input/InputMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/input/InputMode;

    iget p1, p1, Landroidx/compose/ui/input/InputMode;->value:I

    iget p0, p0, Landroidx/compose/ui/input/InputMode;->value:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/input/InputMode;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/input/InputMode;->Touch:I

    iget p0, p0, Landroidx/compose/ui/input/InputMode;->value:I

    if-ne p0, v0, :cond_0

    const-string p0, "Touch"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/input/InputMode;->Keyboard:I

    if-ne p0, v0, :cond_1

    const-string p0, "Keyboard"

    goto :goto_0

    :cond_1
    const-string p0, "Error"

    :goto_0
    return-object p0
.end method
