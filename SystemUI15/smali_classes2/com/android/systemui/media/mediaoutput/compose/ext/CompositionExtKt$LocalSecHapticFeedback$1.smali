.class final Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSecHapticFeedback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSecHapticFeedback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSecHapticFeedback$1;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSecHapticFeedback$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSecHapticFeedback$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt$LocalSecHapticFeedback$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No SecPlatformHapticFeedback provided"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
