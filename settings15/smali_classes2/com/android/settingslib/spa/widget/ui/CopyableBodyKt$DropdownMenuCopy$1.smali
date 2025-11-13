.class final Lcom/android/settingslib/spa/widget/ui/CopyableBodyKt$DropdownMenuCopy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $body:Ljava/lang/String;

.field final synthetic $clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

.field final synthetic $onCopy:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/platform/ClipboardManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/ui/CopyableBodyKt$DropdownMenuCopy$1;->$onCopy:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/ui/CopyableBodyKt$DropdownMenuCopy$1;->$clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/ui/CopyableBodyKt$DropdownMenuCopy$1;->$body:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/ui/CopyableBodyKt$DropdownMenuCopy$1;->$onCopy:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/ui/CopyableBodyKt$DropdownMenuCopy$1;->$clipboardManager:Landroidx/compose/ui/platform/ClipboardManager;

    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/ui/CopyableBodyKt$DropdownMenuCopy$1;->$body:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, p0, v2, v3}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    check-cast v0, Landroidx/compose/ui/platform/AndroidClipboardManager;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/AndroidClipboardManager;->setText(Landroidx/compose/ui/text/AnnotatedString;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
