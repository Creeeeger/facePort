.class Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;
.super Ljava/lang/Object;
.source "SmartPopupViewSettings.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings$2;->this$0:Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/smartpopupview/SmartPopupViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AppPickerView;->setSearchFilter(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
