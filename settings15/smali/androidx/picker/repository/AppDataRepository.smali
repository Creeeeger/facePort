.class public final Landroidx/picker/repository/AppDataRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appDataListFactory:Landroidx/picker/features/scs/AbstractAppDataListFactory;


# direct methods
.method public constructor <init>(Landroidx/picker/features/scs/AppDataListSCSFactory;)V
    .locals 1

    const-string v0, "appDataListFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/repository/AppDataRepository;->appDataListFactory:Landroidx/picker/features/scs/AbstractAppDataListFactory;

    return-void
.end method
