.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$fgetmSelectedFilter(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)I

    move-result p1

    if-ne p1, p3, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->setSelectedFilter(I)V

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->-$$Nest$mloadAppList(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0x1beb

    int-to-long p2, p3

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
