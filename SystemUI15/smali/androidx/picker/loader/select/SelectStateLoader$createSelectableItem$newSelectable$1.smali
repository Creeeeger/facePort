.class final Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $appInfo:Landroidx/picker/model/AppInfo;

.field final synthetic this$0:Landroidx/picker/loader/select/SelectStateLoader;


# direct methods
.method public constructor <init>(Landroidx/picker/loader/select/SelectStateLoader;Landroidx/picker/model/AppInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;->this$0:Landroidx/picker/loader/select/SelectStateLoader;

    iput-object p2, p0, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;->$appInfo:Landroidx/picker/model/AppInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader$createSelectableItem$newSelectable$1;->this$0:Landroidx/picker/loader/select/SelectStateLoader;

    iget-object p0, p0, Landroidx/picker/loader/select/SelectStateLoader;->onSelectListener:Landroidx/picker/widget/SeslAppPickerView$3;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerView$3;->this$0:Landroidx/picker/widget/SeslAppPickerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
