.class final Landroidx/picker/di/AppPickerContext$viewDataRepository$2;
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/picker/repository/ViewDataRepository;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/di/AppPickerContext;


# direct methods
.method public constructor <init>(Landroidx/picker/di/AppPickerContext;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;->this$0:Landroidx/picker/di/AppPickerContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/picker/repository/ViewDataRepository;

    iget-object v1, p0, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;->this$0:Landroidx/picker/di/AppPickerContext;

    iget-object v1, v1, Landroidx/picker/di/AppPickerContext;->dataLoader$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/loader/DataLoaderImpl;

    iget-object p0, p0, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;->this$0:Landroidx/picker/di/AppPickerContext;

    iget-object p0, p0, Landroidx/picker/di/AppPickerContext;->selectStateLoader$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/loader/select/SelectStateLoader;

    invoke-direct {v0, v1, p0}, Landroidx/picker/repository/ViewDataRepository;-><init>(Landroidx/picker/loader/DataLoaderImpl;Landroidx/picker/loader/select/SelectStateLoader;)V

    return-object v0
.end method
