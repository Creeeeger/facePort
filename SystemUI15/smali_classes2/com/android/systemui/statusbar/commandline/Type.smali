.class public final Lcom/android/systemui/statusbar/commandline/Type;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Boolean:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;

.field public static final Float:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseFloat$1;

.field public static final INSTANCE:Lcom/android/systemui/statusbar/commandline/Type;

.field public static final Int:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseInt$1;

.field public static final String:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseString$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/commandline/Type;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/commandline/Type;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/commandline/Type;->INSTANCE:Lcom/android/systemui/statusbar/commandline/Type;

    sget-object v0, Lcom/android/systemui/statusbar/commandline/ValueParserKt;->parseBoolean:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;

    sput-object v0, Lcom/android/systemui/statusbar/commandline/Type;->Boolean:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;

    sget-object v0, Lcom/android/systemui/statusbar/commandline/ValueParserKt;->parseInt:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseInt$1;

    sput-object v0, Lcom/android/systemui/statusbar/commandline/Type;->Int:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseInt$1;

    sget-object v0, Lcom/android/systemui/statusbar/commandline/ValueParserKt;->parseFloat:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseFloat$1;

    sput-object v0, Lcom/android/systemui/statusbar/commandline/Type;->Float:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseFloat$1;

    sget-object v0, Lcom/android/systemui/statusbar/commandline/ValueParserKt;->parseString:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseString$1;

    sput-object v0, Lcom/android/systemui/statusbar/commandline/Type;->String:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseString$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
