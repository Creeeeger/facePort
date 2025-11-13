.class public final synthetic Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic f$0:Landroidx/picker/model/viewdata/CategoryViewData;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/model/viewdata/CategoryViewData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/model/viewdata/CategoryViewData;

    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/model/viewdata/CategoryViewData;

    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    iget-object p0, p0, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
