.class final Lcom/android/systemui/shared/clocks/DefaultClockController$config$2;
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
.field final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$config$2;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    new-instance v9, Lcom/android/systemui/plugins/clocks/ClockConfig;

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$config$2;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object v0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController;->resources:Landroid/content/res/Resources;

    const v1, 0x7f1303a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$config$2;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->resources:Landroid/content/res/Resources;

    const v0, 0x7f1303a8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "DEFAULT"

    const/4 v4, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/plugins/clocks/ClockConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method
