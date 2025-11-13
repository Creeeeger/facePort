.class public final Landroidx/picker/adapter/AbsAdapter$2;
.super Landroidx/picker/features/observable/UpdateMutableState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$data:Landroidx/picker/model/AppInfoDataImpl;


# direct methods
.method public constructor <init>(Landroidx/picker/adapter/AbsAdapter;Landroidx/picker/model/AppInfoData;Landroidx/picker/model/AppInfoDataImpl;)V
    .locals 0

    iput-object p3, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    invoke-direct {p0, p2}, Landroidx/picker/features/observable/UpdateMutableState;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    iget-object p0, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$2;->val$data:Landroidx/picker/model/AppInfoDataImpl;

    iput-object p1, p0, Landroidx/picker/model/AppInfoDataImpl;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
