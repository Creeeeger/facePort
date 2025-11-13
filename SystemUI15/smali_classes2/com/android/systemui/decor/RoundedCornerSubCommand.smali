.class public final Lcom/android/systemui/decor/RoundedCornerSubCommand;
.super Lcom/android/systemui/statusbar/commandline/ParseableCommand;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final height$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

.field public final pathData$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

.field public final viewportHeight$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

.field public final viewportWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

.field public final width$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    const-string v2, "height"

    const-string v3, "getHeight()I"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v5, "width"

    const-string v6, "getWidth()I"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v6, "pathData"

    const-string v7, "getPathData()Landroid/graphics/Path;"

    invoke-direct {v5, v1, v6, v7, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v7, "viewportHeight"

    const-string v8, "getViewportHeight()Ljava/lang/Float;"

    invoke-direct {v6, v1, v7, v8, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v8, "viewportWidth"

    const-string v9, "getViewportWidth()Ljava/lang/Float;"

    invoke-direct {v7, v1, v8, v9, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, v3, v5, v6, v7}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->INSTANCE:Lcom/android/systemui/statusbar/commandline/Type;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->Int:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseInt$1;

    const-string v0, "height"

    const-string v2, "The height of a corner, in pixels."

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->required(Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;)Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->height$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    const-string/jumbo v0, "width"

    const-string v2, "The width of the corner, in pixels. Likely should be equal to the height."

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->required(Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;)Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->width$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->String:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseString$1;

    new-instance v0, Lcom/android/systemui/decor/RoundedCornerSubCommand$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/decor/RoundedCornerSubCommand$special$$inlined$map$1;-><init>(Lcom/android/systemui/statusbar/commandline/ValueParser;)V

    const-string p1, "d"

    const-string v2, "PathParser-compatible path string to be rendered as the corner drawable. This path should be a closed arc oriented as the top-left corner of the device"

    const-string v3, "path-data"

    invoke-virtual {p0, v3, p1, v2, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->required(Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;)Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->pathData$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->Float:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseFloat$1;

    const-string/jumbo v0, "viewport-height"

    const-string v2, "The height of the viewport for the given path string. If null, the corner height will be used."

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->viewportHeight$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    const-string/jumbo v0, "viewport-width"

    const-string v2, "The width of the viewport for the given path string. If null, the corner width will be used."

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->viewportWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public final toRoundedCornerDebugModel()Lcom/android/systemui/decor/DebugRoundedCornerModel;
    .locals 11

    new-instance v6, Lcom/android/systemui/decor/DebugRoundedCornerModel;

    const/4 v0, 0x2

    sget-object v1, Lcom/android/systemui/decor/RoundedCornerSubCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v0, v1, v0

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->pathData$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/Path;

    const/4 v0, 0x1

    aget-object v3, v1, v0

    iget-object v3, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->width$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x0

    aget-object v7, v1, v5

    iget-object v7, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->height$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    const/4 v9, 0x4

    aget-object v9, v1, v9

    iget-object v9, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->viewportWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    aget-object v0, v1, v0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    const/4 v0, 0x3

    aget-object v0, v1, v0

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->viewportHeight$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    aget-object v0, v1, v5

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p0

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    move-object v0, v6

    move-object v1, v2

    move v2, v4

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/decor/DebugRoundedCornerModel;-><init>(Landroid/graphics/Path;IIFF)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/decor/RoundedCornerSubCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v0, v1, v0

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->height$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    iget-object v2, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->width$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    iget-object v3, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->pathData$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParam;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/commandline/SingleArgParam;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    const/4 v4, 0x3

    aget-object v4, v1, v4

    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->viewportHeight$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    const/4 v5, 0x4

    aget-object v1, v1, v5

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerSubCommand;->viewportWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    const-string v1, "RoundedCornerSubCommand(height="

    const-string v5, ", width="

    const-string v6, ", pathData=\'"

    invoke-static {v0, v2, v1, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', viewportHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewportWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
