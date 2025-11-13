.class final Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance p1, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;

    iget-object v1, p0, Lcom/android/systemui/keyboard/backlight/ui/KeyboardBacklightDialogCoordinatorKt$defaultCreateDialog$1;->$context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog;-><init>(Landroid/content/Context;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
