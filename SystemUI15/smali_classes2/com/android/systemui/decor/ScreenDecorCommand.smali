.class public final Lcom/android/systemui/decor/ScreenDecorCommand;
.super Lcom/android/systemui/statusbar/commandline/ParseableCommand;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final callback:Lcom/android/systemui/decor/ScreenDecorCommand$Callback;

.field public final cameraProtection$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

.field public final color$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

.field public final debug$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

.field public final hwcDebugTransparentRegion$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

.field public final roundedBottom$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

.field public final roundedTop$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/android/systemui/decor/ScreenDecorCommand;

    const-string v2, "debug"

    const-string v3, "getDebug()Ljava/lang/Boolean;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v5, "color"

    const-string v6, "getColor()Ljava/lang/Integer;"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v6, "hwcDebugTransparentRegion"

    const-string v7, "getHwcDebugTransparentRegion()Ljava/lang/Boolean;"

    invoke-direct {v5, v1, v6, v7, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v7, "roundedTop"

    const-string v8, "getRoundedTop()Lcom/android/systemui/decor/RoundedCornerSubCommand;"

    invoke-direct {v6, v1, v7, v8, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v8, "roundedBottom"

    const-string v9, "getRoundedBottom()Lcom/android/systemui/decor/RoundedCornerSubCommand;"

    invoke-direct {v7, v1, v8, v9, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v9, "cameraProtection"

    const-string v10, "getCameraProtection()Lcom/android/systemui/decor/CameraProtectionSubCommand;"

    invoke-direct {v8, v1, v9, v10, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    filled-new-array/range {v0 .. v5}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/decor/ScreenDecorCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/decor/ScreenDecorCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/decor/ScreenDecorCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/decor/ScreenDecorCommand$Callback;)V
    .locals 4

    const/4 v0, 0x2

    const-string/jumbo v1, "screen-decor"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->callback:Lcom/android/systemui/decor/ScreenDecorCommand$Callback;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->INSTANCE:Lcom/android/systemui/statusbar/commandline/Type;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->Boolean:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;

    const-string v0, "debug"

    const-string v1, "Enter or exits debug mode. Effectively makes the corners visible and allows for overriding the path data for the anti-aliasing corner paths and display cutout."

    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->debug$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    sget-object v0, Lcom/android/systemui/statusbar/commandline/Type;->String:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseString$1;

    new-instance v1, Lcom/android/systemui/decor/ScreenDecorCommand$special$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/decor/ScreenDecorCommand$special$$inlined$map$1;-><init>(Lcom/android/systemui/statusbar/commandline/ValueParser;)V

    const-string v0, "c"

    const-string v2, "Set a specific color for the debug assets. See Color#parseString() for accepted inputs."

    const-string v3, "color"

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->color$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    const-string/jumbo v0, "t"

    const-string v1, "Draw rectangle on transparent region of HWC layer"

    const-string/jumbo v2, "transparent-region"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->hwcDebugTransparentRegion$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    new-instance p1, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    const-string/jumbo v0, "rounded-top"

    invoke-direct {p1, v0}, Lcom/android/systemui/decor/RoundedCornerSubCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->subCommand(Lcom/android/systemui/statusbar/commandline/ParseableCommand;)Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->roundedTop$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    new-instance p1, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    const-string/jumbo v0, "rounded-bottom"

    invoke-direct {p1, v0}, Lcom/android/systemui/decor/RoundedCornerSubCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->subCommand(Lcom/android/systemui/statusbar/commandline/ParseableCommand;)Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->roundedBottom$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    new-instance p1, Lcom/android/systemui/decor/CameraProtectionSubCommand;

    const-string v0, "camera-protection"

    invoke-direct {p1, v0}, Lcom/android/systemui/decor/CameraProtectionSubCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->subCommand(Lcom/android/systemui/statusbar/commandline/ParseableCommand;)Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->cameraProtection$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->callback:Lcom/android/systemui/decor/ScreenDecorCommand$Callback;

    check-cast p1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->onExecute(Lcom/android/systemui/decor/ScreenDecorCommand;)V

    return-void
.end method

.method public final getCameraProtection()Lcom/android/systemui/decor/CameraProtectionSubCommand;
    .locals 2

    sget-object v0, Lcom/android/systemui/decor/ScreenDecorCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->cameraProtection$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->isPresent:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lcom/android/systemui/decor/CameraProtectionSubCommand;

    return-object p0
.end method

.method public final getColor()Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/android/systemui/decor/ScreenDecorCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->color$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/decor/ScreenDecorCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v0, v1, v0

    iget-object v0, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->debug$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/systemui/decor/ScreenDecorCommand;->getColor()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    iget-object v3, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->hwcDebugTransparentRegion$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/systemui/decor/ScreenDecorCommand;->getCameraProtection()Lcom/android/systemui/decor/CameraProtectionSubCommand;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    iget-object v5, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->roundedTop$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->isPresent:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    check-cast v5, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    const/4 v6, 0x4

    aget-object v1, v1, v6

    iget-object p0, p0, Lcom/android/systemui/decor/ScreenDecorCommand;->roundedBottom$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->isPresent:Z

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    :cond_1
    check-cast v7, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenDecorCommand(debug="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", color="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", transparentRegion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cameraProtection="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", roundedTop="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", roundedBottom="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
