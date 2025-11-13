.class final Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$2$1;
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
.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$2$1;->this$0:Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$2$1;->$onClick:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$2$1;->this$0:Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;

    check-cast v0, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$2$moreOptionsScope$1$1;

    iget-object v0, v0, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt$MoreOptionsAction$2$moreOptionsScope$1$1;->$onDismiss:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$2$1;->$onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
