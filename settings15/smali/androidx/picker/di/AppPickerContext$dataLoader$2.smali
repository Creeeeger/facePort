.class final Landroidx/picker/di/AppPickerContext$dataLoader$2;
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Landroidx/picker/loader/DataLoaderImpl;",
        "invoke",
        "()Landroidx/picker/loader/DataLoaderImpl;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/di/AppPickerContext;


# direct methods
.method public constructor <init>(Landroidx/picker/di/AppPickerContext;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/di/AppPickerContext$dataLoader$2;->this$0:Landroidx/picker/di/AppPickerContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Landroidx/picker/di/AppPickerContext$dataLoader$2;->this$0:Landroidx/picker/di/AppPickerContext;

    iget-object v0, p0, Landroidx/picker/di/AppPickerContext;->appDataListFactory:Landroidx/picker/features/scs/AppDataListSCSFactory;

    const-string v1, "factory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/di/AppPickerContext;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelperImpl;

    const-string v1, "packageManagerHelper"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/picker/loader/DataLoaderImpl;

    invoke-direct {v1, v0, p0}, Landroidx/picker/loader/DataLoaderImpl;-><init>(Landroidx/picker/features/scs/AppDataListSCSFactory;Landroidx/picker/helper/PackageManagerHelperImpl;)V

    return-object v1
.end method
