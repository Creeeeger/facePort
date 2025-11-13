.class public final Lcom/android/systemui/BottomMarginCommand;
.super Lcom/android/systemui/statusbar/commandline/ParseableCommand;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/android/systemui/BottomMarginCommand$Companion;

.field public static final ROTATION_DEGREES_OPTIONS:Ljava/util/Set;

.field public static final ROTATION_DEGREES_TO_VALUE_MAPPING:Ljava/util/Map;


# instance fields
.field public final marginBottomDp$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

.field public final rotationDegrees$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/android/systemui/BottomMarginCommand;

    const-string v2, "rotationDegrees"

    const-string v3, "getRotationDegrees()Ljava/lang/Integer;"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v6, "marginBottomDp"

    const-string v7, "getMarginBottomDp()Ljava/lang/Float;"

    invoke-direct {v3, v1, v6, v7, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, v3}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BottomMarginCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/BottomMarginCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/BottomMarginCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/BottomMarginCommand;->Companion:Lcom/android/systemui/BottomMarginCommand$Companion;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v5, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v3, v4, v5}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BottomMarginCommand;->ROTATION_DEGREES_TO_VALUE_MAPPING:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BottomMarginCommand;->ROTATION_DEGREES_OPTIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x2

    const-string v1, "bottom-margin"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v2}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/statusbar/commandline/Type;->INSTANCE:Lcom/android/systemui/statusbar/commandline/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/commandline/Type;->Int:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseInt$1;

    const-string v1, "r"

    const-string v2, "For which rotation the margin should be set. One of 0, 90, 180, 270"

    const-string v3, "rotation"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/BottomMarginCommand;->rotationDegrees$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    sget-object v0, Lcom/android/systemui/statusbar/commandline/Type;->Float:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseFloat$1;

    const-string v1, "m"

    const-string v2, "Margin amount, in dp. Can be a fractional value, such as 10.5"

    const-string v3, "margin"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->param(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/commandline/ValueParser;)Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/BottomMarginCommand;->marginBottomDp$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method
