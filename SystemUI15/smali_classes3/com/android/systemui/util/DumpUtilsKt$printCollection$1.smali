.class public final synthetic Lcom/android/systemui/util/DumpUtilsKt$printCollection$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/util/DumpUtilsKt$printCollection$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/DumpUtilsKt$printCollection$1;

    invoke-direct {v0}, Lcom/android/systemui/util/DumpUtilsKt$printCollection$1;-><init>()V

    sput-object v0, Lcom/android/systemui/util/DumpUtilsKt$printCollection$1;->INSTANCE:Lcom/android/systemui/util/DumpUtilsKt$printCollection$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Landroid/util/IndentingPrintWriter;

    const-string/jumbo v4, "println(Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-string/jumbo v3, "println"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/DumpUtilsKt$printCollection$1;->invoke(Landroid/util/IndentingPrintWriter;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/util/IndentingPrintWriter;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
