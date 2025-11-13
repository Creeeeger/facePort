.class public final Lcom/android/systemui/decor/CameraProtectionSubCommand;
.super Lcom/android/systemui/statusbar/commandline/ParseableCommand;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final enabled$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

.field public final strokeWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/android/systemui/decor/CameraProtectionSubCommand;

    const-string v2, "enabled"

    const-string v3, "getEnabled()Ljava/lang/Boolean;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v5, "strokeWidth"

    const-string v6, "getStrokeWidth()Ljava/lang/Integer;"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, v3}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/decor/CameraProtectionSubCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->INSTANCE:Lcom/android/systemui/statusbar/commandline/Type;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->Boolean:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;

    const-string v0, "e"

    const-string v1, "The circle drawn around camera hole to prevent light leakage from front camera"

    const-string v2, "enabled"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/CameraProtectionSubCommand;->enabled$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    sget-object p1, Lcom/android/systemui/statusbar/commandline/Type;->Int:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseInt$1;

    const-string/jumbo v0, "w"

    const-string v1, "Thickness of camera protection (unit: pixel)"

    const-string/jumbo v2, "stroke-width"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/CameraProtectionSubCommand;->strokeWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/systemui/decor/CameraProtectionSubCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v0, v1, v0

    iget-object v0, p0, Lcom/android/systemui/decor/CameraProtectionSubCommand;->enabled$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object p0, p0, Lcom/android/systemui/decor/CameraProtectionSubCommand;->strokeWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraProtectionSubCommand( enabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", strokeWidth="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
