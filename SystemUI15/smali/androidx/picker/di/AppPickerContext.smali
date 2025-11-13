.class public final Landroidx/picker/di/AppPickerContext;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appDataListFactory:Landroidx/picker/features/scs/AppDataListSCSFactory;

.field public final appDataRepository$delegate:Lkotlin/Lazy;

.field public final dataLoader$delegate:Lkotlin/Lazy;

.field public final packageManagerHelper:Landroidx/picker/helper/PackageManagerHelperImpl;

.field public final selectStateLoader$delegate:Lkotlin/Lazy;

.field public final viewDataRepository$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/picker/helper/PackageManagerHelperImpl;

    invoke-direct {v0, p1}, Landroidx/picker/helper/PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/picker/di/AppPickerContext;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelperImpl;

    sget-object v0, Landroidx/picker/features/scs/AbstractAppDataListFactory;->EMPTY_FACTORY:Landroidx/picker/features/scs/AbstractAppDataListFactory$1;

    new-instance v0, Landroidx/picker/features/scs/AppDataListSCSFactory;

    invoke-direct {v0, p1}, Landroidx/picker/features/scs/AppDataListSCSFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/picker/di/AppPickerContext;->appDataListFactory:Landroidx/picker/features/scs/AppDataListSCSFactory;

    new-instance p1, Landroidx/picker/di/AppPickerContext$dataLoader$2;

    invoke-direct {p1, p0}, Landroidx/picker/di/AppPickerContext$dataLoader$2;-><init>(Landroidx/picker/di/AppPickerContext;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/di/AppPickerContext;->dataLoader$delegate:Lkotlin/Lazy;

    sget-object p1, Landroidx/picker/di/AppPickerContext$selectStateLoader$2;->INSTANCE:Landroidx/picker/di/AppPickerContext$selectStateLoader$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/di/AppPickerContext;->selectStateLoader$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/picker/di/AppPickerContext$appDataRepository$2;

    invoke-direct {p1, p0}, Landroidx/picker/di/AppPickerContext$appDataRepository$2;-><init>(Landroidx/picker/di/AppPickerContext;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/di/AppPickerContext;->appDataRepository$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;

    invoke-direct {p1, p0}, Landroidx/picker/di/AppPickerContext$viewDataRepository$2;-><init>(Landroidx/picker/di/AppPickerContext;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/di/AppPickerContext;->viewDataRepository$delegate:Lkotlin/Lazy;

    return-void
.end method
