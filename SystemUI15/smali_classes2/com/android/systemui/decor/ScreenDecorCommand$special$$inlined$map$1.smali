.class public final Lcom/android/systemui/decor/ScreenDecorCommand$special$$inlined$map$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/ValueParser;


# instance fields
.field public final synthetic $this_map:Lcom/android/systemui/statusbar/commandline/ValueParser;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/ValueParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/decor/ScreenDecorCommand$special$$inlined$map$1;->$this_map:Lcom/android/systemui/statusbar/commandline/ValueParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseValue-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/decor/ScreenDecorCommand$special$$inlined$map$1;->$this_map:Lcom/android/systemui/statusbar/commandline/ValueParser;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/commandline/ValueParser;->parseValue-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    instance-of v0, p0, Lkotlin/Result$Failure;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    goto :goto_2

    :cond_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    new-instance p0, Lcom/android/systemui/statusbar/commandline/ArgParseError;

    const-string v0, "Failed to transform value "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/commandline/ArgParseError;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    move-object p0, p1

    :goto_2
    return-object p0
.end method
