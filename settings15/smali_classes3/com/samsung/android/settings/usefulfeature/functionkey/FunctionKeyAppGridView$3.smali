.class public final Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$3;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$3;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView$3;->this$0:Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/functionkey/FunctionKeyAppGridView;->mAppPickerGridView:Landroidx/picker/widget/SeslAppPickerGridView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/SeslAppPickerView;->setSearchFilter(Ljava/lang/String;Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;)V

    return-void
.end method
