.class final Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$4;
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


# instance fields
.field final synthetic $ipw:Landroid/util/IndentingPrintWriter;

.field final synthetic this$0:Lcom/android/systemui/statusbar/commandline/ParseableCommand;


# direct methods
.method public constructor <init>(Landroid/util/IndentingPrintWriter;Lcom/android/systemui/statusbar/commandline/ParseableCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$4;->$ipw:Landroid/util/IndentingPrintWriter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$4;->this$0:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$4;->$ipw:Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand$help$4;->this$0:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/ParseableCommand;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
