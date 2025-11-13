.class public final Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/ValueParser;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;->INSTANCE:Lcom/android/systemui/statusbar/commandline/ValueParserKt$parseBoolean$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseValue-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    goto :goto_0

    :cond_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    new-instance p0, Lcom/android/systemui/statusbar/commandline/ArgParseError;

    const-string v0, "Failed to parse "

    const-string v1, " as a boolean"

    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/commandline/ArgParseError;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method
