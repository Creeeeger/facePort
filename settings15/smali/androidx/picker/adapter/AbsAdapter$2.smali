.class public final Landroidx/picker/adapter/AbsAdapter$2;
.super Landroidx/picker/features/observable/UpdateMutableState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$data:Landroidx/picker/model/AppInfoDataImpl;


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfoDataImpl;Landroidx/picker/model/AppInfoDataImpl;)V
    .locals 0

    iput-object p2, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    invoke-direct {p0, p1}, Landroidx/picker/features/observable/UpdateMutableState;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getValue(Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    iput-object p1, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
